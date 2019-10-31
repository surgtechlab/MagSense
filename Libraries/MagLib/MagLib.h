/*Copyright 2018 University of Leeds, Pete Culmer, Max Houghton, Chris Adams

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/


#ifndef MAGLIB_H
#define MAGLIB_H

#include <SPI.h>
#include <Time.h>
#include <SoftwareSerial.h>
#include "RN487x_BLE.h"
#include "MLX90393.h"
#include "SdFat.h"
#include "sdios.h"
#include "FreeStack.h"

// ****** Sensor System Size Definitions ****** //
#define NODE_SINGLE   	10	// 3axes * 2bytes per axis + 4 time bytes
#define NODE_FOUR		28	// 6bytes * 4nodes + 4 time bytes
#define NODE_8			52	// 6bytes * 8nodes + 4 time bytes
#define NODE_12			76	// 6bytes * 12nodes + 4 time bytes
#define NODE_16       	100	// 6bytes * 16nodes + 4 time bytes
#define NODE_32       	196	// 6bytes * 32nodes + 4 time bytes
#define NODE_64       	388	// 6bytes * 64nodes + 4 time bytes
#define NODE_128       	772	// 6bytes * 128nodes + 4 time bytes

#define MAGONE			10  // 3axes * 2bytes per axis + 4 time bytes
#define HAILO     		76	// 6bytes * 12nodes + 4 time bytes
#define MAGTRIX       	100	// 6bytes * 16nodes + 4 time bytes
#define BRACE			100 // 6bytes * 16nodes + 4 time bytes
#define MAGBOARD       	388	// 6bytes * 64nodes + 4 time bytes
#define FOOTPLATE		772	// 6bytes * 128nodes + 4 time bytes

#define NADDR			8

// ****** Platform Definitions ****** //
#define HM10 	1
#define RN4781 	2
#define USB_COMMS 3

#define ble Serial1

// Maximuim number of milliseconds to wait for USB serial to get ready on boot
#define SERIAL_TIMEOUT_MS 5000

// ****** Brace+ Definitions ****** //
#define LED_GREEN		27
#define LED_RED			28
#define LED_BLUE		29

// *********** SD Card Config ************* //
// Size of read/write buffer
const size_t BUF_SIZE = 1024; //bytes
// Size logging file in MB where MB = 1,000,000 bytes.
const uint32_t FILE_SIZE_MB = 5;
// File size in bytes.
const uint32_t FILE_SIZE = 1000000UL*FILE_SIZE_MB; //unsigned long constant


/**	@file MagLib.h
	@brief Class for integration with arrays of MLX90393 sensors on the Arduino platform.
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
	
	/** Setup device for use with client application.
	 *	@param platform The BLE system being used (HardwareSerial, i.e. RN4781 or SoftwareSerial, i.e. HM10)
	 *	@param DEVICE Specific Mag device to be used (e.g. FOOTPLATE, HAILO, etc)
	 *	@param ledPin Teensy onboard LED pin.
	 *	@param baud Baud rate for serial communication.
	 *	@param _read_sync Specify to make synchronous or asynchronous I2C calls.
	 *	@param _verbosefb Set system feedback to serial port on or off.
	 */
	void setupForClient(int platform, unsigned DEVICE, int ledPin, int baud, bool _read_sync, bool _verbosefb);

	/** Initiase a specific I2C communication channel
	 *  @param i2cLine I2C Channel to be initialised
	 *	Initialise I2C communication channels
	 *	@param i2cLine I2C Channel to be initisalised.
	 */
	void initI2C(int i2cLine);

	/**	Initalise sensing nodes for specific device
	 *	@param DEVICE Device containing
	 *	@param buffer Array to return data received by MLXs
	 */
	void initSensingNodesFor(unsigned DEVICE, int BAUD, char *buffer);

	/**	Initalise sensor nodes before taking measurements
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

	/**	Prepare to read a desired number of sensors
	 *	@param DEVICE constant defining the desired device.
	 *	Set	address, mux and i2c lines accordingly.
	 *	@param buffer array of chars to return data bytes from sensors
	 */
	void readSensingNodesFor(unsigned DEVICE, char *buffer);

	/**	Read a number of sensors on specified mux and I2C lines
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

	/**	Initalise Bluetooth Low Energy device
	 *	@return bool true if initialisation successful.
	 */
	bool initBLE();

	/**	Initialise Brace+ system for use.
	 *	@param buffer Array of bytes containing sensor init information.
	 */
	void initBrace(char *buffer);

	/**	Read Brace+ system.
	 *	@param buffer Array of bytes containing sensor data.
	 */
	void readBrace(char *buffer);

	/**	Test a specific node on any sensor or array.
	 *	@param buffer array of chars to return data from sensors.
	 *	@param zyxt selected desired axes/temperature values to read.
	 *	@param address address of specific node to test.
	 *	@param i2cID I2C address of the desired node.
	 *	@param muxID Multiplexer channel of the desired node.
	 */
	void testNode(char *buffer, char zyxt, uint8_t address, uint8_t i2cID, uint8_t muxID);
	
	/**	Read a specific node on the sensor platform.
	 *	@param buffer array of chars to return data from sensors.
	 *	@param zyxt selected desired axes/temperature values to read.
	 *	@param address address of specific node to test.
	 *	@param i2cID I2C address of the desired node.
	 *	@param muxID Multiplexer channel of the desired node.
	 */
	void readNode(char *buffer, char zyxt, uint8_t address, uint8_t i2cID, uint8_t muxID);

	/** ********** CLINENT FUNCTIONS ********** */

	/**	Begin main communication interface with client application.
	 *	@param DEVICE Specific Mag device to interface client with.
	 *	@param buffer Array of bytes containing data.
	 */
	void comms_MainMenu(unsigned DEVICE, char *buffer);

	/** ********** GLOBAL FUNCTIONS ********** */

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

	/** Print SD Card status and contained files to Serial.
	 */
	void SDCardStatus();

	/**	Close SD Card and stop writing to file.
	 */
	void closeSDCard();

	/** Print an error to the serial port function
	 */
	void MagError(char *err);

