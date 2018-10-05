#include "MagLib.h"

MagLib device;

#define NodeAddress 0x0C0D0E0F
#define PERIOD 20000
char buffer[26];
int i=1;
unsigned long startTime, endTime, TimeTaken, t1;
unsigned long last_us=0L;

void setup() {
  Serial.begin(115200);
  Wire.begin();
  device.initFourNode(NodeAddress,buffer,0xF);
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
    if (i==1){
      t1=micros();
    }
    /* Read Measurements */
    device.readFourNodes(buffer,0xF);
    /* Print Raw Data - Packets */
    char buildBuffer[20] = {0};
    char compositionBuffer[300] = {0};
    device.printRawData(buffer,buildBuffer, compositionBuffer,DEC,26);
    i++;
    /* Print Time After 1000 Reading - Testing */
    if (i>1000){
    endTime = micros();
    TimeTaken=endTime-t1;
    device.TimeMeasurement(TimeTaken);
    i=1;
    }
}
