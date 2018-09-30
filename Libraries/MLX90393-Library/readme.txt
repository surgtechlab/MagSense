Library for the MLX90393 Device on the Arduino Platform.
Version 1.0

Tested using Arduino Due.

Note use pins 20 (SDA) and 21 (SCL) for I2C bus.
Ensure to install Arduino ARM (32-bit) Boards in Arduino IDE Boards Manager and select Arduino Due (Programming Port), NOT Native Port.

Author - Max Houghton, Pete Culmer
Start Date 05/06/2018

TODO LIST
  
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
  
Add Bluetooth communication

Improve error checking of chip configuration (check registers after config)
