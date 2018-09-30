/*  EXAMPLE
 *
 *  Reading a single MLX90393 Device using the MagLib library.
 *
 *  Created by Max Houghton
 *  Date: 10/07/2018
 */

#include "MagLib.h"

#define I2C_Address   0x0C

MagLib device;

char buffer[NODE_SINGLE];

void setup() {

  // put your setup code here, to run once:
  device.initCommunication(9600, -1);
  device.initSingleNode(I2C_Address, buffer, 0xF, -1);

  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly
  device.readSingleNode(buffer, 0xF);
  device.printRawData(buffer, HEX, NODE_SINGLE);

  delay(200);
}