private:

 	/** Establish a connection with the client application.
	 */
	void comms_EstablishContact();

	/** Initiase the system for a specific number of sensor nodes.
	 *	@param DEVICE device to interface with.
	 *	@param buffer array of chars to return data from sensors.
	 */
	void System_Initialise(unsigned DEVICE, char *buffer);

	/**	Perform a check on the communication systems.
	 *	@details Calls the test_SD_datalog() and comms_SD_Status() functions.
	 */
	void comms_SystemCheck();

	/** Wireless stream data to the client application.
	 *	@param DEVICE device to interface with.
	 *	@param buffer array of chars to return data from sensors.
	 */
	void System_Stream(unsigned DEVICE, char *buffer);

	/** Test the SD logging feature
	 *  @details Perform a finite number of sensor readings and write to file.
	 *	@details Test the speed and number of writes performed.
	 */
	bool test_SD_datalog();

	/**	Print the size, type and space of the SD card.
	 */
	void comms_SD_Status();

	/** Read the sensors and write to SD.
	 */
	void SD_datalog();

 	/**	Upload a specific file to the client application from the SD card.
	 *	Initialise communication with client application.
	 */
	void SD_upload();
	
	/** Print details about specific node to serial port
	 * 	@param buffer Pointer to char array holding data.
	 *	@param muxID Multiplexer line being used.
	 *	@param i2cID I2C line being used.
	 *	@param nodeID ID of node within I2C bus to be addressed.
	 */
	void debug(char *buffer, uint8_t muxID, uint8_t i2cID, uint8_t nodeID);

	/**  can be overloaded to use in loops and
	* be used with a flexible number of muxes */
	uint8_t setMux(unsigned int muxSet);

	/** List all the files back to the client.
	 *  @details Taken from Arduino.com
	 *	@return number of files.
	 */
	int getFiles(File dir, int numTabs);

	/**	List all menu functions to serial port for basic user help.
	 */
	void menu_help();

	// Custom GATT Profile for BLE Data Streaming
	const char* magServiceUUID = "AD11CF40063F11E5BE3E0002A5D5C51B"; // Custom private service UUID
	const char* magCharacteristicUUID = "BF3FBD80063F11E59E690002A5D5C501";  // Custom characteristic GATT
	const uint8_t magCharacteristicLen = 100;    // Data length (bytes)
	const uint8_t magHandle = 0x75;
	char *magPayload;

	char receiveBuffer[9];	/** Buffer to receive raw data from each MLX device. */
	char packet_header[5]; 	// Used to denote start of binary data packet

	//An array of objects that contain the correct addressing for each node
	MLX90393 nodeAddrObj[NADDR];

	// Pins specifying single multiplexerbus [S1 S0]
	int _mux[2] = {10, 11};

	// LED Indicator pin status 
	bool status_led = false;

	// Pins on Teensy board to be used for I2C communication.
	i2c_pins I2C_PINS[4] = {
		I2C_PINS_18_19,
		I2C_PINS_37_38,
		I2C_PINS_3_4,
		I2C_PINS_56_57
	};

	/** Point to wire buses to simplify communication code.
	 *	@param wireNo Desired I2C channel to communicate on.
	 *	@return i2c_t3 Pointer to I2C channel (Wire) object.
	 */
	i2c_t3* WhichWire(uint8_t wireNo);

	// System Parameters
	int NMUX;
	int PLATFORM;
	int DEVICE = 0;
	int BAUD;
	int LED;
	
	bool sync_read = false;
	bool verbosefb = false;

	// SD Card properties
	char SDbuf[BUF_SIZE];

	// Data file name
	char filename[64] = "0000.dat";

	// Initiate file system
	SdFatSdioEX sd;
	// Initiate test file
	SdFile file;

	// Bluetooth device
	//SoftwareSerial ble_ss;
};

#endif /* MAGLIB_H */
