#include "MagLib.h"
#include "BluetoothSerial.h"
#include <Wire.h>

MagLib device;
BluetoothSerial SerialBT;

#define NodeAddress 0x0C0D0E0F
#define PERIOD 40000

//CHIP SETTINGS
uint8_t GAIN_SEL = 0x00;  // 
uint8_t RES_XYZ = 0x01;  //
uint8_t DIG_FILT = 0x1;
uint8_t OSR = 0x1;
char buffer[NODE_FOUR];
uint8_t Select_ZYX = 0xE;

//TIMING VARIABLES
int i=1;
unsigned long startTime, endTime, TimeTaken, t1;
unsigned long last_us=0L;

void setup() {
  Serial.begin(115200);
  Wire.begin();
  SerialBT.begin("HAILO_Demo");
  
  Serial.println("\nHAILO Splint v1");
  Serial.println("\n\nInitialised Serial Comms");
  device.initFourNode(NodeAddress,buffer,Select_ZYX, -1, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);
  Serial.println("\nInitialised Sensors");
}

void loop() {
    startTime = micros();
    if (startTime - last_us >= PERIOD)
    {
      last_us+=PERIOD;
      data_sampling();
    }
}
void data_sampling() {
    uint8_t packet_header[4];
    packet_header[0] = 0x0A;
    packet_header[1] = 0x0B;
    packet_header[2] = 0x0C;
    packet_header[3] = 28;
    
    if (i==1){
      t1=micros();
    }
    /* Read Measurements */
    device.readFourNodes(buffer,Select_ZYX,0);
    /* Print Raw Data - Packets */
    SerialBT.write(packet_header,4);
    SerialBT.write((uint8_t*)buffer,NODE_FOUR);
    i++;
    /* Print Time After 1000 Reading - Testing */
    if (i>1000){
    endTime = micros();
    TimeTaken=endTime-t1;
    device.TimeMeasurement(TimeTaken);
    i=1;
    }
}


