/* 	Test function for 128 Node Magboard. Sweep through every node and check initialisation, configuration and data.
 * 	Test file writing and the data writing/reading from file.
 *
 *	Max Houghton, 16.10.2019
 */
 
#include "MagLib.h"

MagLib magboard;

char buffer[MAGBOARD128];

void setup()
{
	// Setup test configuration
	int n_MUX = 4;
	int n_I2C = 4;
	int n_Addr = 8;
	char zyxt = 0x0E;
	
	char addr[8] = { 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13 };
	
	// Initialise Serial port and all devices
	Serial.begin(115200);
	magboard.initSensingNodesFor(MAGBOARD128, 115200, buffer);
	
	uint8_t node;
  int test = 0;
	
	// Begin sweep through all nodes
	for (int muxID = 0; muxID < n_MUX; muxID++) {
		for (int i2cID = 0; i2cID < n_I2C; i2cID++) {
			for (int nodeID = 0; nodeID < n_Addr; nodeID++) {
				
				// Test node and report back errors
				magboard.testNode(buffer, zyxt, nodeID, i2cID, muxID);
			}
		}
	}
}

void loop() {	
	
}
 
