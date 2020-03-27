#include <MagLib.h>

// Define MagLib device to use
MagLib magone;

// Global buffer to hold data
char buffer[NODE_SINGLE];

void setup() {
  // put your setup code here, to run once:
  magone.setupForClient(SERIAL, 	// Comms platform
						NODE_SINGLE,// Device (nodes to read from)
						13, 		// LED pin
						115200,		// BAUD rate
						ASYNC,		// Sensor read timings
						true);		// Verbose feedback off
}

void loop() {
  // put your main code here, to run repeatedly:
  magone.comms_MainMenu(NODE_SINGLE, buffer);
}