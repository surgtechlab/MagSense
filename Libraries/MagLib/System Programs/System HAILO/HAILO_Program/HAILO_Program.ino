#include <MagLib.h>

// Define MagLib device to use
MagLib splint;

// Global buffer to hold data
char buffer[HAILO];

void setup() {
  // put your setup code here, to run once:
  splint.setupForClient(SERIAL, 	// Comms platform
						HAILO, 		// Device (nodes to read from)
						13, 		// LED pin
						115200,		// BAUD rate
						ASYNC,		// Sensor read timings
						true);		// Verbose feedback off
}

void loop() {
  // put your main code here, to run repeatedly:
  splint.comms_MainMenu(HAILO, buffer);
}
