#include "MagLib.h"

MagLib::MagLib()
{

}

MagLib::~MagLib()
{

}

void MagLib::initCommunication(int baudRate, int i2cLine)
{
	Serial.begin(baudRate);
	
	delay(1000);
	
	switch (i2cLine) {
	case 0:
		Wire.begin(I2C_MASTER, 0x00, I2C_PINS_18_19, I2C_PULLUP_EXT, 400000);
		Wire.setDefaultTimeout(2000);
		Serial.print("Init i2c:0 \n");
		break;

	case 1:
		Wire1.begin(I2C_MASTER, 0x00, I2C_PINS_37_38, I2C_PULLUP_EXT, 400000);
		Wire1.setDefaultTimeout(200000);
		Serial.print("Init i2c:1 \n");
		break;

	case 2:
		Wire2.begin(I2C_MASTER, 0x00, I2C_PINS_3_4, I2C_PULLUP_EXT, 400000);
		Wire2.setDefaultTimeout(200000);
		Serial.print("Init i2c:2 \n");
		break;

	case 3:
		Wire3.begin(I2C_MASTER, 0x00, I2C_PINS_56_57, I2C_PULLUP_EXT, 400000);
		Wire3.setDefaultTimeout(200000);
		Serial.print("Init i2c:3 \n");
		break;

	default:
		Wire.begin();
		break;
	}
}

void MagLib::initSingleNode(uint16_t address, char *buffer, char zyxt, int i2cLine)
{
	
	uint8_t GAIN_SEL = 0x00;  // 
	uint8_t RES_XYZ = 0x2A;  // 0x15=gain 1
	uint8_t DIG_FILT = 0x1;
	uint8_t OSR = 0x0;
	
	device1.init(receiveBuffer, address, i2cLine);
	device1.configure(receiveBuffer, i2cLine, GAIN_SEL, RES_XYZ, DIG_FILT, OSR );
	device1.startBurstMode(receiveBuffer, zyxt, i2cLine);

	buffer[0] = receiveBuffer[0];	// Status byte
}

void MagLib::readSingleNode(char *buffer, char zyxt)
{
	unsigned long time = millis();

	buffer[0] = (time & 0xFF00) >> 8;	// T msb
	buffer[1] = (time & 0xFF);			// T lsb

	device1.ReadMeasurement(receiveBuffer, zyxt, 0);

	buffer[2] = receiveBuffer[3];
	buffer[3] = receiveBuffer[4];
	buffer[4] = receiveBuffer[5];
	buffer[5] = receiveBuffer[6];
	buffer[6] = receiveBuffer[7];
	buffer[7] = receiveBuffer[8];
}

void MagLib::initFourNode(uint32_t addressPackage, char *_receiveBuffer, char zyxt, int i2cLine, uint8_t GAIN_SEL, uint8_t RES_XYZ, uint8_t DIG_FILT, uint8_t OSR)
{	
	_address1 = addressPackage & 0xFF;
	_address2 = (addressPackage & 0xFF00) >> 8;
	_address3 = (addressPackage & 0xFF0000) >> 16;
	_address4 = (addressPackage & 0xFF000000) >> 24;
		
	device1.init(receiveBuffer, _address1, i2cLine);
	device1.configure(receiveBuffer, i2cLine, GAIN_SEL, RES_XYZ, DIG_FILT, OSR );
	device1.startBurstMode(receiveBuffer, zyxt, i2cLine);

	device2.init(receiveBuffer, _address2, i2cLine);
	device2.configure(receiveBuffer, i2cLine, GAIN_SEL, RES_XYZ, DIG_FILT, OSR );
	device2.startBurstMode(receiveBuffer, zyxt, i2cLine);

	device3.init(receiveBuffer, _address3, i2cLine);
	device3.configure(receiveBuffer, i2cLine, GAIN_SEL, RES_XYZ, DIG_FILT, OSR );
	device3.startBurstMode(receiveBuffer, zyxt, i2cLine);

	device4.init(receiveBuffer, _address4, i2cLine);
	device4.configure(receiveBuffer, i2cLine, GAIN_SEL, RES_XYZ, DIG_FILT, OSR );
	device4.startBurstMode(receiveBuffer, zyxt, i2cLine);
}

