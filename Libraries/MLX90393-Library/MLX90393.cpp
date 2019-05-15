/*Copyright 2018 University of Leeds, Pete Culmer, Max Houghton, Chris Adams

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/

#include "MLX90393.h"

MLX90393::MLX90393()
{

}

MLX90393::~MLX90393()
{

}

void MLX90393::init(char *receiveBuffer, int address, int i2cLine)
{

	_I2CAddress = address;
	uint8_t i_status = 0;
	
	Serial.print("\nInit MLX:L");
	Serial.print(i2cLine);
	Serial.print(" A 0x");
	Serial.print(_I2CAddress,HEX);
	Serial.print(" Stat:");
	
	switch (i2cLine)
	{
	case 0:
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x80); // Exit Mode
		//Wire.write(0xF0); // Reset Command
		Wire.endTransmission();  // Stop I2C
		
		Wire.requestFrom(_I2CAddress, 1);
		if (Wire.available() == 1)
		{
			i_status = Wire.read();
			Serial.print(i_status, HEX);
			Serial.print("\n");
		}
		else _error = 0x1;
		delay(5);
		break;

	case 1:
		Wire1.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire1.write(0x80); // Exit Mode
		//Wire1.write(0xF0); // Reset Command
		Wire1.endTransmission();  // Stop I2C
		delay(50);
		Wire1.requestFrom(_I2CAddress, 1);
		if (Wire1.available() == 1)
		{
			i_status = Wire1.read();
			Serial.print(i_status, HEX);
			Serial.print("\n");
		}
		else _error = 0x1;
		break;

	case 2:
		Wire2.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire2.write(0x80); // Exit Mode
		//Wire2.write(0xF0); // Reset Command
		Wire2.endTransmission();  // Stop I2C
		delay(50);
		Wire2.requestFrom(_I2CAddress, 1);
		if (Wire2.available() == 1)
		{
			i_status = Wire2.read();
			Serial.print(i_status, HEX);
			Serial.print("\n");
		}
		else _error = 0x1;
		break;

	case 3:
		Wire3.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire3.write(0x80); // Exit Mode
		//Wire3.write(0xF0); // Reset Command
		Wire3.endTransmission();  // Stop I2C
		delay(50);
		Wire3.requestFrom(_I2CAddress, 1);
		if (Wire1.available() == 1)
		{
			i_status = Wire3.read();
			Serial.print(i_status, HEX);
			Serial.print("\n");
		}
		else _error = 0x1;
		break;

	default:
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x80); // Exit Mode
		//Wire.write(0xF0); // Reset Command
		Wire.endTransmission();  // Stop I2C
		delay(50);
		Wire.requestFrom(_I2CAddress, 1);
		if (Wire.available() == 1)
		{
			i_status = Wire.read();
			Serial.print(i_status, HEX);
			Serial.print(" DEF\n");
		}
		else _error = 0x1;
		break;
	}
}

void MLX90393::configure(char *receiveBuffer, int i2cLine, uint8_t GAIN_SEL, uint8_t RES_XYZ, uint8_t DIG_FILT, uint8_t OSR)
{
	//Define register values
	uint8_t HALLCONF = 0x0C; //keep as default
	
	//Register 0: BIST=0, Z_series=0, GAIN_SEL = ?, HALLCONF=?
	uint8_t upper_reg0 = 0x00; 
	uint8_t lower_reg0 = 0x00; 
 
	//Register 1: TCMP = ON, BURST_SEL = 1110(ZYX-), BURST_DATA_RATE = 0 (Cont)
	//
	uint8_t upper_reg1 = 0x07;  
	uint8_t lower_reg1 = 0x81;	
	
	//Register 2: OSR2=0, RES_XYZ=?, DIG_FILT = ?, OSR = ? 
	uint8_t upper_reg2 = 0x00;
	uint8_t lower_reg2 = 0x00;

	//Define Measurement OFFSETs (used to account for static magnets
	uint8_t OFFSET_XY_u = 0xFF; //upper register
	uint8_t OFFSET_XY_l = 0xFF; //lower register
	uint8_t OFFSET_Z_u = 0x80; //upper register Z
	uint8_t OFFSET_Z_l = 0x00; //lower register Z
	
	//Add user values into registers
	lower_reg0 = lower_reg0 | HALLCONF;
	lower_reg0 = lower_reg0 | (GAIN_SEL << 4);
	
	upper_reg2 = upper_reg2 | (RES_XYZ >> 3);
	lower_reg2 = lower_reg2 | (RES_XYZ << 5);
	lower_reg2 = lower_reg2 | (DIG_FILT << 2);
	lower_reg2 = lower_reg2 | (OSR);
	
	
	// DEBUG INFO - print chip and 
	Serial.print("\nConfig MLX:L");
	Serial.print(i2cLine);
	Serial.print(" A:0x");
	Serial.print(_I2CAddress,HEX);
	Serial.print(" Setting-R1:0x");	
	Serial.print(upper_reg0, HEX);
	Serial.print(lower_reg0, HEX);
	Serial.print(" R1:0x");
	Serial.print(upper_reg1, HEX);
	Serial.print(lower_reg1, HEX);
	Serial.print(" R2:0x");
	Serial.print(upper_reg2, HEX);
	Serial.print(lower_reg2, HEX);
	
	switch (i2cLine)
	{
	case 0:
		
		/*****************************************
	                                  Reg0: SELECT GAIN
		******************************************/
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x60); // Write register command
		Wire.write(upper_reg0);
		Wire.write(lower_reg0);
		Wire.write(0x00); // Select address register, (0x00 << 2)  
		Wire.endTransmission();  // Stop I2C
		Wire.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire.available() == 1) // Read status byte
		{
			uint8_t ca = Wire.read();
			Serial.print(" R0_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		/*****************************************
	                                  Reg1: CONFIGURE BURST MODE
		******************************************/	
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x60); // Write register command
		Wire.write(upper_reg1); //
		Wire.write(lower_reg1); // 						
		Wire.write(0x04); // Select address reg 1 (<<2) 
		Wire.endTransmission();  // Stop I2C		

		Wire.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire.available() == 1) // Read status byte
		{
			uint8_t ca = Wire.read();
			Serial.print(" R1_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		/*****************************************
	                                  Reg2: SELECT RESOLUTION
		******************************************/	
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x60); // Write register command
		Wire.write(upper_reg2); // 
		Wire.write(lower_reg2); // 
		Wire.write(0x08); // Select address reg 2 (<<2) 
		Wire.endTransmission();  // Stop I2C		

		Wire.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire.available() == 1) // Read status byte
		{
			uint8_t ca = Wire.read();
			Serial.print(" R2_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

		/*****************************************
	                                  Reg4: X offset
		******************************************/	
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x60); // Write register command
		Wire.write(OFFSET_XY_u); // 
		Wire.write(OFFSET_XY_l); // 
		Wire.write(0x10); // Select address reg 4 (<<2) 
		Wire.endTransmission();  // Stop I2C		

		Wire.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire.available() == 1) // Read status byte
		{
			uint8_t ca = Wire.read();
			Serial.print(" R4_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

		/*****************************************
	                                  Reg5: Y offset
		******************************************/	
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x60); // Write register command
		Wire.write(OFFSET_XY_u); // 
		Wire.write(OFFSET_XY_l); // 
		Wire.write(0x14); // Select address reg 5 (<<2) 
		Wire.endTransmission();  // Stop I2C		

		Wire.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire.available() == 1) // Read status byte
		{
			uint8_t ca = Wire.read();
			Serial.print(" R5_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

		/*****************************************
	                                  Reg6: Z offset
		******************************************/	
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x60); // Write register command
		Wire.write(OFFSET_Z_u); // 
		Wire.write(OFFSET_Z_l); // 
		Wire.write(0x18); // Select address reg 6 (<<2) 
		Wire.endTransmission();  // Stop I2C		

		Wire.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire.available() == 1) // Read status byte
		{
			uint8_t ca = Wire.read();
			Serial.print(" R6_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;
		
	case 1:

		/*****************************************
	                                  Reg0: SELECT GAIN
		******************************************/
		Wire1.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire1.write(0x60); // Write register command
		Wire1.write(upper_reg0); 
		Wire1.write(lower_reg0); 
		Wire1.write(0x00); // Select address register, (0x00 << 2)
		Wire1.endTransmission();  // Stop I2C

		Wire1.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire1.available() == 1) // Read status byte
		{
			uint8_t ca = Wire1.read();
			Serial.print(" R0_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		/*****************************************
	                                  Reg1: CONFIGURE BURST MODE
		******************************************/	
		Wire1.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire1.write(0x60); // Write register command
		Wire1.write(upper_reg1); // 
		Wire1.write(lower_reg1); // 	
		Wire1.write(0x04); // Select address reg 1 (<<2) 
		Wire1.endTransmission();  // Stop I2C		

		Wire1.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire1.available() == 1) // Read status byte
		{
			uint8_t ca = Wire1.read();
			Serial.print(" R1_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		/*****************************************
	                                  Reg2: SELECT RESOLUTION
		******************************************/	
		Wire1.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire1.write(0x60); // Write register command
		Wire1.write(upper_reg2); // 0x02
		Wire1.write(lower_reg2); // 
		Wire1.write(0x08); // Select address reg 2 (<<2) 
		Wire1.endTransmission();  // Stop I2C		
		
		Wire1.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire1.available() == 1) // Read status byte
		{
			uint8_t ca = Wire1.read();
			Serial.print(" R2_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;
		
				/*****************************************
	                                  Reg4: X offset
		******************************************/	
		Wire1.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire1.write(0x60); // Write register command
		Wire1.write(OFFSET_XY_u); // 
		Wire1.write(OFFSET_XY_l); // 
		Wire1.write(0x10); // Select address reg 4 (<<2) 
		Wire1.endTransmission();  // Stop I2C		

		Wire1.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire1.available() == 1) // Read status byte
		{
			uint8_t ca = Wire1.read();
			Serial.print(" R4_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

		/*****************************************
	                                  Reg5: Y offset
		******************************************/	
		Wire1.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire1.write(0x60); // Write register command
		Wire1.write(OFFSET_XY_u); // 
		Wire1.write(OFFSET_XY_l); // 
		Wire1.write(0x14); // Select address reg 5 (<<2) 
		Wire1.endTransmission();  // Stop I2C		

		Wire1.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire1.available() == 1) // Read status byte
		{
			uint8_t ca = Wire1.read();
			Serial.print(" R5_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

		/*****************************************
	                                  Reg6: Z offset
		******************************************/	
		Wire1.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire1.write(0x60); // Write register command
		Wire1.write(OFFSET_Z_u); // 
		Wire1.write(OFFSET_Z_l); // 
		Wire1.write(0x18); // Select address reg 6 (<<2) 
		Wire1.endTransmission();  // Stop I2C		

		Wire1.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire1.available() == 1) // Read status byte
		{
			uint8_t ca = Wire1.read();
			Serial.print(" R6_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

	case 2:

		/*****************************************
	                                  Reg0: SELECT GAIN
		******************************************/
		Wire2.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire2.write(0x60); // Write register command
		Wire2.write(upper_reg0);
		Wire2.write(lower_reg0);
		Wire2.write(0x00); // Select address register, (0x00 << 2) 
		Wire2.endTransmission();  // Stop I2C

		Wire2.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire2.available() == 1) // Read status byte
		{
			uint8_t ca = Wire2.read();
			Serial.print(" R0_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		/*****************************************
	                                  Reg1: CONFIGURE BURST MODE
		******************************************/	
		Wire2.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire2.write(0x60); // Write register command
		Wire2.write(upper_reg1); // Write commands for Burst Mode CMD  b#2 D[15:8] 0000 0011
		Wire2.write(lower_reg1); // 								CMD b#3 D[7:0]  1000
		Wire2.write(0x04); // Select address reg 1 (<<2) 
		// Trig_Int_Sel =b0, Burst Sel = b1110=XYZT Burst data rate = b00 (continuous) 0011
		Wire2.endTransmission();  // Stop I2C		

		Wire2.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire2.available() == 1) // Read status byte
		{
			uint8_t ca = Wire2.read();
			Serial.print(" R1_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		/*****************************************
	                                  Reg2: SELECT RESOLUTION
		******************************************/	
		Wire2.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire2.write(0x60); // Write register command
		Wire2.write(upper_reg2); // 
		Wire2.write(lower_reg2); // 
		Wire2.write(0x08); // Select address reg 2 (<<2) 
		// ***** ADD IN COMMENTS HERE ON CONFIG
		Wire2.endTransmission();  // Stop I2C		

		Wire2.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire2.available() == 1) // Read status byte
		{
			uint8_t ca = Wire2.read();
			Serial.print(" R2_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;
		
				/*****************************************
	                                  Reg4: X offset
		******************************************/	
		Wire2.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire2.write(0x60); // Write register command
		Wire2.write(OFFSET_XY_u); // 
		Wire2.write(OFFSET_XY_l); // 
		Wire2.write(0x10); // Select address reg 4 (<<2) 
		Wire2.endTransmission();  // Stop I2C		

		Wire2.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire2.available() == 1) // Read status byte
		{
			uint8_t ca = Wire2.read();
			Serial.print(" R4_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

		/*****************************************
	                                  Reg5: Y offset
		******************************************/	
		Wire2.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire2.write(0x60); // Write register command
		Wire2.write(OFFSET_XY_u); // 
		Wire2.write(OFFSET_XY_l); // 
		Wire2.write(0x14); // Select address reg 5 (<<2) 
		Wire2.endTransmission();  // Stop I2C		

		Wire2.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire2.available() == 1) // Read status byte
		{
			uint8_t ca = Wire2.read();
			Serial.print(" R5_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

		/*****************************************
	                                  Reg6: Z offset
		******************************************/	
		Wire2.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire2.write(0x60); // Write register command
		Wire2.write(OFFSET_Z_u); // 
		Wire2.write(OFFSET_Z_l); // 
		Wire2.write(0x18); // Select address reg 6 (<<2) 
		Wire2.endTransmission();  // Stop I2C		

		Wire2.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire2.available() == 1) // Read status byte
		{
			uint8_t ca = Wire2.read();
			Serial.print(" R6_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

	case 3:

		/*****************************************
	                                  Reg0: SELECT GAIN
		******************************************/
		Wire3.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire3.write(0x60); // Write register command
		Wire3.write(upper_reg0); 
		Wire3.write(lower_reg0); 
		Wire3.write(0x00); // Select address register, (0x00 << 2)   CMD b#2 A[5:0] << 2
						  // Z_series = b0, Gain_Sel = b000, Hall_Conf = b1100 (All at default settings)
		Wire3.endTransmission();  // Stop I2C

		Wire3.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire3.available() == 1) // Read status byte
		{
			uint8_t ca = Wire3.read();
			Serial.print(" R0_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		/*****************************************
	                                  Reg1: CONFIGURE BURST MODE
		******************************************/	
		Wire3.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire3.write(0x60); // Write register command
		Wire3.write(upper_reg1); 
		Wire3.write(lower_reg1);
		Wire3.write(0x04); // Select address reg 1 (<<2) 
		Wire3.endTransmission();  // Stop I2C		

		Wire3.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire3.available() == 1) // Read status byte
		{
			uint8_t ca = Wire3.read();
			Serial.print(" R1_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		/*****************************************
	                                  Reg2: SELECT RESOLUTION
		******************************************/	
		Wire3.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire3.write(0x60); // Write register command
		Wire3.write(upper_reg2); 
		Wire3.write(lower_reg2);
		Wire3.write(0x08); // Select address reg 2 (<<2) 
		Wire3.endTransmission();  // Stop I2C		

		Wire3.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire3.available() == 1) // Read status byte
		{
			uint8_t ca = Wire3.read();
			Serial.print(" R2_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;
		
				/*****************************************
	                                  Reg4: X offset
		******************************************/	
		Wire3.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire3.write(0x60); // Write register command
		Wire3.write(OFFSET_XY_u); // 
		Wire3.write(OFFSET_XY_l); // 
		Wire3.write(0x10); // Select address reg 4 (<<2) 
		Wire3.endTransmission();  // Stop I2C		

		Wire3.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire3.available() == 1) // Read status byte
		{
			uint8_t ca = Wire3.read();
			Serial.print(" R4_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

		/*****************************************
	                                  Reg5: Y offset
		******************************************/	
		Wire3.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire3.write(0x60); // Write register command
		Wire3.write(OFFSET_XY_u); // 
		Wire3.write(OFFSET_XY_l); // 
		Wire3.write(0x14); // Select address reg 5 (<<2) 
		Wire3.endTransmission();  // Stop I2C		

		Wire3.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire3.available() == 1) // Read status byte
		{
			uint8_t ca = Wire3.read();
			Serial.print(" R5_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

		/*****************************************
	                                  Reg6: Z offset
		******************************************/	
		Wire3.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire3.write(0x60); // Write register command
		Wire3.write(OFFSET_Z_u); // 
		Wire3.write(OFFSET_Z_l); // 
		Wire3.write(0x18); // Select address reg 6 (<<2) 
		Wire3.endTransmission();  // Stop I2C		

		Wire3.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire3.available() == 1) // Read status byte
		{
			uint8_t ca = Wire3.read();
			Serial.print(" R6_status=0x");
			Serial.print(ca, HEX);
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		
		break;

	default:
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x60); // Write register command
		Wire3.write(upper_reg0); 
		Wire3.write(lower_reg0);
		Wire.write(0x00); // Select address register, (0x00 << 2) 
		Wire.endTransmission();  // Stop I2C

		Wire.requestFrom(_I2CAddress, 1); // Request 1 byte of data
		if (Wire.available() == 1) // Read status byte
		{

			uint8_t ca = Wire.read();
			
			Serial.print("*** Register 0 Status: ");
			Serial.print(ca, BIN);
			Serial.print("\n");
		
			receiveBuffer[0] = ca;
		}
		else _error = 0x2;
		break;
	}
}

void MLX90393::startBurstMode(char *receiveBuffer, char zyxt, int i2cLine)
{
	uint8_t select = (0x10) | (zyxt);

	Serial.print("\nSB MLX:L");
	Serial.print(i2cLine);
	Serial.print(" A:0x");
	Serial.print(_I2CAddress,HEX);
	Serial.print(" Stat:");	
	
	switch (i2cLine)
	{
	case 0:
		Wire.beginTransmission(_I2CAddress);
		Wire.write(select);					// Write command for Burst Mode
		Wire.endTransmission();				// Stop I2C Transmission

		Wire.requestFrom(_I2CAddress, 1);   // Request 1 byte of data
		if (Wire.available() == 1)			// status byte
		{
			uint8_t ca = Wire.read();
			Serial.print(ca, HEX);
			Serial.print("\n");
			receiveBuffer[0] = ca;
		}
		else _error = 0x3;

		Wire.beginTransmission(_I2CAddress);
		Wire.write(0x50);					// READ register command
		Wire.write(0x08);					// Select address reg 0 (<<2)
		Wire.endTransmission();				// Stop I2C

		Wire.requestFrom(_I2CAddress, 3); 	// Request 3 bytes of data

		if (Wire.available() == 3)			// Read status byte
		{
			delay(100);
			uint8_t c = Wire.read();
			uint8_t ra = Wire.read();
			uint8_t rb = Wire.read();
			/*
			Serial.print("*** Register Read Status: ");
			Serial.print(c, BIN);
			Serial.print("\t Reg-MSB: ");
			Serial.print(ra, BIN);
			Serial.print("\t Reg-LSB: ");
			Serial.print(rb, BIN);
			Serial.print("\n");
			*/
			// Register Config	(0) 1011 0100  0001 1100    hallconf = 1100 gainsel=001 zseries=0
			// Register Config  (0) 0000 0000  0000 1100
			// Register Config	(4) 1011 0100 0001 0100
			// Register Config  (8) 1011 0100 0001 1100      osr=00 dig_filt=111 resXYZ = 100000 osr2=10

		}
		else _error = 0x4;
		break;

	case 1:

		Wire1.beginTransmission(_I2CAddress);
		Wire1.write(select);					// Write command for Burst Mode
		Wire1.endTransmission();				// Stop I2C Transmission

		Wire1.requestFrom(_I2CAddress, 1);   // Request 1 byte of data
		if (Wire1.available() == 1)			// status byte
		{
			uint8_t ca = Wire1.read();
			Serial.print(ca, HEX);
			Serial.print("\n");
			receiveBuffer[0] = ca;
		}
		else _error = 0x3;

		Wire1.beginTransmission(_I2CAddress);
		Wire1.write(0x50);					// READ register command
		Wire1.write(0x08);					// Select address reg 0 (<<2)
		Wire1.endTransmission();				// Stop I2C

		Wire1.requestFrom(_I2CAddress, 3); 	// Request 3 bytes of data

		if (Wire1.available() == 3)			// Read status byte
		{
			delay(100);
			uint8_t c = Wire1.read();
			uint8_t ra = Wire1.read();
			uint8_t rb = Wire1.read();
			/*
			Serial.print("*** Register Read Status: ");
			Serial.print(c, BIN);
			Serial.print("\t Reg-MSB: ");
			Serial.print(ra, BIN);
			Serial.print("\t Reg-LSB: ");
			Serial.print(rb, BIN);
			Serial.print("\n");
			*/
			// Register Config	(0) 1011 0100  0001 1100    hallconf = 1100 gainsel=001 zseries=0
			// Register Config  (0) 0000 0000  0000 1100
			// Register Config	(4) 1011 0100 0001 0100
			// Register Config  (8) 1011 0100 0001 1100      osr=00 dig_filt=111 resXYZ = 100000 osr2=10
		}
		else _error = 0x4;
		break;

	case 2:

		Wire2.beginTransmission(_I2CAddress);
		Wire2.write(select);					// Write command for Burst Mode
		Wire2.endTransmission();				// Stop I2C Transmission

		Wire2.requestFrom(_I2CAddress, 1);   // Request 1 byte of data
		if (Wire2.available() == 1)			// status byte
		{
			uint8_t ca = Wire2.read();
			Serial.print(ca, HEX);
			Serial.print("\n");
			receiveBuffer[0] = ca;
		}
		else _error = 0x3;

		Wire2.beginTransmission(_I2CAddress);
		Wire2.write(0x50);					// READ register command
		Wire2.write(0x08);					// Select address reg 0 (<<2)
		Wire2.endTransmission();				// Stop I2C

		Wire2.requestFrom(_I2CAddress, 3); 	// Request 3 bytes of data

		if (Wire2.available() == 3)			// Read status byte
		{
			delay(100);
			uint8_t c = Wire2.read();
			uint8_t ra = Wire2.read();
			uint8_t rb = Wire2.read();
			/*
			Serial.print("*** Register Read Status: ");
			Serial.print(c, BIN);
			Serial.print("\t Reg-MSB: ");
			Serial.print(ra, BIN);
			Serial.print("\t Reg-LSB: ");
			Serial.print(rb, BIN);
			Serial.print("\n");
			*/
			// Register Config	(0) 1011 0100  0001 1100    hallconf = 1100 gainsel=001 zseries=0
			// Register Config  (0) 0000 0000  0000 1100
			// Register Config	(4) 1011 0100 0001 0100
			// Register Config  (8) 1011 0100 0001 1100      osr=00 dig_filt=111 resXYZ = 100000 osr2=10
		}
		else _error = 0x4;
		break;

	case 3:
		Wire3.beginTransmission(_I2CAddress);
		Wire3.write(select);					// Write command for Burst Mode
		Wire3.endTransmission();				// Stop I2C Transmission

		Wire3.requestFrom(_I2CAddress, 1);   // Request 1 byte of data
		if (Wire3.available() == 1)			// status byte
		{
			uint8_t ca = Wire3.read();
			Serial.print(ca, HEX);
			Serial.print("\n");
			receiveBuffer[0] = ca;
		}
		else _error = 0x3;

		Wire3.beginTransmission(_I2CAddress);
		Wire3.write(0x50);					// READ register command
		Wire3.write(0x08);					// Select address reg 0 (<<2)
		Wire3.endTransmission();				// Stop I2C

		Wire3.requestFrom(_I2CAddress, 3); 	// Request 3 bytes of data

		if (Wire3.available() == 3)			// Read status byte
		{
			delay(100);
			uint8_t c = Wire3.read();
			uint8_t ra = Wire3.read();
			uint8_t rb = Wire3.read();
			/*
			Serial.print("*** Register Read Status: ");
			Serial.print(c, BIN);
			Serial.print("\t Reg-MSB: ");
			Serial.print(ra, BIN);
			Serial.print("\t Reg-LSB: ");
			Serial.print(rb, BIN);
			Serial.print("\n");
			*/
			// Register Config	(0) 1011 0100  0001 1100    hallconf = 1100 gainsel=001 zseries=0
			// Register Config  (0) 0000 0000  0000 1100
			// Register Config	(4) 1011 0100 0001 0100
			// Register Config  (8) 1011 0100 0001 1100      osr=00 dig_filt=111 resXYZ = 100000 osr2=10

		}
		else _error = 0x4;
		break;

	default:
		Wire.beginTransmission(_I2CAddress);
		Wire.write(select);					// Write command for Burst Mode
		Wire.endTransmission();				// Stop I2C Transmission

		Wire.requestFrom(_I2CAddress, 1);   // Request 1 byte of data
		if (Wire.available() == 1)			// status byte
		{
			uint8_t ca = Wire.read();
			Serial.print(ca, HEX);
			Serial.print("\n");
			receiveBuffer[0] = ca;
		}
		else _error = 0x3;

		Wire.beginTransmission(_I2CAddress);
		Wire.write(0x50);					// READ register command
		Wire.write(0x08);					// Select address reg 0 (<<2)
		Wire.endTransmission();				// Stop I2C

		Wire.requestFrom(_I2CAddress, 3); 	// Request 3 bytes of data

		if (Wire.available() == 3)			// Read status byte
		{
			delay(100);
			uint8_t c = Wire.read();
			uint8_t ra = Wire.read();
			uint8_t rb = Wire.read();
			/*
			Serial.print("*** Register Read Status: ");
			Serial.print(c, BIN);
			Serial.print("\t Reg-MSB: ");
			Serial.print(ra, BIN);
			Serial.print("\t Reg-LSB: ");
			Serial.print(rb, BIN);
			Serial.print("\n");
			*/
			// Register Config	(0) 1011 0100  0001 1100    hallconf = 1100 gainsel=001 zseries=0
			// Register Config  (0) 0000 0000  0000 1100
			// Register Config	(4) 1011 0100 0001 0100
			// Register Config  (8) 1011 0100 0001 1100      osr=00 dig_filt=111 resXYZ = 100000 osr2=10

		}
		else _error = 0x4;
		break;
	}

}

void MLX90393::resetDevice(char *receiveBuffer, uint8_t select, int i2cLine)
{
	switch (i2cLine)
	{
	case 0:

		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x80); // Exit Mode
		Wire.write(0xF0); // Reset Command

		Wire.write(0x60); // Write register command
		Wire.write(0x00); // Set AH = 0x00, BIST disabled           CMD b#2 D[15:8] 0000 0000
		Wire.write(0x0C); // Set AL = 0x0C, GAIN = 0                CMD b#3 D[7:0]  0000 1100
		Wire.write(0x00); // Select address register, (0x00 << 2)   CMD b#2 A[5:0] << 2
						  // Z_series = b0, Gain_Sel = b000, Hall_Conf = b1100 (All at default settings)

		Wire.write(select); // Read measurement command (ZXYT = 1111)
		Wire.endTransmission();  // Stop I2C
		break;

	case 1:

		Wire1.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire1.write(0x80); // Exit Mode
		Wire1.write(0xF0); // Reset Command

		Wire1.write(0x60); // Write register command
		Wire1.write(0x00); // Set AH = 0x00, BIST disabled           CMD b#2 D[15:8] 0000 0000
		Wire1.write(0x0C); // Set AL = 0x0C, GAIN = 0                CMD b#3 D[7:0]  0000 1100
		Wire1.write(0x00); // Select address register, (0x00 << 2)   CMD b#2 A[5:0] << 2
						  // Z_series = b0, Gain_Sel = b000, Hall_Conf = b1100 (All at default settings)

		Wire1.write(select); // Read measurement command (ZXYT = 1111)
		Wire1.endTransmission();  // Stop I2C
		break;

	case 2:

		Wire2.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire2.write(0x80); // Exit Mode
		Wire2.write(0xF0); // Reset Command

		Wire2.write(0x60); // Write register command
		Wire2.write(0x00); // Set AH = 0x00, BIST disabled           CMD b#2 D[15:8] 0000 0000
		Wire2.write(0x0C); // Set AL = 0x0C, GAIN = 0                CMD b#3 D[7:0]  0000 1100
		Wire2.write(0x00); // Select address register, (0x00 << 2)   CMD b#2 A[5:0] << 2
						  // Z_series = b0, Gain_Sel = b000, Hall_Conf = b1100 (All at default settings)

		Wire2.write(select); // Read measurement command (ZXYT = 1111)
		Wire2.endTransmission();  // Stop I2C
		break;

	case 3:

		Wire3.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire3.write(0x80); // Exit Mode
		Wire3.write(0xF0); // Reset Command

		Wire3.write(0x60); // Write register command
		Wire3.write(0x00); // Set AH = 0x00, BIST disabled           CMD b#2 D[15:8] 0000 0000
		Wire3.write(0x0C); // Set AL = 0x0C, GAIN = 0                CMD b#3 D[7:0]  0000 1100
		Wire3.write(0x00); // Select address register, (0x00 << 2)   CMD b#2 A[5:0] << 2
						   // Z_series = b0, Gain_Sel = b000, Hall_Conf = b1100 (All at default settings)

		Wire3.write(select); // Read measurement command (ZXYT = 1111)
		Wire3.endTransmission();  // Stop I2C
		break;

	default:
		Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
		Wire.write(0x80); // Exit Mode
		Wire.write(0xF0); // Reset Command

		Wire.write(0x60); // Write register command
		Wire.write(0x00); // Set AH = 0x00, BIST disabled           CMD b#2 D[15:8] 0000 0000
		Wire.write(0x0C); // Set AL = 0x0C, GAIN = 0                CMD b#3 D[7:0]  0000 1100
		Wire.write(0x00); // Select address register, (0x00 << 2)   CMD b#2 A[5:0] << 2
						  // Z_series = b0, Gain_Sel = b000, Hall_Conf = b1100 (All at default settings)

		Wire.write(select); // Read measurement command (ZXYT = 1111)
		Wire.endTransmission();  // Stop I2C
		break;
	}

	//Serial.println("*** Resetting device.");
}

/*Return number of bytes available, if after a request for read, 
 * there is actually something to read*/
uint8_t MLX90393::measureReady(uint8_t i2cLine)
{	
	//Choose the right wire object depending on the 
	i2c_t3* thisWire = WhichWire(i2cLine);
	/*This is still just a pointer, so when we run commands, we must
	deference it using ->*/
	
	//Has it finished transmitting the previous asynchronous requests?
	//And are there the correct number of bytes available?
	return (thisWire->done());
}

//So you've requested, and you know there's bytes to be read, so go and read
uint8_t MLX90393::takeMeasure(char *receiveBuffer, int i2cLine)
{
	/* Here's an email from Pete that explains what each byte means:
	* Each read from a chip (with our current config) will return the following (each line = 1 * 
	* byte)
 
	* [MLX Return data] (I may have ordered XYZ wrong, but you get the idea)
	* Status
	* X msb
	* X lsb
	* Y msb
	* Y lsb
	* Z msb
	* Z lsb
	* [END PACKET] */

	//Choose the right wire object depending on the 
	i2c_t3* thisWire = WhichWire(i2cLine);
	/*This is still just a pointer, so when we run commands, we must
	deference it using ->*/
	
	receiveBuffer[0] = thisWire->read(); //Status byte
	receiveBuffer[1] = 0; //We used to request temperature data and put this here
	receiveBuffer[2] = 0; //...But no more. So keep as is and set as zeros
	//The rest is x,y,z
	for(uint8_t bufIdx=3; bufIdx < RCVBUFSZ-1; bufIdx++)
    {
		receiveBuffer[bufIdx] = thisWire->read(); //xMag msb
    }
	//The buffer is one too big! Woops!
	//receiveBuffer[8] = 0;
	
	//Everything went fine :)
	return 0;
}

void MLX90393::RequestMeasurement(char *receiveBuffer, char zyxt, int i2cLine)
{
	//I have no idea what this does, possibly send this to get a measurement?
	static const uint8_t select = 0x4E;

	/*STAY CALM. It's not as bad as it looks.
	Before, we looked at the i2cLine number and if it was 0, we did a bunch of commands for the wire 0 bus, if it was 1, we copy-pasted the same but for Wire1 etc etc.
	
	This made my fingers hurt. Instead, we have a new function, whichWire. This returns a POINTER to the correct Wire object. So in other words, if it's zero, it returns the address of Wire, for 1 it returns address of Wire1 etc... All the -> does it derefernce that pointer, aka go to that address and perform beginTransmsion on that object not the address.*/
	
	WhichWire(i2cLine)->beginTransmission(_I2CAddress);	// Start I2C Transmission
	WhichWire(i2cLine)->write(select);						// Read measurement command (ZXYT = 1111)
	WhichWire(i2cLine)->sendTransmission(I2C_NOSTOP);					// Stop I2C Transmission
}

void MLX90393::AsyncRxFill(char *receiveBuffer, char zyxt, int i2cLine){
	while(!(WhichWire(i2cLine)->done()));
	WhichWire(i2cLine)->sendRequest(_I2CAddress, 7,I2C_STOP);		// Request 9 bytes of data
	//Serial.println("Have requested!");
}


void MLX90393::GetMeasurement(char *receiveBuffer, char zyxt, int i2cLine)
{
	//uint8_t select = (0x40)|(zyxt);
	uint8_t select = 0x4E;
	
	switch (i2cLine)
	{
	case 0:

		Wire.beginTransmission(_I2CAddress);	// Start I2C Transmission
		Wire.write(select);						// Read measurement command (ZXYT = 1111)
		Wire.endTransmission();					// Stop I2C Transmission
		Wire.requestFrom(_I2CAddress, 7);		// Request 9 bytes of data
		//delay(50);
		if (Wire.available() == 7)
		{
			receiveBuffer[0] = Wire.read(); //Status byte
			receiveBuffer[1] = 0x00; //Wire.read(); //tMag msb
			receiveBuffer[2] = 0x00; //Wire.read(); //tMag lsb
			receiveBuffer[3] = Wire.read(); //xMag msb
			receiveBuffer[4] = Wire.read(); //xMag lsb
			receiveBuffer[5] = Wire.read(); //yMag msb
			receiveBuffer[6] = Wire.read(); //yMag lsb
			receiveBuffer[7] = Wire.read(); //zMag msb
			receiveBuffer[8] = Wire.read(); //zMag lsb
			/*Serial.print("Reading L0 A:");
			Serial.print(_I2CAddress,HEX);
			Serial.print(" Response: ");
			Serial.print(receiveBuffer[0],BIN);
			Serial.print(" \n");*/
		}
		else {
			//Serial.println("*** L0 No Wires available: Read measurements failed.");
			//resetDevice(receiveBuffer, select, i2cLine);
		}
		break;

	case 1:

		Wire1.beginTransmission(_I2CAddress);	// Start I2C Transmission
		Wire1.write(select);						// Read measurement command
		Wire1.endTransmission();					// Stop I2C Transmission
		Wire1.requestFrom(_I2CAddress, 7);		// Request 9 bytes of data

		if (Wire1.available() == 7)
		{
			receiveBuffer[0] = Wire1.read(); //Status byte
			receiveBuffer[1] = 0x00; //Wire1.read(); //tMag msb
			receiveBuffer[2] = 0x01; //Wire1.read(); //tMag lsb
			receiveBuffer[3] = Wire1.read(); //xMag msb
			receiveBuffer[4] = Wire1.read(); //xMag lsb
			receiveBuffer[5] = Wire1.read(); //yMag msb
			receiveBuffer[6] = Wire1.read(); //yMag lsb
			receiveBuffer[7] = Wire1.read(); //zMag msb
			receiveBuffer[8] = Wire1.read(); //zMag lsb
		}
		else {
			Serial.println("*** L1 No Wires available: Read measurements failed.");
			resetDevice(receiveBuffer, select, i2cLine);
		}
		break;

	case 2:

		Wire2.beginTransmission(_I2CAddress);	// Start I2C Transmission
		Wire2.write(select);						// Read measurement command (ZXYT = 1111)
		Wire2.endTransmission();					// Stop I2C Transmission
		Wire2.requestFrom(_I2CAddress, 7);		// Request 9 bytes of data

		if (Wire2.available() == 7)
		{
			receiveBuffer[0] = Wire2.read(); //Status byte
			receiveBuffer[1] = 0x00; //Wire2.read(); //tMag msb
			receiveBuffer[2] = 0x00; //Wire2.read(); //tMag lsb
			receiveBuffer[3] = Wire2.read(); //xMag msb
			receiveBuffer[4] = Wire2.read(); //xMag lsb
			receiveBuffer[5] = Wire2.read(); //yMag msb
			receiveBuffer[6] = Wire2.read(); //yMag lsb
			receiveBuffer[7] = Wire2.read(); //zMag msb
			receiveBuffer[8] = Wire2.read(); //zMag lsb
		}
		else {
			Serial.println("*** L2 No Wires available: Read measurements failed.");
			resetDevice(receiveBuffer, select, i2cLine);
		}
		break;

	case 3:

		Wire3.beginTransmission(_I2CAddress);	// Start I2C Transmission
		Wire3.write(select);						// Read measurement command (ZXYT = 1111)
		Wire3.endTransmission();					// Stop I2C Transmission
		Wire3.requestFrom(_I2CAddress, 7);		// Request 9 bytes of data

		if (Wire3.available() == 7)
		{
			receiveBuffer[0] = Wire3.read(); //Status byte
			receiveBuffer[1] = 0x00; //Wire3.read(); //tMag msb
			receiveBuffer[2] = 0x00; //Wire3.read(); //tMag lsb
			receiveBuffer[3] = Wire3.read(); //xMag msb
			receiveBuffer[4] = Wire3.read(); //xMag lsb
			receiveBuffer[5] = Wire3.read(); //yMag msb
			receiveBuffer[6] = Wire3.read(); //yMag lsb
			receiveBuffer[7] = Wire3.read(); //zMag msb
			receiveBuffer[8] = Wire3.read(); //zMag lsb
		}
		else {
			Serial.println("*** L3 No Wires available: Read measurements failed.");
			resetDevice(receiveBuffer, select, i2cLine);
		}
		break;

	default:
		Wire.beginTransmission(_I2CAddress);	// Start I2C Transmission
		Wire.write(select);						// Read measurement command (ZXYT = 1111)
		Wire.endTransmission();					// Stop I2C Transmission
		Wire.requestFrom(_I2CAddress, 9);		// Request 9 bytes of data

		if (Wire.available() == 9)
		{
			receiveBuffer[0] = Wire.read(); //Status byte
			receiveBuffer[1] = Wire.read(); //tMag msb
			receiveBuffer[2] = Wire.read(); //tMag lsb
			receiveBuffer[3] = Wire.read(); //xMag msb
			receiveBuffer[4] = Wire.read(); //xMag lsb
			receiveBuffer[5] = Wire.read(); //yMag msb
			receiveBuffer[6] = Wire.read(); //yMag lsb
			receiveBuffer[7] = Wire.read(); //zMag msb
			receiveBuffer[8] = Wire.read(); //zMag lsb
		}
		else {
			//Serial.println("*** No Wires available: Read measurements failed.");
			//resetDevice(receiveBuffer, select, i2cLine);
		}
		break;
	}
}

void MLX90393::printRawData(char *receiveBuffer, int format)
{
	switch (format) {
	case 0:
		Serial.print(receiveBuffer[0], BIN);
		Serial.print("\t");
		Serial.print(receiveBuffer[1], BIN);
		Serial.print(receiveBuffer[2], BIN);
		Serial.print("\t");
		Serial.print(receiveBuffer[3], BIN);
		Serial.print(receiveBuffer[4], BIN);
		Serial.print("\t");
		Serial.print(receiveBuffer[5], BIN);
		Serial.print(receiveBuffer[6], BIN);
		Serial.print("\t");
		Serial.print(receiveBuffer[7], BIN);
		Serial.print(receiveBuffer[8], BIN);
		Serial.print("\n");
		break;
	case 1:
		Serial.print(receiveBuffer[0], HEX);
		Serial.print("\t");
		Serial.print(receiveBuffer[1], HEX);
		Serial.print(receiveBuffer[2], HEX);
		Serial.print("\t");
		Serial.print(receiveBuffer[3], HEX);
		Serial.print(receiveBuffer[4], HEX);
		Serial.print("\t");
		Serial.print(receiveBuffer[5], HEX);
		Serial.print(receiveBuffer[6], HEX);
		Serial.print("\t");
		Serial.print(receiveBuffer[7], HEX);
		Serial.print(receiveBuffer[8], HEX);
		Serial.print("\n");
		break;
	default:
		break;
	}
}

void MLX90393::printASCIIData(char *receiveBuffer)
{
	// Combine MSB and LSB to aquire raw decimal values
	uint16_t xM = (receiveBuffer[3] << 8) | receiveBuffer[4];
	uint16_t yM = (receiveBuffer[5] << 8) | receiveBuffer[6];
	uint16_t zM = (receiveBuffer[7] << 8) | receiveBuffer[8];

	// Convert raw data to magnetic field values
	float Bx = 805.0f * xM / 100000.0f;
	float By = (805.0f * yM / 100000.0f);
	float Bz = (2936.0f * zM / 100000.0f);

	Serial.print("*** Status: ");
	Serial.print(receiveBuffer[0], BIN);
	Serial.print("\txMag = ");
	Serial.print(Bx);
	Serial.print("\tyMag = ");
	Serial.print(By);
	Serial.print("\tzMag = ");
	Serial.print(Bz);
	Serial.print("\n");
}

void MLX90393::printChartData(char *receiveBuffer)
{
	// Combine MSB and LSB to aquire raw decimal values
	uint16_t xM = (receiveBuffer[3] << 8) | receiveBuffer[4];
	uint16_t yM = (receiveBuffer[5] << 8) | receiveBuffer[6];
	uint16_t zM = (receiveBuffer[7] << 8) | receiveBuffer[8];

	// Convert raw data to magnetic field values
	float Bx = 805.0f * xM / 100000.0f;
	float By = (805.0f * yM / 100000.0f);
	float Bz = (2936.0f * zM / 100000.0f);

	Serial.print(Bx);
	Serial.print(" ");
	Serial.print(By);
	Serial.print(" ");
	Serial.print(Bz);
	Serial.print("\n");
}

void MLX90393::startTimer(void)
{
	start = micros();
}

void MLX90393::printTimeElapsed(void)
{
	float end = micros();

	time = end - start;

	Serial.print(time/1000.0f);
	Serial.print("\n");
}

void MLX90393::printError(uint8_t error)
{
	switch (error) {
	case 0x00:
		Serial.print("");
		break;

	case 0x01:
		Serial.print("*** Device Reset Error.\n");
		break;

	case 0x02:
		Serial.print("*** Register Setup Error.\n");
		break;

	case 0x03:
		Serial.print("*** Burst-Mode Setup Error.\n");
		break;

	case 0x04:
		Serial.print("*** Address Selection Error.\n");
		break;

	default:
		break;
	};
}

i2c_t3* MLX90393::WhichWire(uint8_t wireNo)
{	
	switch(wireNo){
		case 0:
			return &Wire;
			break;
		case 1:
			return &Wire1;
			break;
		case 2:
			return &Wire2;
			break;
		case 3:
			return &Wire3;
			break;
		default:
			Serial.println("Invalid wire"); while(1);
			break;
		}
		
}

//Return address packet, depending on device
int MLX90393::getAddress(void){
	return _I2CAddress;
}
