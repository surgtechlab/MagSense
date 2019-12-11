/*
 * EXAMPLE
 * 
 * Simple program to demonstrate sending data over bluetooth from a single node.
 * Tested using Teensy 3.6 with HC06 bluetooth module.
 * 
 * Author: Max Houghton
 * 25/07/18
 */
Notes:

BT.begin(9600) 9600 is standard baud rate for BT comms, be careful when changing this value as client application may not be able to receive data.

The rest of the program is similar to single node reading, except printing to BT not Serial.
Whole packet is sent in one line then a new line is sent to signify new reading is incoming.