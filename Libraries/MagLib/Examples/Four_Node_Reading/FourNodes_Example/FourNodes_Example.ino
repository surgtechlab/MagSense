#include <MagLib.h>

MagLib device;

#define PERIOD      40000

// Comms settings
int BAUD = 115200;
uint8_t ADDRESS = 0x0F;
uint8_t I2C_LINE = 0;

// Chip settings
uint8_t NodeAddresses[] = {0x0F, 0x0E, 0x0D, 0x0C};
uint8_t GAIN_SEL = 0x00;  //
uint8_t RES_XYZ = 0x01;  //
uint8_t DIG_FILT = 0x1;
uint8_t OSR = 0x1;
char receiveBuffer[NODE_FOUR];
uint8_t SELECT_XYZ = 0xF;

int ledPin = 13;
int nMUX = 1;
int nI2C = 1;
int nAddress = 4;

//TIMING VARIABLES
int i=1;
unsigned long startTime, endTime, TimeTaken, t1;
unsigned long last_us=0L;
int i_status, _error;


void setup() {
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, HIGH);

  device.initComms(BAUD, 0);

  device.initSensingNodes(NodeAddresses, receiveBuffer, nMUX, nI2C,nAddress, SELECT_XYZ, 0, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(ledPin, HIGH);
  delay(50);

  device.readSensingNodes(receiveBuffer, SELECT_XYZ, nMUX, nI2C, nAddress);
  device.printRawData(receiveBuffer, HEX, NODE_FOUR);

  digitalWrite(ledPin, LOW);
  delay(50);



}
