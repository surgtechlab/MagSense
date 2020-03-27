/*  EXAMPLE
 *
 *  Reading a single MLX90393 Device using the MagLib library.
 *
 *  Created by Max Houghton
 *  Date: 10/07/2018
 */

#include "MagLib.h"

#define I2C_Address   0x0C

MagLib magone;

char buffer[MAGONE];

void setup() {

  // put your setup code here, to run once:
  device.initSensingNodesFor(MAGONE, 115200, buffer);
}

void loop() {
  // put your main code here, to run repeatedly
  device.readSensingNodesFor(MAGONE, buffer);
  
  device.printRawData(buffer, HEX, NODE_SINGLE);
  delay(200);
}
