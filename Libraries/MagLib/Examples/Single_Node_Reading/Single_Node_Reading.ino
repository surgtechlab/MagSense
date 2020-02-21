/*  EXAMPLE
 *
 *  Reading a single MLX90393 Device using the MagLib library.
 *
 *  Created by Max Houghton
 *  Date: 10/07/2018
 */

#include "MagLib.h"

#define I2C_Address   0x0D

MagLib device;
int led = 13;
bool led_on;

char buffer[NODE_SINGLE];

void setup() {

  uint8_t GAIN_SEL = 0x00;  //
  uint8_t RES_XYZ = 0x00;  //
  uint8_t DIG_FILT = 0x1;
  uint8_t OSR = 0x1;

  Serial.begin(9600);
  pinMode(led, OUTPUT);
  digitalWrite(led, HIGH);

  // put your setup code here, to run once:
  device.initSensingNodes( {I2C_Address}, buffer, 1, 1, 1, 0xE, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

  delay(1000);
}

void loop() {
  // put your main code here, to run repeatedly
  device.readNode(buffer, 0xE, I2C_Address, 0, 0);
  device.printASCIIData(buffer, NODE_SINGLE);

  delay(200);
  led_on = !led_on;
  digitalWrite(led, led_on);
}
