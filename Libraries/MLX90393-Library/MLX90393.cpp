/*Copyright 2018 University of Leeds, Pete Culmer, Max Houghton, Chris Adams

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.*/

#include "MLX90393.h"

MLX90393::MLX90393()
	: ble(SoftwareSerial(0, 1))
{
	ble.begin(9600);
}

MLX90393::~MLX90393()
{

}

void MLX90393::init(char *receiveBuffer, int address, int i2cLine, int muxId)
{
	_I2CAddress = address;
	backup_address = address;
	
	uint8_t i_status = 0;

	Serial.printf("Init MLX:L%d\tA:0x%x\tMUX:%d\t", i2cLine, _I2CAddress, muxId);

	i2c_t3* thisWire = WhichWire(i2cLine);
	// uint8_t initData[1] = {0x80};
	//
	// uint8_t* requestData = i2cCommsWrapper(thisWire, initData, 1);
	//
	// // check for error (4th bit of status byte)
	// if (0x10 & requestData[0]) {
	// 	Serial.println("error");
	// } else {
	// 	Serial.println(requestData[0], HEX);
	// }
	thisWire->beginTransmission(_I2CAddress); 	// Start I2C Transmission
	thisWire->write(0x80); 						// Exit Mode
	// thisWire->write(0xF0); 					// Reset Command
	thisWire->endTransmission();  				// Stop I2C

	delay(50);

	thisWire->requestFrom(_I2CAddress, 1);
	if (thisWire->available() == 1) {
		i_status = thisWire->read();
		Serial.printf("status: %x\n", i_status);
	} else {
		Serial.printf("error\n");
		_error = 0x1;
	}

	delay(5);
}

