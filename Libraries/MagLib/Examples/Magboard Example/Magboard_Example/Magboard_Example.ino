#include <MagLib.h>

MagLib device;

void setup() {
  // put your setup code here, to run once:
  device.setupForClient(NODE_16, 13, 115200);
}

void loop() {
  // put your main code here, to run repeatedly:
  device.comms_MainMenu();
}
