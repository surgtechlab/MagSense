/*  EXAMPLE
 *
 *  Reading a four MLX90393 devices using the MagLib library.
 *
 *  Created by Belquis Haider, Max Houghton
 *  Date: 10/07/2018
 */

#include "MagLib.h"

#define NodeAddress 0x0C0D0E0F

MagLib device;

char buffer[NODE_FOUR];

void setup() {
  
  device.initFourNode(NodeAddress,buffer,0xF, -1);
}

void loop() {

  /* Read Measurements */
  device.readFourNodes(buffer, 0xF, -1);
  /* Print Raw Data */
  device.printRawData(buffer, HEX, NODE_FOUR);

  delay(50);
}
