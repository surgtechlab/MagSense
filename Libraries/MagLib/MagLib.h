/*Copyright 2018 University of Leeds, Pete Culmer, Max Houghton, Chris Adams

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/


#ifndef MAGLIB_H
#define MAGLIB_H

//#include <SD.h>
#include <SPI.h>
#include <SoftwareSerial.h>
#include "MLX90393.h"
#include "SdFat.h"
#include "sdios.h"
#include "FreeStack.h"


#define NODE_SINGLE   	10	// 3axes * 2bytes per axis + 4 time bytes
#define NODE_FOUR				28	// 6bytes * 4nodes + 4 time bytes
#define NODE_8					52	// 6bytes * 8nodes + 4 time bytes
#define NODE_16       	100	// 6bytes * 16nodes + 4 time bytes
#define NODE_32       	196	// 6bytes * 32nodes + 4 time bytes
#define NODE_64       	388	// 6bytes * 64nodes + 4 time bytes
#define NODE_128       	772	// 6bytes * 128nodes + 4 time bytes

#define HAILO     		28	// 6bytes * 4nodes + 4 time bytes
#define MAGTRIX       	100	// 6bytes * 16nodes + 4 time bytes
#define MAGBOARD       	388	// 6bytes * 64nodes + 4 time bytes

#define NADDR			4

#define BTSerial Serial1 //This serial port is linked to the BT transmitter


// *********** SD Card Config ************* //
// Size of read/write buffer
const size_t BUF_SIZE = 512; //bytes
// Size logging file in MB where MB = 1,000,000 bytes.
const uint32_t FILE_SIZE_MB = 5;
// File size in bytes.
const uint32_t FILE_SIZE = 1000000UL*FILE_SIZE_MB; //unsigned long constant

/**	@file MagLib.h
	@brief Class for integration with arrays of MagOne sensors on the Arduino platform.
	@author Max Houghton, Pete Culmer
	@data 10/07/2018
*/
class MagLib
{
public:

	/**	Default constructor. Instanciates MagLib object.
	*/
	MagLib();

	/**	Default deconstructor
	*/
	~MagLib();

	void setupForClient(int ledPin, int SerialBaud, int BluetoothBaud);

	void initI2C(int i2cLine);

	/*	Initalise sensing nodes for specific device
	 *	@param DEVICE Device containing
	 *	@param buffer Array to return data received by MLXs
	 */
	void initSensingNodesFor(unsigned DEVICE, int BAUD, char *buffer);

	/*	Initalise sensor nodes before taking measurements
	 *	@param NodeAddress array of 8-bit addresses for MLX90393 devices (ranging from 0x0C to 0x0F)
	 *	@param receiveBuffer array to return data received by MLX's
	 *	@param nMUX	number of multiplexers used in sensor arrays
	 *	@param nI2C number of I2C channels to cycle through when reading array
	 *	@param nAddress number of different addresses to read from (max of 4)
	 *	@param zyxt select desired axes/temperature values to read
	 *	@param i2cLine	the I2C communication channel sensors are on
	 */
	void initSensingNodes(	uint8_t *NodeAddresses,
							char *_receiveBuffer,
							uint8_t nMUX,
							uint8_t nI2C,
							uint8_t nAddress,
							char zyxt,
							uint8_t GAIN_SEL,
							uint8_t RES_XYZ,
							uint8_t DIG_FILT,
							uint8_t OSR);

	/*	Prepare to read a desired number of sensors
	 *	@param DEVICE constant defining the desired device.
	 *	Set	address, mux and i2c lines accordingly.
	 *	@param buffer array of chars to return data bytes from sensors
	 */
	void readSensingNodesFor(unsigned DEVICE, char *buffer);

	/*	Read a number of sensors on specified mux and I2C lines
	 *	@param buffer array to return data received by MLX's
	 *	@param zyxt select desired axes/temperature values to read
	 *	@param nMUX	number of multiplexers used in sensor arrays
	 *	@param nI2C number of I2C channels to cycle through when reading array
	 *	@param nAddress number of different addresses to read from (max of 4)
	 */
	void readSensingNodes(	char *buffer,
							char zyxt,
							uint8_t nMUX,
							uint8_t nI2C,
							uint8_t nAddress);

	/*	Test a specific node on any sensor or array
	 *	@param buffer array of chars to return data from sensors
	 *	@param zyxt selected desired axes/temperature values to read
	 *	@param address address of specific node to test
	 *	@param i2cID I2C address of the desired node
	 *	@param muxID Multiplexer channel of the desired node
	 */
	void testNode(char *buffer, char zyxt, uint8_t address, uint8_t i2cID, uint8_t muxID);

/* ********** LabVIEW CLINENT FUNCTIONS ********** */

	void comms_MainMenu();
	void comms_EstablishContact();
	void System_Initialise();
	void comms_SystemCheck();
	void System_Stream();


/* ********** GLOBAL FUNCTIONS ********** */

	/** Print raw data to serial port.
		@param buffer Packet of data containing info from sensors
		@param format Specify binary (0) or hexadecimal (1) data format.
		@param size Size of data packet.
	*/
	void printRawData(char *buffer, int format, int size);

	/** Print formatted data to serial port.
		@param buffer Packet of data containing info from sensors
		@param size	Size of data packet
	*/
	void printASCIIData(char *buffer, int size);

	/**	Initialise SD Card to record data from sensors
	*/
	void initSDCard();

	/** Print data to SD card for external memory
		@param buffer Packet of data containing info from sensors.
		@param size Size of data packet
	*/
	void printToSDCard(char *buffer, int size);

	void SDCardStatus();

	/**	Close SD Card and stop writing to file.
	 */
	void closeSDCard();

	/** Print time taken to get 1000 readings - 4 Node
	*/
	void TimeMeasurement(float TimeTaken);

	//Error function
	void MagError(char *err);

private:

	void test_SD_datalog();

	void comms_SD_Status();

	void SD_datalog();

	void SD_upload();

	/*  can be overloaded to use in loops and
	* be used with a flexible number of muxes */
	uint8_t setMux(unsigned int muxSet);

	char mag_buffer[MAGBOARD];

	char receiveBuffer[9];	/** Buffer to receive raw data from each MLX device. */
	char packet_header[5]; // Used to denote start of binary data packet

	//An array of objects that contain the correct addressing for each node
	MLX90393 nodeAddrObj[NADDR];
	//[0] is I2C Line ? Address 1
	//[1] is I2C Line ? Address 2 ...

	int _mux[2] = {10, 11};		/** Pins specifying single multiplexerbus [S1 S0] */

	bool status_led = false;

	i2c_pins I2C_PINS[4] = {I2C_PINS_18_19, I2C_PINS_37_38, I2C_PINS_3_4, I2C_PINS_16_17};

	//Be able to index wire buses to make it easier
	i2c_t3* WhichWire(uint8_t wireNo);

	int NMUX;

	int _ledPin;

	unsigned long t_old = 0;

	// SD Card properties
	char SDbuf[BUF_SIZE];
	char filename[64] = "M064_XYZ.dat"; //base filename

	// Initiate file system
	SdFatSdioEX sd;
	// Initiate test file
	SdFile file;
};

#endif /* MAGLIB_H */