//dont touch
/*
void MagLib::readFourNodes(char *buffer, char zyxt, int i2cLine)
{
	unsigned long time = millis();

	buffer[0] = (time & 0xFF00) >> 8;			// T msb
	buffer[1] = (time & 0xFF);					// T lsb

	device1.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 9; i++) buffer[i] = receiveBuffer[i + 1];

	device2.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 9; i++)	buffer[i + 6] = receiveBuffer[i + 1];

	device3.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 9; i++) buffer[i + 12] = receiveBuffer[i + 1];

	device4.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 9; i++) buffer[i + 18] = receiveBuffer[i + 1];
}
*/
void MagLib::init16Nodes(uint32_t addressPackage, char *buffer, char zyxt, int *mux, int i2cLine, uint8_t GAIN_SEL, uint8_t RES_XYZ, uint8_t DIG_FILT, uint8_t OSR)
{
	// Set MUX lines on Arduino board
	pinMode(mux[0], OUTPUT);
	pinMode(mux[1], OUTPUT);
	
	_mux[0] = mux[0];
	_mux[1] = mux[1];

	// Initialise all individual devices
	setMux(LOW, LOW);
	Serial.print("\n*****MUX(0,0)\n");

	initFourNode(addressPackage, receiveBuffer, zyxt, i2cLine,GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

	// Change mux lines and repeat
	setMux(LOW, HIGH);
	Serial.print("\n*****MUX(0,1)\n");
	initFourNode(addressPackage, receiveBuffer, zyxt, i2cLine, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

	setMux(HIGH, LOW);
	Serial.print("\n*****MUX(1,0)\n");
	initFourNode(addressPackage, receiveBuffer, zyxt, i2cLine, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

	setMux(HIGH, HIGH);
	Serial.print("\n*****MUX(1,1)\n");
	initFourNode(addressPackage, receiveBuffer, zyxt, i2cLine, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);
}
//don't touch
void MagLib::read16Nodes(char *buffer, char zyxt, int i2cLine)
{
	unsigned long time = millis();
	
	buffer[0] = time & 255;
	buffer[1] = (time>>8) & 255;
	buffer[2] = (time>>16) & 255;
	buffer[3] = (time>>24) & 255;
	
	//Serial.print("\nStart Read Cycle\n");
	setMux(LOW, LOW);

	device1.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i+2] = receiveBuffer[i + 1];

	device2.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++)	buffer[i + 8] = receiveBuffer[i + 1];

	device3.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 14] = receiveBuffer[i + 1];

	device4.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 20] = receiveBuffer[i + 1];

	setMux(LOW, HIGH);

	device1.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 26] = receiveBuffer[i + 1];

	device2.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++)	buffer[i + 32] = receiveBuffer[i + 1];

	device3.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 38] = receiveBuffer[i + 1];

	device4.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 44] = receiveBuffer[i + 1];

	setMux(HIGH, LOW);

	device1.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 50] = receiveBuffer[i + 1];

	device2.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++)	buffer[i + 56] = receiveBuffer[i + 1];

	device3.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 62] = receiveBuffer[i + 1];

	device4.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 68] = receiveBuffer[i + 1];

	setMux(HIGH, HIGH);

	device1.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 74] = receiveBuffer[i + 1];

	device2.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++)	buffer[i + 80] = receiveBuffer[i + 1];

	device3.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 86] = receiveBuffer[i + 1];

	device4.ReadMeasurement(receiveBuffer, zyxt, i2cLine);
	for (int i = 2; i < 8; i++) buffer[i + 92] = receiveBuffer[i + 1];
}

