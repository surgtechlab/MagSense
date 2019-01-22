/*  EXAMPLE
 *
 *  Reading four MLX90393 Devices using the MagLib library.
 *
 *  Created by Belquis Haider, Max Houghton
 *  Date: 25/07/2018
 */

Notes:

NODE_FOUR defines a 26 char array to hold data from sensors -> [T T] + 4 * [X X Y Y Z Z]

initCommunications(baudRate, i2cLine) - baudRate must be one a standard value, see below for more info. 
					i2cLine values 0-3 are used for Teensy 3.6 boards, any other value defaults to board i2c channel 0, pins depends on board used.

Description
Sets the data rate in bits per second (baud) for serial data transmission. For communicating with the computer, use one of these rates: 

300, 600, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 38400, 57600, or 115200. 

You can, however, specify other rates - for example, to communicate over pins 0 and 1 with a component that requires a particular baud rate.

[Taken from www.Arduino.cc/en/Serial/Begin]