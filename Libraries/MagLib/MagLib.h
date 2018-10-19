/*Copyright 2018 University of Leeds, Pete Culmer, Max Houghton, Chris Adams

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/


#ifndef MAGLIB_H
#define MAGLIB_H

#include <SD.h>
#include <SPI.h>
#include "MLX90393.h"

#define BINARY 			0
#define HEXADECIMAL 	1
#define NODE_SINGLE   	8	// 2 + 6
#define NODE_FOUR     	26	// 2 + 6*4
#define NODE_16       	100	// 4 + 6*16
#define NODE_32       	198	// 4 + 6*32
#define NODE_64       	388	// 4 + 6*64


#define NMUX 4 //How many muxes?
#define NADDR 4 //How many different addresses?
#define NODE_PER_MUX 16//How many nodes per mux?


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

	void initCommunication(int baudRate, int i2cLine);

/* ********** FOUR SENSOR CONTROL ********** */

	/** Initialise four node sensor array
	 	@param addressPackage I2C Addresses for sensors; 4x 8bit package
	 	@param receiveBuffer Buffer to hold status byte
	 	@param zytx Selection byte to specify axes to read (0xE -> XYZ)
		@param i2cLine I2C Channel to use (-1 for non-teensy boards)
	 */
	void initFourNode(uint32_t addressPackage, char *receiveBuffer, char zyxt, int i2cLine, uint8_t GAIN_SEL, uint8_t RES_XYZ, uint8_t DIG_FILT, uint8_t OSR);


/* ********** 16 NODE SENSOR CONTROL ********** */

	/*	Initialise 16 node sensor array
		@param addressPackage I2C Addresses for sensors; 4x 8bit package
		@param receiveBuffer Buffer to hold status byte
		@param zytx Selection byte to specify axes to read (0xE -> XYZ)
		@param i2cLine I2C Channel to use (-1 for non-teensy boards)
	*/
	void init16Nodes(uint32_t addressPackage, char *receiveBuffer, char zyxt, int *mux, int i2cLine, uint8_t GAIN_SEL, uint8_t RES_XYZ, uint8_t DIG_FILT, uint8_t OSR);

	/** Read data current measured by the device.
		@param buffer Pointer to data packet.
		@param zyxt Byte to specify which axes are to be read (1110 -> reading Z, Y and X)
		@param i2cLine I2C Channel to use (-1 for non-teensy boards)
	*/

/* ********** 64 NODE SENSOR CONTROL ********** */

	/*	Initialise 32 node sensor array
		@param addressPackage I2C Addresses for sensors; 4x 8bit package
		@param receiveBuffer Buffer to hold status byte
		@param zytx Selection byte to specify axes to read (0xE -> XYZ)
		@param mux 2 int array of HIGH/LOW values for multiplexer
	*/
	void init64Nodes(uint32_t addressPackage, char *receiveBuffer, char zyxt, int *mux, uint8_t GAIN_SEL, uint8_t RES_XYZ, uint8_t DIG_FILT, uint8_t OSR);

	/** Read data current measured by 64 nodes.
		@param buffer Pointer to data packet.
		@param zyxt Byte to specify which axes are to be read (1110 -> reading Z, Y and X).
	*/
	void read64Nodes(char *buffer, char zyxt);

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
		@param chipSelect Pins on Arduino board connected to SD Card slot.
	*/
	void initSDCard(int chipSelect);

	/** Print data to SD card for external memory
		@param buffer Packet of data containing info from sensors.
		@param size Size of data packet
	*/
	void printToSDCard(char *buffer, int size);

	/**	Close SD Card and stop writing to file.
	 */
	void closeSDCard();

	/** Print time taken to get 1000 readings - 4 Node
	*/
	void TimeMeasurement(float TimeTaken);
	
	//Error function
	void MagError(char *err);

private:
	/**	Set digital output pins on Arduino connected to Multiplexer SELECT pins
		@param muxBus Array of HIGH/LOW values for SELECT pins
	 */
	 
	void setMux(int S1, int S0);
	
	/* We have a new improved function that can be overloaded to use in loops and
	* be used with a flexible number of muxes */
	uint8_t setMux(unsigned int muxSet);

	char receiveBuffer[9];	/** Buffer to receive raw data from each MLX device. */
	char packet_header[5]; // Used to denote start of binary data packet

	File file;			/** File object used to write data to SD card. */

	//An array of objects that contain the correct addressing for each node
	MLX90393 nodeAddrObj[NADDR];
	//[0] is I2C Line ? Address 1
	//[1] is I2C Line ? Address 2 ...
		
	uint8_t _address1;	/** First I2C address used for communcations */
	uint8_t _address2;	/** Second I2C address used for communcations */
	uint8_t _address3;	/** Third I2C address used for communcations */
	uint8_t _address4;	/** Fourth I2C address used for communcations */

	int _mux[2];		/** Pins specifying single multiplexer bus [S1 S0] */

	bool SDCard;		/** Variable to ensure SD card is operating normally. */
	
	//Be able to index wire buses to make it easier
	i2c_t3* WhichWire(uint8_t wireNo);

};

#endif /* MAGLIB_H */
