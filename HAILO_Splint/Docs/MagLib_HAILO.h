#ifndef MAGLIB_H
#define MAGLIB_H

#include <cstdint>
#include <SD.h>
#include <SPI.h>
#include "MLX90393.h"

#define BINARY 		0
#define HEXADECIMAL 	1
#define NODE_SINGLE   	8	// 2 + 6
#define NODE_FOUR     	26	// 2 + 6*4
#define NODE_16       	98	// 2 + 6*16
#define NODE_32       	194	// 2 + 6*32
#define NODE_64       	386	// 2 + 6*64

/**	@file MagLib.h
	@brief Class for integration with arrays of MagOne sensors on the Arduino platform.
	@author Max Houghton
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

/* ********** SINGLE SENSOR CONTROL ********** */

	/**	Initialise single node sensor
	 	@param address I2C Address for sensor
	 	@param receiveBuffer Buffer to hold status byte
	 	@param zytx Selection byte to specify axes to read (0xE -> XYZ)
	 */
	void initSingleNode(uint16_t address, char *buffer, char zyxt);

	/** Read data current measured by the device.
		@param receiveBuffer Pointer to data packet (9 bytes -> Status + 2*(T+X+Y+Z)).
		@param zyxt Byte to specify which axes are to be read (1110 -> reading Z, Y and X).
	*/
	void readSingleNode(char *buffer, char zyxt);

/* ********** FOUR SENSOR CONTROL ********** */

	/** Initialise four node sensor array
	 	@param addressPackage I2C Addresses for sensors; 4x 8bit package
	 	@param receiveBuffer Buffer to hold status byte
	 	@param zytx Selection byte to specify axes to read (0xE -> XYZ)
	 */
	void initFourNode(uint32_t addressPackage, char *receiveBuffer, char zyxt);

	/** Read data current measured by the device.
		@param receiveBuffer Pointer to data packet (9 bytes -> Status + 2*(T+X+Y+Z)).
		@param zyxt Byte to specify which axes are to be read (1110 -> reading Z, Y and X).
	*/
	void readFourNodes(char *buffer, char zyxt);

/* ********** 16 NODE SENSOR CONTROL ********** */

	/*	Initialise 16 node sensor array
		@param addressPackage I2C Addresses for sensors; 4x 8bit package
		@param receiveBuffer Buffer to hold status byte
		@param zytx Selection byte to specify axes to read (0xE -> XYZ)
	*/
	void init16Nodes(uint32_t addressPackage, char *receiveBuffer, char zyxt, int *mux);

	/** Read data current measured by the device.
		@param receiveBuffer Pointer to data packet (9 bytes -> Status + 2*(T+X+Y+Z)).
		@param zyxt Byte to specify which axes are to be read (1110 -> reading Z, Y and X).
	*/
	void read16Nodes(char *buffer, char zyxt);
	

/* ********** GLOBAL FUNCTIONS ********** */

	/** Print raw data to serial port.
		@param buffer Packet of data containing info from sensors
		@param format Specify binary (0) or hexadecimal (1) data format.
		@param size Size of data packet.
	*/
	void printRawData(char *buffer, char *buildBuffer, char *compositionBuffer, int format, int size);

	/** Print formatted data to serial port.
		@param buffer Packet of data containing info from sensors
		@param size	Size of data packet
	*/
	void printASCIIData(char *buffer, int size);

	/**	Initialise SD Card to record data from sensors
		@param chipSelect Pins on Arduino board connected to SD Card slot.
	*/
	void initSDCard(int chipSelect);

	/** Print data in a format accessible with various Bluetooth applications.
		@param buffer Packet of data containing info from sensors.
		@param size Size of data packet
	*/
	void printToSDCard(char *buffer, int size);

	/**	Close SD Card and stop writing to file.
	 */
	void closeSDCard();

	/** Print time taken to get 1000 readings - 4 Node */

	void TimeMeasurement(float TimeTaken);

private:

	/**	Set digital output pins on Arduino connected to Multiplexer SELECT pins
		@param muxBus Array of HIGH/LOW values for SELECT pins
		@param index specify which multiplexer is to be accessed.
	 */
	void setMux(int *muxBus, int index);

	char receiveBuffer[9];	/** Buffer to receive raw data from each MLX device. */

	File file;			/** File object used to write data to SD card. */

	MLX90393 _device1;	/** MLX90393 device to take readings */
	MLX90393 _device2;	/** MLX90393 device to take readings */
	MLX90393 _device3;	/** MLX90393 device to take readings */
	MLX90393 _device4;	/** MLX90393 device to take readings */

	uint8_t _Address1;	/** First I2C address used for communcations */
	uint8_t _Address2;	/** Second I2C address used for communcations */
	uint8_t _Address3;	/** Third I2C address used for communcations */
	uint8_t _Address4;	/** Fourth I2C address used for communcations */

	int _mux1[2];		/** Pins specifying single multiplexer bus [S1 S0] */
	int _mux2[1][2];	/** Pins specifying dual multiplexer bus [M0][S1 S0] */
	int _mux3[2][2];	/** Pins specifying quad multiplexer bus [M0 M1][S1 S0] */

	bool SDCard;		/** Variable to ensure SD card is operating normally. */

};

#endif /* MAGLIB_H */
