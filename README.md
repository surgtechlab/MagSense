# MagSense

Code and Library for the Leeds Surgical Technologies Lab - Magnetic Sensing Platform

Maintained by Pete Culmer

Contributions from:
******************************
Chris Adams
Max Houghton
Pete Culmer
Belquis Haider

Links:
******************************
This owes a debt to the more general purpose MLX90393 driver
https://github.com/tedyapo/arduino-MLX90393

TODO LIST
******************************
Add Bluetooth communication
 
Simplify I2C code
  ***Use wrapper function to provide a single interface to the mutliple I2C buses - for the commands below:
  Wire.beginTransmission(_I2CAddress);
  Wire.write(0x80)
  Wire.endTransmission()
  Wire.requestFrom(_I2CAddress, 1);
  Wire.available()
  Wire.read();

Add handshaking and commands to I2C comms
  Start/stop/reset/ack packet etc.
  
Improve error checking of chip configuration (check registers after config)
