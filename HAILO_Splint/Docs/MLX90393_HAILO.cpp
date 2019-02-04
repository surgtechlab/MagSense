#include "MLX90393.h"

MLX90393::MLX90393()
{

}

MLX90393::~MLX90393()
{

}

void MLX90393::init(char *receiveBuffer, int address)
{
	//Serial.print("*** Setup Starting...\n");

	_I2CAddress = address;

	Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
	Wire.write(0x80); // Exit Mode
	Wire.write(0xF0); // Reset Command
	Wire.endTransmission();  // Stop I2C
	delay(1000);
	Wire.requestFrom(_I2CAddress, 1);
	if (Wire.available() == 1) 
	{
		uint8_t d = Wire.read();
		Serial.print("*** Reset status: ");
		Serial.print(d, BIN);
		Serial.print("\n");
	}
	else _error = 0x1;
	
	//Serial.print("*** Device reset on startup.\n");
}

void MLX90393::configure(char *receiveBuffer)
{
	Wire.beginTransmission(_I2CAddress); // Start I2C Transmission
	Wire.write(0x60); // Write register command
	Wire.write(0x00); // Set AH = 0x00, BIST disabled           CMD b#2 D[15:8] 0000 0000
	Wire.write(0x0C); // Set AL = 0x0C, GAIN = 0                CMD b#3 D[7:0]  0000 1100
	Wire.write(0x00); // Select address register, (0x00 << 2)   CMD b#2 A[5:0] << 2
					  // Z_series = b0, Gain_Sel = b000, Hall_Conf = b1100 (All at default settings)
	Wire.endTransmission();  // Stop I2C

	Serial.print("*** Registers setup: ");
	Serial.print("Z_series = b0, Gain_Sel = b000, Hall_Conf = b1100\n");

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
}

void MLX90393::startBurstMode(char *receiveBuffer, char zyxt)
{
	uint8_t select = (0x10) | (zyxt);

	Wire.beginTransmission(_I2CAddress);
	Wire.write(select);					// Write command for Burst Mode			
	Wire.endTransmission();				// Stop I2C Transmission

	Wire.requestFrom(_I2CAddress, 1);   // Request 1 byte of data
	if (Wire.available() == 1)			// status byte
	{
		uint8_t cb = Wire.read();
		Serial.print("*** Register 1 Status: ");
		Serial.print(cb, BIN);
		Serial.print("\n");

		receiveBuffer[0] = cb;
	} else _error = 0x3;

	Wire.beginTransmission(_I2CAddress);
	Wire.write(0x50);					// READ register command
	Wire.write(0x08);					// Select address reg 0 (<<2)
	Wire.endTransmission();				// Stop I2C

	Wire.requestFrom(_I2CAddress, 3); 	// Request 3 bytes of data

	if (Wire.available() == 3)			// Read status byte
	{
		delay(500);
		uint8_t c = Wire.read();
		uint8_t ra = Wire.read();
		uint8_t rb = Wire.read();
		Serial.print("*** Register Read Status: ");
		Serial.print(c, BIN);
		Serial.print("\t Reg-MSB: ");
		Serial.print(ra, BIN);
		Serial.print("\t Reg-LSB: ");
		Serial.print(rb, BIN);
		Serial.print("\n");
		// Register Config	(0) 1011 0100  0001 1100    hallconf = 1100 gainsel=001 zseries=0
		// Register Config  (0) 0000 0000  0000 1100
		// Register Config	(4) 1011 0100 0001 0100
		// Register Config  (8) 1011 0100 0001 1100      osr=00 dig_filt=111 resXYZ = 100000 osr2=10
	} else _error = 0x4;

	printError(_error);

	time = millis();

	Serial.print("Time for system setup: ");
	Serial.print(time);
	Serial.print("ms \n\n");
}

void MLX90393::resetDevice(char *receiveBuffer, uint8_t select)
{
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
	
	Serial.print("*** Resetting device.\n");
}


void MLX90393::ReadMeasurement(char *receiveBuffer, char zyxt)
{
	float start = micros();

	uint8_t select = (0x40)|(zyxt);

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
	} else {
		Serial.print("*** No wires available: Read measurements failed.\n");
		resetDevice(receiveBuffer, select);
	}

	// Get time taken for reading
	float end = micros();
	time = end - start;
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