void MagLib::init64Nodes(uint32_t addressPackage, char *receiveBuffer, char zyxt, int *mux, uint8_t GAIN_SEL, uint8_t RES_XYZ, uint8_t DIG_FILT, uint8_t OSR)
{
	// Init Bus0 16 nodes
	init16Nodes(addressPackage, receiveBuffer, zyxt, mux, 0, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

	// Init Bus1 16 nodes
	init16Nodes(addressPackage, receiveBuffer, zyxt, mux, 1, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);
		
	// Init Bus2 16 nodes
	init16Nodes(addressPackage, receiveBuffer, zyxt, mux, 2, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

	// Init Bus3 16 nodes
	init16Nodes(addressPackage, receiveBuffer, zyxt, mux, 3, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);
}

void MagLib::read64Nodes(char *buffer, char zyxt)
{
	//Pack the current time into the buffer
	unsigned long time = millis();
	
	buffer[0] = time & 255;
	buffer[1] = (time>>8) & 255;
	buffer[2] = (time>>16) & 255;
	buffer[3] = (time>>24) & 255;
	
	int packet_offset = 0;
	
	//Loop around the muxId instead, so that we can do async calls to each i2c bus
	for(uint8_t muxIdx =0; muxIdx <= 3; muxIdx++)
	{
		//Set the mux...
		setMux(muxIdx);
		
		//For each device
		for(uint8_t devIdx=1; devIdx <= 4; devIdx++)
		{
			//Which device are we dealing with here?
			MLX90393* thisDevice = whichDevice(devIdx);
		
			//We can delete about a billion lines of code by putting the mux
			//control in a for loop
			//Do all the requests first
			int i2cSweep;
			for (i2cSweep = 0; i2cSweep <= 3; i2cSweep++) //loop through the 4 i2C buses
			{
				//Now request for each sweep on that device
				thisDevice->RequestMeasurement(receiveBuffer, zyxt, i2cSweep);
			}
								
				/*Horrible, horrible way of waiting for each device to be ready
				 * and then read when it says go. We can roughly presume that
				 * device 1 will be ready first because we called it first
				 * 
				 * Packet offsets are calculated by mux number for mux zero,
				 * i+2. fo mux 1, i+26. for mux 2, i+50, and so on...*/
			//Requests all done so go and measure
			for(i2cSweep = 0; i2cSweep <= 3; i2cSweep++)
			{
				
				packet_offset = i2cSweep * 6*16; //6*16 is number bytes for 16 XYZ readings
				
				while(!thisDevice->measureReady(i2cSweep));
				thisDevice->takeMeasure(receiveBuffer,zyxt,i2cSweep);
				for (int i = 2; i < 8; i++) buffer[packet_offset + i + 2 +(muxIdx*24) +((devIdx-1)*6)] = receiveBuffer[i + 1];
			}
		}
	
	} //End for
	
	//delay(50);
	
}

void MagLib::printRawData(char *buffer, int format, int size)
{
	//char send_buffer[6] = [];
	
	//Define the header of binary packets sent
	packet_header[0] = 0x0A;
	packet_header[1] = 0x0B;
	packet_header[2] = 0x0C;
	packet_header[3] = size & 0xFF;
	packet_header[4] = (size>>8) & 0xFF;
	
	switch (format) {
		case BIN:
			// replace with more optimised pointer mode
			Serial.write(packet_header,5);
			Serial.write(buffer,size);
			/*for (int i = 0; i < size; i++) {
			Serial.write(buffer[i]);
			if (i > NODE_32) {
				Serial.flush();
				} //end IF
			} 	// for loop
			Serial.flush();
			*/
			break;

		case HEX:
			for (int i = 0; i < size; i++) {
				Serial.print(buffer[i], HEX);
				Serial.print(" ");
			}	// for loop
			Serial.print("\n");
			break;

		default:
			break;
	}	// switch (format)

}	// printRawData()

void MagLib::printASCIIData(char *buffer, int size)
{
	int node = 0;
	
	long T =  (buffer[2] * 256) + buffer[3];
	float Bx = (buffer[4] * 256) + buffer[5] ;//* 0.00805f;
	float By = (buffer[6] * 256) + buffer[7] ;//* 0.00805f;
	float Bz = (buffer[8] * 256) + buffer[9] ;//* 0.02936f;
	
	for (int i = 4; i < size; i+=6) { //loop through all sensor 
			Bx = (buffer[i+0] * 256) + buffer[i+1] ;
			Bx = (buffer[i+2] * 256) + buffer[i+3] ;
			Bx = (buffer[i+4] * 256) + buffer[i+5] ;
			Serial.printf("N%d|x:%.0f,y:%.0f,z:%.0f| ", node, Bx, By, Bz);
			node = node +1;
		}	// for loop
	Serial.print("\n");
}

void MagLib::initSDCard(int chipSelect)
{
	if (!SD.begin(chipSelect)) {
		Serial.print("SD Card init failed.");
		SDCard = false;
		return;
	}

	SDCard = true;

	/*
	

	char fileTitle[1024];
	const char *format = "data_%i.txt";
	int count = 0;

	sprintf(fileTitle, format, count);

	while (1) {
		if (SD.exists(fileTitle)) {
			count++;
			sprintf(fileTitle, format, count);
		}
		else break;
	}
	*/
	File datafile = SD.open("test1243533.txt", FILE_WRITE);

	Serial.println("SD Card init complete");
}

void MagLib::printToSDCard(char *buffer, int size)
{
	if (!SDCard) {
		Serial.println("SD Card error.");
		return;
	}

	File dataFile = SD.open("data.txt", FILE_WRITE);

	// if the file is available, write to it:
	if (dataFile) {
		for (int i = 0; i < NODE_SINGLE; i++) dataFile.print(buffer[i], HEX);
		dataFile.println();
		dataFile.close();
		// print to the serial port too:Serial.println(buffer);
	}
	// if the file isn't open, pop up an error:
	else {
		Serial.println("error opening datalog.txt");
	}

}	// printToSDCard()

void MagLib::closeSDCard()
{
	file.close();

	Serial.println("SD Card closed.");
}

/*There's two versions of setMux to maintain compatibility
* This is the original one that takes two arguments...
*/
void MagLib::setMux(int S1, int S0)
{

	digitalWrite(_mux[0], S0);
	digitalWrite(_mux[1], S1);
}

//This is the new one that takes one that is easier to use in loops//
uint8_t MagLib::setMux(unsigned int muxSet)
{
	//Check the value is no more than the total number of muxes
	if(muxSet > (NMUX-1))
	{
		MagError("Invalid MUX");
		//Will never get here: MagError is infinite, but it keeps the compiler happy
		return -1;
	}
	
	/*For each mux...
	* (Let compiler decide what types to use), we have no idea how many muxes 
	* there might be in future) */
	for(unsigned int muxIdx =1; muxIdx <= NMUX; muxIdx++)
	{
		//Extract the correct bit and set the correct MUX
		digitalWrite(_mux[muxIdx-1], (muxSet & muxIdx)>>(muxIdx-1));
		/*In otherwords, for the first mux, get the first bit (1&1) 
		* and shift it 0 times to right */
	} 
	
}

// This is a general error function that you can use however you want
// It will print something to the serial monitor. It's not critical but it should be noted
void MagLib::MagError(char *errString){
	//How quickly do you want to flash the error?
	static const unsigned int repRate = 500;

	//Do couple of repeats
	while(1){
		//What will we prefix the warning message with?
		char prefix[] = "* Warning: ";
		//Construct a nice box around the error message
		//+2 because space and * at end of message
		char stars[strlen(errString)+strlen(prefix)+2] = {'*'};
		Serial.println(stars);
		Serial.print(prefix); Serial.print(errString); Serial.print(" *");
		Serial.println(stars);
		//Make it flash!
		delay(repRate);
	}
	
}



void MagLib::TimeMeasurement(float TimeTaken)
{
	Serial.println(TimeTaken, DEC);
}


//This function returns a pointer to the correct private device object depending on the input index
MLX90393* MagLib::whichDevice(int idx)
{
	switch(idx){
	case 1:
		return &device1;
		break;
	case 2:
		return &device2;
		break;
	case 3:
		return &device3;
		break;
	case 4:
		return &device4;
		break;
	default:
		Serial.print("Invalid device number!"); while(1);
	}
}