void MLX90393::configure(char *receiveBuffer, int i2cLine, uint8_t GAIN_SEL, uint8_t RES_XYZ, uint8_t DIG_FILT, uint8_t OSR)
{
	//Define register values
	uint8_t HALLCONF = 0x0C; //keep as default

	//Register 0: BIST=0, Z_series=0, GAIN_SEL = ?, HALLCONF=?
	uint8_t upper_reg0 = 0x00;
	uint8_t lower_reg0 = 0x00;

	//Register 1: TCMP = ON, BURST_SEL = 1110(ZYX-), BURST_DATA_RATE = 0 (Cont)
	uint8_t upper_reg1 = 0x07;
	uint8_t lower_reg1 = 0x81;

	//Register 2: OSR2=0, RES_XYZ=?, DIG_FILT = ?, OSR = ?
	uint8_t upper_reg2 = 0x00;
	uint8_t lower_reg2 = 0x00;

	//Define Measurement OFFSETs (used to account for static magnets)
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
	Serial.print("Config MLX:L");
	Serial.print(i2cLine);
	Serial.print(" A:0x");
	Serial.print(_I2CAddress,HEX);
	Serial.print(" Setting-R0:0x");
	Serial.print(upper_reg0, HEX);
	Serial.print(lower_reg0, HEX);
	Serial.print(" R1:0x");
	Serial.print(upper_reg1, HEX);
	Serial.print(lower_reg1, HEX);
	Serial.print(" R2:0x");
	Serial.print(upper_reg2, HEX);
	Serial.print(lower_reg2, HEX);
	Serial.println();

	// Create pointers to desired I2C line object, and data to send/receive
	i2c_t3* thisWire = WhichWire(i2cLine);
	//uint8_t* requestData;

	/*****************************************
								  Reg0: SELECT GAIN
	******************************************/
	// uint8_t gainData[4] = {0x60, upper_reg0, lower_reg0, 0x00};
	// requestData = i2cCommsWrapper(thisWire, gainData, 1);
	// Serial.print("R0_status=0x");
	// Serial.print(requestData[1], HEX);
	// receiveBuffer[0] = requestData[1];
	// _error = requestData[0];
	thisWire->beginTransmission(_I2CAddress); // Start I2C Transmission
	thisWire->write(0x60); // Write register command
	thisWire->write(upper_reg0);
	thisWire->write(lower_reg0);
	thisWire->write(0x00); // Select address register, (0x00 << 2)
	thisWire->endTransmission();  // Stop I2C
	thisWire->requestFrom(_I2CAddress, 1); // Request 1 byte of data
	if (thisWire->available() == 1) // Read status byte
	{
		uint8_t ca = thisWire->read();
		Serial.print("R0_status=0x");
		Serial.print(ca, HEX);
		receiveBuffer[0] = ca;
	}
	else _error = 0x2;

	/*****************************************
								  Reg1: CONFIGURE BURST MODE
	******************************************/
	// uint8_t configData[4] = {0x60, upper_reg1, lower_reg1, 0x04};
	// requestData = i2cCommsWrapper(thisWire, configData, 1);
	// Serial.print(" R1_status=0x");
	// Serial.print(requestData[1], HEX);
	// receiveBuffer[0] = requestData[1];
	// _error = requestData[0];
	thisWire->beginTransmission(_I2CAddress); // Start I2C Transmission
	thisWire->write(0x60); // Write register command
	thisWire->write(upper_reg1); //
	thisWire->write(lower_reg1); //
	thisWire->write(0x04); // Select address reg 1 (<<2)
	thisWire->endTransmission();  // Stop I2C

	thisWire->requestFrom(_I2CAddress, 1); // Request 1 byte of data
	if (thisWire->available() == 1) // Read status byte
	{
		uint8_t ca = thisWire->read();
		Serial.print(" R1_status=0x");
		Serial.print(ca, HEX);
		receiveBuffer[0] = ca;
	}
	else _error = 0x2;

	/*****************************************
								  Reg2: SELECT RESOLUTION
	******************************************/
	// uint8_t resolutionData[4] = {0x60, upper_reg2, lower_reg2, 0x08};
	// requestData = i2cCommsWrapper(thisWire, resolutionData, 1);
	// Serial.print(" R2_status=0x");
	// Serial.print(requestData[1], HEX);
	// receiveBuffer[0] = requestData[1];
	// _error = requestData[0];
	thisWire->beginTransmission(_I2CAddress); // Start I2C Transmission
	thisWire->write(0x60); // Write register command
	thisWire->write(upper_reg2); //
	thisWire->write(lower_reg2); //
	thisWire->write(0x08); // Select address reg 2 (<<2)
	thisWire->endTransmission();  // Stop I2C

	thisWire->requestFrom(_I2CAddress, 1); // Request 1 byte of data
	if (thisWire->available() == 1) // Read status byte
	{
		uint8_t ca = thisWire->read();
		Serial.print(" R2_status=0x");
		Serial.print(ca, HEX);
		receiveBuffer[0] = ca;
	}
	else _error = 0x2;

	/*****************************************
								  Reg4: X offset
	******************************************/
	// uint8_t xOffsetData[4] = {0x60, OFFSET_XY_u, OFFSET_XY_l, 0x10};
	// requestData = i2cCommsWrapper(thisWire, xOffsetData, 1);;
	// Serial.print(" R4_status=0x");
	// Serial.print(requestData[1], HEX);
	// receiveBuffer[0] = requestData[1];
	// _error = requestData[0];
	thisWire->beginTransmission(_I2CAddress); // Start I2C Transmission
	thisWire->write(0x60); // Write register command
	thisWire->write(OFFSET_XY_u); //
	thisWire->write(OFFSET_XY_l); //
	thisWire->write(0x10); // Select address reg 4 (<<2)
	thisWire->endTransmission();  // Stop I2C

	thisWire->requestFrom(_I2CAddress, 1); // Request 1 byte of data
	if (thisWire->available() == 1) // Read status byte
	{
		uint8_t ca = thisWire->read();
		Serial.print(" R4_status=0x");
		Serial.print(ca, HEX);
		receiveBuffer[0] = ca;
	}
	else _error = 0x2;

	/*****************************************
								  Reg5: Y offset
	******************************************/
	// uint8_t yOffsetData[4] = {0x60, OFFSET_XY_u, OFFSET_XY_l, 0x14};
	// requestData = i2cCommsWrapper(thisWire, yOffsetData, 1);
	// Serial.print(" R5_status=0x");
	// Serial.print(requestData[1], HEX);
	// receiveBuffer[0] = requestData[1];
	// _error = requestData[0];
	thisWire->beginTransmission(_I2CAddress); // Start I2C Transmission
	thisWire->write(0x60); // Write register command
	thisWire->write(OFFSET_XY_u); //
	thisWire->write(OFFSET_XY_l); //
	thisWire->write(0x14); // Select address reg 5 (<<2)
	thisWire->endTransmission();  // Stop I2C

	thisWire->requestFrom(_I2CAddress, 1); // Request 1 byte of data
	if (thisWire->available() == 1) // Read status byte
	{
		uint8_t ca = thisWire->read();
		Serial.print(" R5_status=0x");
		Serial.print(ca, HEX);
		receiveBuffer[0] = ca;
	}
	else _error = 0x2;

	/*****************************************
							Reg6: Z offset
	******************************************/
	// uint8_t zOffsetData[4] = {0x60, OFFSET_Z_u, OFFSET_Z_l, 0x18};
	// requestData = i2cCommsWrapper(thisWire, zOffsetData, 1);
	//
	// Serial.print(" R6_status=0x");
	// Serial.print(requestData[1], HEX);
	// Serial.println();
	// receiveBuffer[0] = requestData[1];
	// _error = requestData[0];

	thisWire->beginTransmission(_I2CAddress); // Start I2C Transmission
	thisWire->write(0x60); // Write register command
	thisWire->write(OFFSET_Z_u); //
	thisWire->write(OFFSET_Z_l); //
	thisWire->write(0x18); // Select address reg 6 (<<2)
	thisWire->endTransmission();  // Stop I2C

	thisWire->requestFrom(_I2CAddress, 1); // Request 1 byte of data
	if (thisWire->available() == 1) // Read status byte
	{
		uint8_t ca = thisWire->read();
		Serial.print(" R6_status=0x");
		Serial.println(ca, HEX);
		receiveBuffer[0] = ca;
	}
	else _error = 0x2;
}

