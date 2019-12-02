#include <MagLib.h>

// Define MagLib device to use
MagLib magboard;

// Global buffer to hold data
char buffer[MAGBOARD];

void setup() {
  // put your setup code here, to run once:
  magboard.setupForClient(	USB_COMMS, 	// Comms platform
							MAGBOARD, 	// Device (nodes to read from)
							13, 		// LED pin
							115200,		// BAUD rate
							ASYNC,		// Sensor read timings
							false);		// Verbose feedback off
}

void loop() {
  // put your main code here, to run repeatedly:
  magboard.comms_MainMenu(MAGBOARD, buffer);
}
