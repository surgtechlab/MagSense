#include <MagLib.h>

MagLib device;
int LED = 13;
int BAUD = 115200;

char buffer[FOOTPLATE];

void setup() {
  // put your setup code here, to run once:
  device.setupForClient(USB_COMMS, FOOTPLATE, LED, BAUD);
}

void loop() {
  // put your main code here, to run repeatedly:
  device.comms_MainMenu(FOOTPLATE, buffer);
}
