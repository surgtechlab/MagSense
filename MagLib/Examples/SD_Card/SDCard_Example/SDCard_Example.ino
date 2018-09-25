/*
 * EXAMPLE
 * 
 * Simple program to demonstrate sending data over bluetooth.
 * Tested using Teensy 3.6 with HC06 bluetooth module.
 * 
 * Author: Max Houghton
 * 12/07/18
 */

#include <MagLib.h>

#define NodeAddress 0x0C

MagLib device;

char buffer[NODE_SINGLE];

void setup() {

  device.initCommunication(9600, 0);
  device.initSDCard(BUILTIN_SDCARD);
  device.initSingleNode(NodeAddress,buffer,0xF, 0);
}

void loop() {
  
  device.readSingleNode(buffer, 0xF);
  device.printRawData(buffer, HEX, NODE_SINGLE);
  device.printToSDCard(buffer, NODE_SINGLE);

  delay(20);
}

