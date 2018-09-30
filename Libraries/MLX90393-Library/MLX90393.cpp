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
 
	//Register 1: BURST_SEL = 1110(ZYX-), BURST_DATA_RATE = 0 (Cont)
	uint8_t upper_reg1 = 0x03; 
	uint8_t lower_reg1 = 0x80;	
	
	//Register 2: OSR2=0, RES_XYZ=?, DIG_FILT = ?, OSR = ? 
	uint8_t upper_reg2 = 0x00;
	uint8_t lower_reg2 = 0x00;
	
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

void MLX90393::ReadMeasurement(char *receiveBuffer, char zyxt, int i2cLine)
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
