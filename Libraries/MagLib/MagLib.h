/*Copyright 2018 University of Leeds, Pete Culmer, Max Houghton, Chris Adams

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/


#ifndef MAGLIB_H
#define MAGLIB_H

#include <SPI.h>
#include <Time.h>
#include <SoftwareSerial.h>
#include "MLX90393.h"
#include "RN487x_BLE.h"
#include "SdFat.h"
#include "sdios.h"


// ****** Sensor System Size Definitions ****** //
#define NODE_SINGLE   	10	// 3axes * 2bytes per axis + 4 time bytes
#define NODE_4			28	// 6bytes * 4nodes + 4 time bytes
#define NODE_8			52	// 6bytes * 8nodes + 4 time bytes
#define NODE_12			76	// 6bytes * 12nodes + 4 time bytes
#define NODE_16       	100	// 6bytes * 16nodes + 4 time bytes
#define NODE_32       	196	// 6bytes * 32nodes + 4 time bytes
#define NODE_64       	388	// 6bytes * 64nodes + 4 time bytes
#define NODE_128       	772	// 6bytes * 128nodes + 4 time bytes

#define MAGONE			10  // 3axes * 2bytes per axis + 4 time bytes
#define HAILO     		52	// 6bytes * 8nodes + 4 time bytes
#define MAGTRIX       	100	// 6bytes * 16nodes + 4 time bytes
#define BRACE			100 // 6bytes * 16nodes + 4 time bytes
#define MAGBOARD       	388	// 6bytes * 64nodes + 4 time bytes
#define FOOTPLATE		772	// 6bytes * 128nodes + 4 time bytes

// ****** Platform Definitions ****** //
#define HM10 		1
#define BLE 		2
#define SERIAL 		0

// ***** Debug Definitions ***** //
#define debugSerial	Serial
#define bleSerial	Serial1

// ****** I2C Timings Definitions ***** //
#define SYNC	1
#define ASYNC	2

// Maximuim number of milliseconds to wait for USB serial to get ready on boot
#define SERIAL_TIMEOUT_MS 2500

// ****** Brace+ Definitions ****** //
#define LED_GREEN		27
#define LED_RED			28
#define LED_BLUE		29

// ****** FootPlate Definitions ****** //
#define LED_CONNECT		26
#define LED_LOGGING		25
#define LED_CONTACT		24

// ****** Logging Timing Definitions ****** //
#define ONE_MIN			60
#define TWO_MIN			120
#define FIVE_MIN		300
#define TEN_MIN			600
#define HALF_HOUR		1800
#define HOUR			3600
#define TWO_HOUR		7200
#define FOUR_HOUR		14400

/**	@file MagLib.h
 *	@brief Class for integration with arrays of MLX90393 sensors on the Arduino platform.
 *	@author Max Houghton, Pete Culmer, Chris Adams
 *	@date 16/04/2020
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
	 * 
	 *	@param[in] platform The BLE system being used (HardwareSerial, i.e. RN4781 or SoftwareSerial, i.e. HM10)
	 *	@param[in] DEVICE Specific Mag device to be used (e.g. FOOTPLATE, HAILO, etc)
	 *	@param[in] ledPin Teensy onboard LED pin.
	 *	@param[in] baud Baud rate for serial communication.
	 *	@param[in] _read_sync Specify to make synchronous or asynchronous I2C calls.
	 *	@param[in] _verbosefb Set system feedback to serial port on or off.
	 */
	void setupForClient(int platform,
						int DEVICE,
						int ledPin,
						int baud,
						int _sync_read,
						bool _verbosefb);

	/**	Initalise sensing nodes for specific device
	 * 
	 *	@param[in] DEVICE Device containing
	 *	@param[in] BAUD Baudrate for data communication using Serial port.
	 *	@param[out] buffer Array to return data received by MLXs
	 */
	void initSensingNodesFor(	int DEVICE,
								int BAUD,
								char *buffer);

	/**	Initalise sensor nodes before taking measurements
	 * 
	 *	@param[in] NodeAddress array of 8-bit addresses for MLX90393 devices (ranging from 0x0C to 0x0F)
	 *	@param[out] receiveBuffer array to return data received by MLX's
	 *	@param[in] nMUX	number of multiplexers used in sensor arrays
	 *	@param[in] nI2C number of I2C channels to cycle through when reading array
	 *	@param[in] nAddress number of different addresses to read from (max of 4)
	 *	@param[in] zyxt select desired axes/temperature values to read
	 *	@param[in] i2cLine	the I2C communication channel sensors are on
	 *	@param[in] GAIN_SEL Gain for Hall effect chips data capture.
	 *	@param[in] RES_XYZ Resolution for Hall effect chips.
	 * 	@param[in] DIG_FILT	Digital filter applicable to Hall effect chip ADC.
	 *	@param[in] OSR Hall effect chip ADS oversampling ratio.
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

	/**	Prepare to read a device with a specific number of chips.
	 * 
	 *	@param[in] DEVICE constant defining the desired device; address, mux and i2c lines are set accordingly.
	 *	@param[out] buffer array of chars to return data bytes from sensors
	 */
	void readSensingNodesFor(	int DEVICE,
								char *buffer);

	/**	Read a device with specific number of sensors on specified mux and I2C lines
	 * 
	 *	@param[out] buffer array to return data received by MLX's
	 *	@param[in] zyxt select desired axes/temperature values to read
	 *	@param[in] nMUX	number of multiplexers used in sensor arrays
	 *	@param[in] nI2C number of I2C channels to cycle through when reading array
	 *	@param[in] nAddress number of different addresses to read from (max of 4)
	 */
	void readSensingNodes(	char *buffer,
							char zyxt,
							uint8_t nMUX,
							uint8_t nI2C,
							uint8_t nAddress);

	/**	Reset, initalize and read a specific node on any sensor or array.
	 * 
	 *	@param[out] buffer array of chars to return data from sensors.
	 *	@param[in] zyxt selected desired axes/temperature values to read.
	 *	@param[in] address address of specific node to test.
	 *	@param[in] i2cID I2C address of the desired node.
	 *	@param[in] muxID Multiplexer channel of the desired node.
	 */
	void testNode(	char *buffer,
					char zyxt,
					uint8_t address,
					uint8_t i2cID,
					uint8_t muxID);

	/**	Read a specific node on the sensor platform.
	 * 
	 *	@param[in] buffer array of chars to return data from sensors.
	 *	@param[in] zyxt selected desired axes/temperature values to read.
	 *	@param[in] address address of specific node to test.
	 *	@param[in] i2cID I2C address of the desired node.
	 *	@param[in] muxID Multiplexer channel of the desired node.
	 */
	void readNode(	char *buffer,
					char zyxt,
					uint8_t address,
					uint8_t i2cID,
					uint8_t muxID);


	/** ********** CLINENT FUNCTIONS ********** */

	/**	Begin main communication interface with client application.
	 * 
	 *	@param[in] DEVICE Specific Mag device to interface client with.
	 *	@param[out] buffer Array of bytes containing data from Hall effect chips.
	 */
	void comms_MainMenu(int DEVICE, char *buffer);

	/** ********** GLOBAL FUNCTIONS ********** */

	/** Print raw data to serial port.
	 * 
	 *	@param[in] buffer Packet of data containing info from sensors
	 *	@param[in] format Specify binary (0) or hexadecimal (1) data format.
	 *	@param[in] size Size of data packet.
	 */
	void printRawData(char *buffer, int format, int size);

	/** Print formatted data to serial port.
	 * 
	 *	@param[in] buffer Packet of data containing info from sensors.
	 *	@param[in] size	Size of data packet
	 */
	void printASCIIData(char *buffer, int size);

	/**	Enable detailed feedback and error messages from system during runtime.
	 */ 
	void EnableVerboseFeedback();

	/**	Disable detailed feedback and use error codes.
	 */
	void DisableVerboseFeedback();

