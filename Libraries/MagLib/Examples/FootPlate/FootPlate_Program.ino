#include <MagLib.h>

// Define MagLib device to use
MagLib footplate;

// Global buffer to hold data
char buffer[FOOTPLATE];

void setup() {
  // put your setup code here, to run once:
  footplate.setupForClient(	USB_COMMS, 	// Comms platform
							FOOTPLATE, 	// Device (nodes to read from)
							13, 		// LED pin
							115200,		// BAUD rate
							SYNC,		// Sensor read timings
							false);		// Verbose feedback off
}

void loop() {
  // put your main code here, to run repeatedly:
  footplate.comms_MainMenu(FOOTPLATE, buffer);
}
