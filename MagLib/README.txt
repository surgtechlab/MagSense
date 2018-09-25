MagLib

Library to read MagOne and similar devices using Arduino devices.

Author - Max Houghton
Date 05/06/2018

Version 1.0

	- read single and 2x2 array devices
	- print raw data to serial port in binary or hex at 50 Hz
	- print data to SD card at 50 Hz

Version 1.1

	- read 4x4 and 32 array devices


Tested using Teensy 3.6.

I2C Pins (require pull-up resistors, tested with 3.3k):

	SDA0 - 18
	SCL0 - 19

	SDA1 - 38
	SCL1 - 37

	SDA2 - 4
	SCL2 - 3


	SDA3 - 56	(on back side of Teensy board)
	SCL3 - 57	(on back side of Teensy board)


Ensure to install Teensyduino in Arduino IDE Boards Manager.

https://www.pjrc.com/teensy/td_download.html