private:

	/** ********** CLINENT FUNCTIONS ********** */ 

	/** Initiase the system for a specific number of sensor nodes.
	 * 
	 *	@param[in] DEVICE device to interface with.
	 *	@param[out] buffer array of chars to return data from sensors.
	 */
	void System_Initialise(int DEVICE, char *buffer);

	/** Stream data to the client application.
	 * 
	 *	@param[in] DEVICE device to interface with.
	 *	@param[in] buffer array of chars to return data from sensors.
	 */
	void System_Stream(int DEVICE, char *buffer);
	
	/**	Log data over a period of time at specific intervals.
	 * 
	 * 	@param delta Time between adjacent sensor reads in seconds.
	 *	@param period Total time to read sensors for in seconds.
	 *	@param DEVICE device to interface with.
	 *	@param buffer array of chars to return data from sensors.
	 */
	void System_LongTerm_Logging(int delta, int period, int DEVICE, char *buffer);

	/** Read the sensors and write to SD.
	 */
	void SD_datalog();

 	/**	Upload a specific file to the client application from the SD card.
	 *	
	 *	@details Filename is requested from the client using specified comms platform.
	 */
	void SD_upload();

	/** Initiase a specific I2C communication channel
	 * 
	 *  @param[in] i2cLine I2C Channel to be initialised.
	 */
	void initI2C(int i2cLine);

	/** Initialise BLE chip to perform wireless communication with client device.
	 * 
	 * @param[in] Device name to be advertised to nearby devices.
	 * @return Boolean value specifying successful initialisation or failure.
	 */
	bool initBLE(const char* name);

	/** Set the multiplexer value to channel data to desired section of array.
	 * 
	 * 	@details can be overloaded to use in loops and be used with a flexible number of muxes.
	 * 	@param[in] muxSet Specific multiplexer port to open.
	 * 	@return success or fail indicator.
	 */
	uint8_t setMux(unsigned int muxSet);

	/** List all the files back to the client.
	 * 
	 *  @details Taken from Arduino.com
	 * 	@param[in] dir Directory to search and list files from.
	 * 	@param[in] numTabs Number of sub-directories to search (used internally).
	 *	@return number of files.
	 */
	int getFiles(File dir, int numTabs);

	/** Point to wire buses to simplify communication code.
	 * 
	 *	@param[in] wireNo Desired I2C channel to communicate on.
	 *	@return i2c_t3 Pointer to I2C channel (Wire) object.
	 */
	i2c_t3* WhichWire(uint8_t wireNo);

	/**	List all menu functions to serial port for basic user help.
	 */
	void menu_help();

	/**	Print status of SD card to specified comms port.
	 */ 
	void comms_SD_Status();

	/** Print an error to the serial port function.
	 * 
	 * 	@param[in] err String containing error message to be printed.
	 */
	void MagError(const char *err);

	// *********** SD Card Config ************* //

	/** Size of read/write buffer in bytes */
	static const size_t BUF_SIZE = 1024;
	/** Size logging file in MB where MB = 1,000,000 bytes. */
	const uint32_t FILE_SIZE_MB = 1;
	/** File size in bytes.	*/
	const uint32_t FILE_SIZE = 1000000UL*FILE_SIZE_MB;

	// ***** System I2C Pin Definitions ***** //
	#if defined(__MK66FX1M0__)
	// Pins on Teensy 3.6 board to be used for I2C communication.
		i2c_pins BRD_I2C_PINS[4] = {
			I2C_PINS_18_19,
			I2C_PINS_37_38,
			I2C_PINS_3_4,
			I2C_PINS_56_57
		};
	#elif defined(__MK20DX256__)
	// Pins on Teensy 3.2 board to be used for I2C communication.
		i2c_pins BRD_I2C_PINS[2] = {
			I2C_PINS_18_19,
			I2C_PINS_29_30
		};
	#endif

	/** Buffer to receive raw data from each MLX device. */
	char receiveBuffer[9];	
	
	/** Used to denote start of binary data packet. */
	char packet_header[5]; 	

	/** An array of objects that contain the correct addressing for each node. */
	MLX90393 nodeAddrObj[8];

	/** Pins specifying enable multiplexer bus [S1 S0]. */
	int _mux[2] = {11, 10};

	/** Pins specifying multiplexer data bus. [A3 A2 A1 A0]. */
	int _muxSelect[4];

	/** LED Indicator pin status. */
	bool status_led = false;

	/** Timing variables */
	unsigned long t_start, t_finish;

	/** System Parameters */
	int NMUX;
	int NI2C;
	int PLATFORM;
	int DEVICE;
	int BAUD;
	int LED;
	int mux_bytes;
	int i2c_bytes;
	int sync_read = 0;
	bool verbosefb = false;
	bool sys_connect = false;

	// SD Card properties
	char SDbuf[BUF_SIZE];

	// Data file name
	char filename[64] = "N64_0XYZ.dat";

	// Initiate file system
	SdFatSdioEX sd;
	// Initiate test file
	SdFile file;

	// Bluetooth device
	//SoftwareSerial ble_ss;
};

#endif /* MAGLIB_H */
