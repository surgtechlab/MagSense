#include <MagLib.h>

// Define MagLib device to use
MagLib splint;

// Global buffer to hold data
char buffer[NODE_4];

void setup() {
  // put your setup code here, to run once:
  splint.setupForClient(USB_COMMS, 	// Comms platform
						NODE_4, 		// Device (nodes to read from)
						13, 		// LED pin
						115200,		// BAUD rate
						ASYNC,		// Sensor read timings
						false);		// Verbose feedback off
}

void loop() {
  // put your main code here, to run repeatedly:
  splint.comms_MainMenu(NODE_4, buffer);
}