void MLX90393::startBurstMode(char *receiveBuffer, char zyxt, int i2cLine)
{
	uint8_t select = (0x10) | (zyxt);

	Serial.print("SB MLX:L");
	Serial.print(i2cLine);
	Serial.print(" A:0x");
	Serial.print(_I2CAddress, HEX);
	Serial.print(" Stat:");

	// Create pointer to desired I2C line object
	i2c_t3* thisWire = WhichWire(i2cLine);

	// uint8_t writeCommand[1] = {select};
	//
	// uint8_t* requestData = i2cCommsWrapper(thisWire, writeCommand, 1);
	//
	// // check for Error (4th bit of status byte)
	// if (0x10 & requestData[0]) {
	// 	Serial.printf("error\n");
	// } else Serial.println(requestData[0], HEX);
	//
	// uint8_t readCommand[2] = {0x50, 0x08};
	//
	// requestData = i2cCommsWrapper(thisWire, readCommand, 3);

	thisWire->beginTransmission(_I2CAddress);

	thisWire->write(select);					// Write command for Burst Mode
	thisWire->endTransmission();				// Stop I2C Transmission

	delay(50);

	thisWire->requestFrom(_I2CAddress, 1);   // Request 1 byte of data
	if (thisWire->available() == 1)			// status byte
	{
		uint8_t ca = thisWire->read();
		Serial.print(ca, HEX);
		Serial.print("\n");
		receiveBuffer[0] = ca;
	}
	else _error = 0x3;

	thisWire->beginTransmission(_I2CAddress);
	thisWire->write(0x50);					// READ register command
	thisWire->write(0x08);					// Select address reg 0 (<<2)
	thisWire->endTransmission();				// Stop I2C

	thisWire->requestFrom(_I2CAddress, 3); 	// Request 3 bytes of data

	if (thisWire->available() == 3)			// Read status byte
	{
		uint8_t c = thisWire->read();
		uint8_t ra = thisWire->read();
		uint8_t rb = thisWire->read();

		// Serial.print("Register Read Status: ");
		// Serial.print(c, BIN);
		// Serial.print("\t Reg-MSB: ");
		// Serial.print(ra, BIN);
		// Serial.print("\t Reg-LSB: ");
		// Serial.print(rb, BIN);
		// Serial.print("\n");

		// Register Config	(0) 1011 0100  0001 1100    hallconf = 1100 gainsel=001 zseries=0
		// Register Config  (0) 0000 0000  0000 1100
		// Register Config	(4) 1011 0100 0001 0100
		// Register Config  (8) 1011 0100 0001 1100      osr=00 dig_filt=111 resXYZ = 100000 osr2=10

	} else _error = 0x4;
	Serial.println();
}

