/*  EXAMPLE
 * 
 *  Reading four MLX90393 devices using the MagLib library.
 *  
 *  Created by Belquis Haider, Max Houghton
 *  Date: 10/07/2018
 */

#include "MagLib.h"

#define NodeAddress 0x0C0D0E0F

MagLib device;

char buffer[NODE_FOUR];
unsigned long startmicros = 0L;
unsigned long currentmicros = 0L;
unsigned long period = 0L;

void setup() {

  device.initCommunication(115200, 0);
  device.initFourNode(NodeAddress,buffer,0xF, 0);

  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);

  Serial.println("\n Four Node Test with MUX Enable v1");
  delay(2000);

}

void loop() {

  digitalWrite(5,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
  digitalWrite(8,LOW);
  
  /* Read Measurements */
  startmicros = micros ();
  device.readFourNodes(buffer, 0xF, 0);
  currentmicros = micros ();
  period = currentmicros - startmicros;
  /* Print Raw Data */
  Serial.println("\n 4 Node Read time (us): ");
  Serial.println(period);

  device.printRawData(buffer,HEX, NODE_FOUR);
  delay(10);
}

