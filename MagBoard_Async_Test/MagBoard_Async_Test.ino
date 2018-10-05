// MagBoard v1 
////////////////////////////////////

// Async i2c test

#include <MagLib.h>

#define addressPacket 0x0F0E0D0C

MagLib device;
char buffer[NODE_16];

int i2c_bus = 0;
int mux[2] = {10, 11}; //Magboard=10,11 proto={30, 32};
uint8_t Select_ZYX = 0xE;

//CHIP SETTINGS
uint8_t GAIN_SEL = 0x00;  // 
uint8_t RES_XYZ = 0x01;  //
uint8_t DIG_FILT = 0x1;
uint8_t OSR = 0x1;

unsigned long startmicros = 0L;
unsigned long currentmicros = 0L;
unsigned long period = 0L;

void setup() {
  // put your setup code here, to run once:
  
  //Initialise serial comms on port 0
  device.initCommunication(115200, i2c_bus);
  
  delay(500);
  
  Serial.println("\nMagBoardv1 Performance Testing");
  Serial.println("\nInitialised Serial Comms");
    
  //Configure MUX enable pins (Enable is Low)
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);

  //Enable MUX0-3
  digitalWrite(5,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
  digitalWrite(8,LOW);

  
  //Initialise I2C Port
  device.init16Nodes(addressPacket, buffer, Select_ZYX, mux, i2c_bus, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

  Serial.println("\nInitialised I2C Bus");
  delay(2000);
  Serial.println("\nReading....\n\n");
  
}

void loop() {
  // put your main code here, to run repeatedly:

  startmicros = micros ();
  device.read16Nodes(buffer, Select_ZYX, i2c_bus);
  currentmicros = micros ();
  
  period = currentmicros - startmicros;
  /*Serial.print("\nMagBoard - I2C Bus: ");
  Serial.print(i2c_bus);
  Serial.print(" 16 Node Read time (us): ");
  Serial.println(period); */
  //device.printASCIIData(buffer, NODE_16);
  
  device.printRawData(buffer, BIN, NODE_16);

  delay(50);
}