void MLX90393::resetDevice(char *receiveBuffer, uint8_t select, int i2cLine)
{
	// Create pointer to desired I2C line object
	i2c_t3* thisWire = WhichWire(i2cLine);

	uint8_t resetData[7] = {0x80, 0xF0, 0x60, 0x00, 0x0C, 0x00, select};
			 //	[exit, reset, write, set AH, set AL, select addr, axis]
	uint8_t* requestData = i2cCommsWrapper(thisWire, resetData, 0);
}

/*Return number of bytes available, if after a request for read,
 * there is actually something to read*/
uint8_t MLX90393::measureReady(uint8_t i2cLine)
{
	//Choose the right wire object depending on the
	i2c_t3* thisWire = WhichWire(i2cLine);
	/*This is still just a pointer, so when we run commands, we must
	deference it using ->*/

	//Serial.printf("Stuck on i2c line: %d\n", i2cLine);
	//delay(10);
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
	* 0
	* 0
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
	for(uint8_t bufIdx=3; bufIdx < RCVBUFSZ; bufIdx++) {
		receiveBuffer[bufIdx] = thisWire->read(); //xMag msb
    }
	
	thisWire->flush();

	//The buffer is one too big! Woops!
	//receiveBuffer[8] = 0;

	//Everything went fine :)
	return 0;
}

void MLX90393::RequestMeasurement(char *receiveBuffer, char zyxt, int i2cLine)
{
	static const uint8_t select = (0x40)|(zyxt);

	/*STAY CALM. It's not as bad as it looks.
	Before, we looked at the i2cLine number and if it was 0, we did a bunch of
	commands for the wire 0 bus, if it was 1, we copy-pasted the same but for Wire1 etc etc.

	This made my fingers hurt. Instead, we have a new function, whichWire.
	This returns a POINTER to the correct Wire object. So in other words, if it's zero,
	it returns the address of Wire, for 1 it returns address of Wire1 etc...
	All the -> does it derefernce that pointer, aka go to that address and
	perform beginTransmsion on that object not the address.*/
	
	/*Serial.print("ADDRESS: 0x");
	Serial.println(_I2CAddress, HEX);
	
	Serial.print("BACKUP ADDRESS: 0x");
	Serial.println(backup_address, HEX);*/
	if (_I2CAddress > 0x13) _I2CAddress = backup_address;

	WhichWire(i2cLine)->beginTransmission(_I2CAddress);	// Start I2C Transmission
	WhichWire(i2cLine)->write(select);					// Read measurement command (ZXYT = 1111)
	WhichWire(i2cLine)->sendTransmission(I2C_NOSTOP);	// Stop I2C Transmission
}

void MLX90393::AsyncRxFill(char *receiveBuffer, char zyxt, int i2cLine){

	// Create pointer to I2C line objects
	i2c_t3* thisWire = WhichWire(i2cLine);

	while(!(thisWire->done()));
	thisWire->sendRequest(_I2CAddress, 7, I2C_STOP);		// Request 7 bytes of data
	//Serial.println("Have requested!");
}

