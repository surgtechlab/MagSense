#include <MagLib.h>

// Define MagLib device to use
MagLib footplate;

// Global buffer to hold data
char buffer[FOOTPLATE];

void setup() {
  // put your setup code here, to run once:
  footplate.initSensingNodesFor(FOOTPLATE, 115200, buffer);
}

void loop() {
  // put your main code here, to run repeatedly:
  // Take reading from all 128 nodes
  footplate.readSensingNodesFor(FOOTPLATE, buffer);
  
  // Print out data in an ASCII format (can also use void printRawData(char *buffer, int format, int size) 
  // for raw data, format may be BIN for binary or HEX for hexadecimal.
  footplate.printASCIIData(buffer, FOOTPLATE);
}
