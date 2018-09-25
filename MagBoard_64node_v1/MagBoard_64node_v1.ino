// MagBoard v1 
////////////////////////////////////

// 64 node performance test
// P Culmer 17/09/2018


#include <MagLib.h>

#define addressPacket 0x0F0E0D0C

MagLib device;
char buffer[NODE_64];

int mux[2] = {10, 11};
uint8_t Select_ZYX = 0xE;

//CHIP SETTINGS
uint8_t GAIN_SEL = 0x00;  // 
uint8_t RES_XYZ = 0x00;  // 0x15=gain 1
uint8_t DIG_FILT = 0x1;
uint8_t OSR = 0x1;

unsigned long startmicros = 0L;
unsigned long currentmicros = 0L;
unsigned long period = 0L;

void setup() {
  
  //Initialise serial comms on ports 0-3
  device.initCommunication(115200, 0);
  device.initCommunication(115200, 1);
  device.initCommunication(115200, 2);
  device.initCommunication(115200, 3);
  
  Serial.println("\nMagBoard_64 v1 Performance Testing");
  Serial.println("\nInitialised Serial Comms");
  delay(500);
  
  //Configure MUX enable pins (Enable is Low)
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);

  //Enable All MUX Chips
  digitalWrite(5,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
  digitalWrite(8,LOW);
    
  //Initialise I2C Ports
  device.init64Nodes(addressPacket, buffer, Select_ZYX, mux, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

  Serial.println("\nInitialised I2C Bus");
  delay(2000);
  Serial.println("\nReading....\n\n");
  
}

void loop() {
  // put your main code here, to run repeatedly:

  startmicros = micros ();
  device.read64Nodes(buffer, Select_ZYX);
  currentmicros = micros ();
  /*
  period = currentmicros - startmicros;
  Serial.print("\nMagBoardv64. Read Time (uS):");
  Serial.println(period);
  device.printASCIIData(buffer, NODE_64);
*/
  device.printRawData(buffer, BIN, NODE_64);

  delay(100);
}