void MLX90393::GetMeasurement(char *receiveBuffer, char zyxt, int i2cLine)
{
	uint8_t select = (0x40)|(zyxt);

	// Create pointer to desired I2C line object
	i2c_t3* thisWire = WhichWire(i2cLine);

	thisWire->beginTransmission(_I2CAddress);	// Start I2C Transmission
	thisWire->write(select);						// Read measurement command (ZXYT = 1111)
	thisWire->endTransmission();					// Stop I2C Transmission
	thisWire->requestFrom(_I2CAddress, 7);		// Request 7 bytes of data
	//delay(50);
	if (thisWire->available() == 7)
	{
		receiveBuffer[0] = thisWire->read(); //Status byte
		receiveBuffer[1] = 0x00; //Wire.read(); //tMag msb
		receiveBuffer[2] = 0x00; //Wire.read(); //tMag lsb
		receiveBuffer[3] = thisWire->read(); //xMag msb
		receiveBuffer[4] = thisWire->read(); //xMag lsb
		receiveBuffer[5] = thisWire->read(); //yMag msb
		receiveBuffer[6] = thisWire->read(); //yMag lsb
		receiveBuffer[7] = thisWire->read(); //zMag msb
		receiveBuffer[8] = thisWire->read(); //zMag lsb
	}
	else {
		Serial.println("*** L0 No Wires available: Read measurements failed.");
		resetDevice(receiveBuffer, select, i2cLine);
	}
}

/* Function to perform comms
*/
uint8_t* MLX90393::i2cCommsWrapper(i2c_t3* wire, uint8_t* data, int request)
{
	// Begin comms transmission to desired i2c channel
	wire->beginTransmission(_I2CAddress);

	// For every byte in data array, send data
	for (size_t i = 0; i < sizeof(data); i++) {
		wire->write(data[i]);
	}
	// End transmission and request for return bytes
	wire->endTransmission();

	//delay(50);

	// Initialise return data as empty array
	uint8_t *dataReceived;

	if (request == 0) {
		return dataReceived;
	} else {
		wire->requestFrom(_I2CAddress, request);
		// fill request data with readings (byte 0 is error)
		if (wire->available() == request) {
			// No error
			for (int i = 0; i < request; i++) {
				dataReceived[i] = wire->read();
				// delay(5);
			}
		} else {
			Serial.printf("error\n");
			// // If no return bytes, return error
			//
			// uint8_t requestType = (data[0]&0xF0) >> 8;
			//
			// switch (requestType) {
			// 	case 0x6:						// WRITE ERROR
			// 		dataReceived[0] = 0x2;
			// 		break;
			// 	case 0x1:						// BURST MODE ERROR
			// 		dataReceived[0] = 0x3;
			// 		break;
			// 	case 0x5:						// READ Error
			// 		dataReceived[0] = 0x4;
			// 		break;
			// 	default:
			// 		dataReceived[0] = 0x0;
			// }
		}

		return dataReceived;
	}
}

void MLX90393::printError(uint8_t error)
{
	switch (error) {
	case 0x00:
		Serial.print("");
		break;

	case 0x01:
		Serial.print("*** Device Reset Error.\n");
		while(1);
		break;

	case 0x02:
		Serial.print("*** Register Setup Error.\n");
		while(1);
		break;

	case 0x03:
		Serial.print("*** Burst-Mode Setup Error.\n");
		break;

	case 0x04:
		Serial.print("*** Address Selection Error.\n");
		break;

	default:
		break;
	}
}

i2c_t3* MLX90393::WhichWire(uint8_t wireNo)
{
	switch(wireNo) {
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
int MLX90393::getAddress()
{
	//if (_I2CAddress != backup_address) _I2CAddress = backup_address;
	
	return _I2CAddress;
}
