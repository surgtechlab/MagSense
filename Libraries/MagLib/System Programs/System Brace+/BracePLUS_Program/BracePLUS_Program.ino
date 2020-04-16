#include <MagLib.h>

// Define MagLib device to use
MagLib brace;

// Global buffer to hold data
char buffer[BRACE];

void setup() {
  // put your setup code here, to run once:
  brace.setupForClient(BLE, 	// Comms platform
						BRACE, 		// Device (nodes to read from)
						13, 		// LED pin
						115200,		// BAUD rate
						ASYNC,		// Sensor read timings
						true);		// Verbose feedback off
}

void loop() {
  // put your main code here, to run repeatedly:
  brace.comms_MainMenu(BRACE, buffer);
}
