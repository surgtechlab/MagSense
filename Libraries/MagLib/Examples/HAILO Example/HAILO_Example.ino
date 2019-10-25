#include <MagLib.h>

MagLib device;

char buffer[NODE_8];

void setup() {
  // put your setup code here, to run once:  
  device.initSensingNodesFor(NODE_8, 115200, buffer);
}

void loop() {
  // put your main code here, to run repeatedly:
  device.readSensingNodesFor(NODE_8, buffer);

  delay(1000);
}