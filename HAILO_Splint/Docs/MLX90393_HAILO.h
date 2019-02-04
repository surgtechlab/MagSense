#ifndef MLX90393_H
#define MLX90393_H

#include <Arduino.h>
#include <Wire.h>

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

	/** Initialise by exiting any previously set modes and resetting the device.
	 *	@param receiveBuffer Returns a status byte.
	 *	@param Address I2C Address of MLX90393 device for comms on the I2C bus.
	 */
	void init(char *receiveBuffer, int address);

	/** Configure device by setting gain, hall_config and address register.
	 *	@param receiveBuffer Returns a status byte.
	 */
	void configure(char *receiveBuffer);

	/** Begin burst mode in order to have device continuously send data.
	 *	@param receiveBuffer Returns a status byte.
	 *	@param zyxt Byte to specify which axes are to be read (1110 -> reading Z, Y and X).
	 */
	void startBurstMode(char *receiveBuffer, char zyxt);

	/*	Reset device on measurement failure.
	 *	@param receiveBuffer Returns a status byte.
	 */
	void resetDevice(char *receiveBuffer, uint8_t select);

	/** Read data measured by the device.
	 *	@param receiveBuffer Pointer to data packet (9 bytes -> Status + 2*(T+X+Y+Z)).
	 *	@param zyxt Byte to specify which axes are to be read (1110 -> reading Z, Y and X).
	 */
	void ReadMeasurement(char *receiveBuffer, char zyxt);

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

	/** Start timer.
	 */
	void startTimer(void);

	/** Print time taken between readings.
	*/
	void printTimeElapsed(void);

private:
	
	/** Print error description
	 *	@param error byte specifying nature of the error received
	 */
	void printError(uint8_t error);

	// Address to be used to commincate with MLX90393 device.
	int _I2CAddress;

	uint8_t _error;

	// Variable to hold the times.
	float start, time;
};

#endif /* MLX90393_h */