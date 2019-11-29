/*
 * EXAMPLE
 * 
 * Simple program to demonstrate sending data over bluetooth.
 * Tested using Teensy 3.6 with HC06 bluetooth module.
 * 
 * Author: Max Houghton
 * 12/07/18
 */

#include <SoftwareSerial.h>
#include <MagLib.h>

#define NodeAddress 0x0C

// HC06 - RX->0, TX->1
SoftwareSerial BT(0, 1);

MagLib device;

char buffer[NODE_SINGLE];

void setup() {
  BT.begin(9600);

  device.initCommunication(9600, -1);
  device.initSingleNode(NodeAddress,buffer,0xF, -1);
}

void loop() {
  
  device.readSingleNode(buffer, 0xF);

  for (int i = 0; i < NODE_SINGLE;i++) BT.print(buffer[i]);
  BT.println();

  delay(100);
}

