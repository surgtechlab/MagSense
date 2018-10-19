/*Copyright 2018 University of Leeds, Pete Culmer, Max Houghton, Chris Adams

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.*/

#ifndef MLX90393_H
#define MLX90393_H

#include <Arduino.h>
#include <i2c_t3.h>

#define NODE_N_BYTE 6 //Number of bytes per node
#define RCVBUFSZ 9

//#include <cstdint>

// #include <DateTime.h>

/**	@file MLX90393.h
 *	@brief MLX90393 Class used for comms with the MLX90393 device over the I2C bus on Arduino platform.
 *	@author Max Houghton
 *	@data 05/06/2018
 */
class MLX90393
{
public:

	/** [Constructor] Create MLX90393 instance.
	 */
	MLX90393();
	~MLX90393();

/* ********** COMMUNICATION FUNCTIONS ********** */

	/** Initialise by exiting any previously set modes and resetting the device.
	 *	@param receiveBuffer Returns a status byte.
	 *	@param Address I2C Address of MLX90393 device for comms on the I2C bus.
	 */
	void init(char *receiveBuffer, int address, int i2cLine);

	/** Configure device by setting gain, hall_config and address register.
	 *	@param receiveBuffer Returns a status byte.
	 */
	void configure(char *receiveBuffer, int i2cLine, uint8_t GAIN_SEL, uint8_t RES_XYZ, uint8_t DIG_FILT, uint8_t OSR);

	/** Begin burst mode in order to have device continuously send data.
	 *	@param receiveBuffer Returns a status byte.
	 *	@param zyxt Byte to specify which axes are to be read (1110 -> reading Z, Y and X).
	 */
	void startBurstMode(char *receiveBuffer, char zyxt, int i2cLine);

	/*	Reset device on measurement failure.
	 *	@param receiveBuffer Returns a status byte.
	 */
	void resetDevice(char *receiveBuffer, uint8_t select, int i2cLine);

	/** Read data measured by the device.
	 *	@param receiveBuffer Pointer to data packet (9 bytes -> Status + 2*(T+X+Y+Z)).
	 *	@param zyxt Byte to specify which axes are to be read (1110 -> reading Z, Y and X).
	 */
	void ReadMeasurement(char *receiveBuffer, char zyxt, int i2cLine);

	/** Pair of functions to perform async read
	**/
/* 	void RequestMeasurement(char *receiveBuffer, char zyxt, int i2cLine);*/

	void GetMeasurement(char *receiveBuffer, char zyxt, int i2cLine); 

	
/* ********** DATA DISPLAY FUNCTIONS ********** */

	/** Print raw data to serial port.
	 *	@param receiveBuffer Pointer to data packet (9 bytes -> Status + 2*(T+X+Y+Z)).
	 *	@param format Specify binary (0) or hexadecimal (1) data format.
	 */
	void printRawData(char *receiveBuffer, int format);

	/** Print formatted ASCII data to serial port.
	 *	@param receiveBuffer Pointer to data packet (9 bytes -> Status + 2*(T+X+Y+Z)).
	 */
	void printASCIIData(char *receiveBuffer);


	/** Print data in a format to be displayed graphically
	*	@param receiveBuffer Pointer to data packet (9 bytes -> Status + 2*(T+X+Y+Z)).
	*/
	void printChartData(char *receiveBuffer);

/* ********** COMMUNICATION FUNCTIONS ********** */

	/** Start timer.
	 */
	void startTimer(void);

	/** Print time taken between readings.
	*/
	void printTimeElapsed(void);
	
/* *********** Asynchronous i2c functions *** */
	void RequestMeasurement(char *receiveBuffer, char zyxt, int i2cLine);
	uint8_t takeMeasure(char *receiveBuffer, int i2cLine);
	uint8_t measureReady(uint8_t i2cLine);
	
	

private:

	i2c_t3* WhichWire(uint8_t wireNo);

	/** Print error description
	 *	@param error byte specifying nature of the error received
	 */
	void printError(uint8_t error);

	// Address to be used to commincate with MLX90393 device.
	int _I2CAddress;
	
	int verbosefb = 1;

	uint8_t _error;

	// Variable to hold the times.
	float start, time;
};

#endif /* MLX90393_h */
