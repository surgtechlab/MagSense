/*
 * EXAMPLE
 * 
 * Simple program to saving data to an external memory card from a single node.
 * Tested using Teensy 3.6 with HC06 bluetooth module.
 * 
 * Author: Max Houghton
 * 25/07/18
 */

Notes:

initSDCard(BUILTIN_SDCARD) initialises the SD card plugged into the board and ensure it is ready to write data.
Parameter 'BUILTIN_SDCARD' is specific to Teensy 3.6 and may be changed depending on board, see below:

// Arduino Ethernet shield: pin 4
// Adafruit SD shields and modules: pin 10
// Sparkfun SD shield: pin 8
// Teensy audio board: pin 10
// Teensy 3.5 & 3.6 on-board: BUILTIN_SDCARD
// Wiz820+SD board: pin 4
// Teensy 2.0: pin 0
// Teensy++ 2.0: pin 20

[Taken from SD/Examples/Datalogger.ino]


The rest of the program is similar to single node reading, except printing to BT not Serial.
Whole packet is sent in one line then a new line is sent to signify new reading is incoming.

Data is amended to the same file, if desired a new file may be created each time however this must be done within the MagLib.cpp file.