 // MagBoard n128 Test
////////////////////////////////////
// v1 of full platform by Pete Culmer
// 
///////////////////////////////////

//include MagLIB - for access to high and low level chip functions
#include <MagLib.h>

// MagLIB Defs
MagLib device; //Change this to MLX for readability
#define addressPacket 0x0F0E0D0C
//#define addressPacket 0x0F0E0D0C //UPDATE WITH NEW ADDRESSES HERE

char buffer[NODE_64];
char stream_packet_header[3];
int mux[2] = {10, 11};
uint8_t Select_ZYX = 0xE;

//MLX CHIP SETTINGS
uint8_t GAIN_SEL = 0x00;  // 
uint8_t RES_XYZ = 0x01;  // to match NN training 29/04/2019
uint8_t DIG_FILT = 0x1;
uint8_t OSR = 0x1;

//COMMS SETTINGS //see SD library Example (from Teensy)
int serial_baudrate = 115200;
const int ledPin = 13; //used to signify comms
bool status_led = false;

void setup() {
  
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);

  //Initiate USB Serial + BT comms
  Serial.begin(serial_baudrate);
  
  //Wait for USB Serial to be available
  while (!Serial) {
    delay(10);
  }
  digitalWrite(ledPin, HIGH); //Signify when Comms active
  delay(1000);
  digitalWrite(ledPin, LOW);
  
  Serial.println("MagBOARDv128 is Alive!"); //Signify system active and print version info
  Serial.println(__FILE__);
  Serial.println(__DATE__);
  Serial.println(__TIME__);
  
  //Init i2c comms 
  device.initCommunication(115200, 0);
  Serial.println("\nInitialised I2C Bus");
  
      
  //Initialise I2C Ports
  device.init16Nodes(addressPacket, buffer, Select_ZYX, mux, 0, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);
  //device.init64Nodes(addressPacket, buffer, Select_ZYX, mux, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);
  
  Serial.println("\nInitialised Line");
  
  delay(500);

  //i2c reads from hear onwards will be non-blocking
  Wire.setOpMode(I2C_OP_MODE_ISR);
//  Wire1.setOpMode(I2C_OP_MODE_ISR);
//  Wire2.setOpMode(I2C_OP_MODE_ISR);
//  Wire3.setOpMode(I2C_OP_MODE_ISR);
  
  //Make sure runnning at 400 kHz
  Wire.setRate(I2C_RATE_400);
//  Wire1.setRate(I2C_RATE_400);
//  Wire2.setRate(I2C_RATE_400);
//  Wire3.setRate(I2C_RATE_400);
}
//END SETUP ****************************************************************

void loop() {
	device.read16NodeLine(buffer, Select_ZYX);
  //device.read64Nodes(buffer, Select_ZYX);
  
      //Print reading
      //Define the header of binary packets sent
        stream_packet_header[0] = 0x0A;
        stream_packet_header[1] = 0x0B;
        stream_packet_header[2] = 0x0C;
		Serial.write(stream_packet_header,3);
		Serial.write(buffer,NODE_64);
    Serial.print("\n\n");
		delay(1000);
}
//END LOOP *****************************************************************
