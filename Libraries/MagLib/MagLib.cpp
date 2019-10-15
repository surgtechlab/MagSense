/*Copyright 2018 University of Leeds, Pete Culmer, Max Houghton, Chris Adams

Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to
 do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.*/

#include "MagLib.h"

MagLib::MagLib()
	: ble_ss(SoftwareSerial(0,1))
{

}

MagLib::~MagLib()
{

}

void MagLib::setupForClient(int platform, unsigned DEVICE, int ledPin, int baud)
{
	PLATFORM = platform;
	_DEVICE = DEVICE;
	_ledPin = ledPin;
	serial_baud = baud;

	pinMode(_ledPin, OUTPUT);
    digitalWrite(_ledPin, LOW);

	pinMode(LED_GREEN, OUTPUT);	// Green LED
	pinMode(LED_RED, OUTPUT);	// Red LED
	pinMode(LED_BLUE, OUTPUT);	// Blue LED

	//Initiate USB Serial
	Serial.begin(serial_baud);

	//while (!Serial) { SysCall::yield(); }
	digitalWrite(_ledPin, HIGH); //Signify when Comms active
    delay(1000);
    digitalWrite(_ledPin, LOW);

	//Begin the SdFAT file process
	if (!sd.begin()) {
	  sd.initErrorHalt();
	  Serial.println("ERROR: SD Card Initialisation");
	}
	else {
	  Serial.println("SD Card Initialised");
	}

	// Initialise bluetooth according to specified platform.
	switch (PLATFORM) {
		case HM10:
			// BLE fixed BAUD rate at 9600 (can maybe change? look into)
			ble_ss.begin(9600);
			break;
		case RN4781:
			if (initBLE()) {
				Serial.printf("RN4781 Initialised as: %s\n", rn487xBle.getDeviceName());
			}
			else {
				Serial.println("ERROR: RN4781 Initialisation failed.");
			}
			break;
		default:
			Serial.println("Unknown BLE Platform specified.");
			while(1);
			break;
	}
}

void MagLib::initI2C(int i2cID)
{
	Serial.printf("Init i2c: %d\n", i2cID);

	i2c_t3* thisWire = WhichWire(i2cID);

	// init i2c comms
	thisWire->begin(I2C_MASTER, 0x00, I2C_PINS[i2cID], I2C_PULLUP_EXT, 400000);
	thisWire->setDefaultTimeout(200000);

	thisWire->setOpMode(I2C_OP_MODE_ISR);
	thisWire->setRate(I2C_RATE_400);
}

bool MagLib::initBLE()
{
	// Set the optional debug stream
  	rn487xBle.setDiag(Serial);
  	// Initialize the BLE hardware with our sleep and wakeup pins
  	rn487xBle.hwInit(-1, -1);
	// Open communication pipe with the BLE module
	ble.begin(rn487xBle.getDefaultBaudRate());
	// Assign the BLE serial port to the BLE library
  	rn487xBle.initBleStream(&ble);

	if (!rn487xBle.swInit()) {
		Serial.println("Init. procedure failed!");
		return false;
	}

	// Fist, enter into command mode
	rn487xBle.enterCommandMode();
	// Stop advertising before starting the demo
	rn487xBle.stopAdvertising();
	rn487xBle.clearPermanentAdvertising();
	rn487xBle.clearPermanentBeacon();
	rn487xBle.clearImmediateAdvertising();
	rn487xBle.clearImmediateBeacon();
	rn487xBle.clearAllServices();

	// Set the serialized device name
	rn487xBle.setDevName("Brace+");
	rn487xBle.setSupportedFeatures(0x4000); // Set to no prompt (no "CMD>")
	rn487xBle.setDefaultServices(DEVICE_INFO_SERVICE);

	// Set the advertising output power (range: min = 5, max = 0)
	rn487xBle.setAdvPower(0);
	rn487xBle.reboot();
	rn487xBle.enterCommandMode();
	rn487xBle.clearAllServices();
	// Set a private service
	rn487xBle.setServiceUUID(magServiceUUID);
	// Private service contains the sensors characteristic
	rn487xBle.setCharactUUID(magCharacteristicUUID, WRITE_PROPERTY | NOTIFY_PROPERTY, magCharacteristicLen);


	rn487xBle.startPermanentAdvertising(AD_TYPE_FLAGS, "06");
	rn487xBle.startPermanentAdvertising(AD_TYPE_MANUFACTURE_SPECIFIC_DATA, "CD00FE14AD11CF40063F11E5BE3E0002A5D5C51B");

	// take into account the settings by issuing a reboot
	rn487xBle.reboot();
	rn487xBle.enterCommandMode();

	rn487xBle.startCustomAdvertising(100);

	return true;
}

void MagLib::initSensingNodesFor(unsigned DEVICE, int BAUD, char *receiveBuffer)
{
	if (!Serial) Serial.begin(BAUD);

	Serial.printf("*** Begin system for %d nodes *** \n", DEVICE / 6);
	//while (!Serial) { SysCall::yield(); }

	Serial.println("\nInitialising Mux...");

	// Initialise mux Pins
	pinMode(_mux[0], OUTPUT);
	pinMode(_mux[1], OUTPUT);

	//Configure MUX enable pins (Enable is Low)
	pinMode(5,OUTPUT);
	pinMode(6,OUTPUT);
	pinMode(7,OUTPUT);
	pinMode(8,OUTPUT);

	//Enable All MUX Chips
	digitalWrite(5,LOW);
	digitalWrite(6,LOW);
	digitalWrite(7,LOW);
	digitalWrite(8,LOW);

	long _t = millis();

	uint8_t NodeAddresses[8] = {0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13};
	uint8_t nAddress;
	uint8_t nI2C;
	uint8_t nMUX;
	char zyxt = 0xE;
	uint8_t GAIN_SEL = 0x00;  //
	uint8_t RES_XYZ = 0x01;  //
	uint8_t DIG_FILT = 0x1;
	uint8_t OSR = 0x1;

	switch (DEVICE) {
		case NODE_SINGLE:
			nMUX = 1;
			nI2C = 1;
			nAddress = 1;
			break;
		case NODE_FOUR:
			nMUX = 1;
			nI2C = 1;
			nAddress = 4;
			Serial.println("HAILO is Alive!"); //Signify system active and print version info
			Serial.println(__FILE__);
			Serial.println(__DATE__);
			Serial.println(__TIME__);
			Serial.println("****");
			break;
		case NODE_8:
			nMUX = 1;
			nI2C = 2;
			nAddress = 4;
			break;
		case NODE_16:
			nMUX = 1;
			nI2C = 4;
			nAddress = 4;
			break;
		case NODE_32:
			nMUX = 2;
			nI2C = 4;
			nAddress = 4;
			break;
		case NODE_64:
			nMUX = 4;
			nI2C = 4;
			nAddress = 4;
			Serial.println("MagBOARD is Alive!"); //Signify system active and print version info
			Serial.println(__FILE__);
			Serial.println(__DATE__);
			Serial.println(__TIME__);
			Serial.println("****");
			break;
		case NODE_128:
			nMUX = 4;
			nI2C = 4;
			nAddress = 8;
			Serial.println("MagBOARD is Alive!"); //Signify system active and print version info
			Serial.println(__FILE__);
			Serial.println(__DATE__);
			Serial.println(__TIME__);
			Serial.println("****");
			break;
		default:		// default to single node device
			nMUX = 1;	// minimum of 1 to keep log2() function happy
			nI2C = 1;
			nAddress = 1;
			break;
	}
	// Set the number of muxes
	NMUX = nMUX;

	// Init required i2c channels
	for (int i = 0; i < nI2C; i++) initI2C(i);
	Serial.println("Initialised I2C Bus");

	initSensingNodes(NodeAddresses, receiveBuffer, nMUX, nI2C, nAddress, zyxt, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

	Serial.printf("\n*** Initialisation complete | ");
	Serial.printf("time taken: %g s\n", (millis() - _t)/1000.0f);
}

void MagLib::initSensingNodes(	uint8_t *NodeAddresses,
								char *receiveBuffer,
								uint8_t nMUX,
								uint8_t nI2C,
								uint8_t nAddress,
								char zyxt,
								uint8_t GAIN_SEL,
								uint8_t RES_XYZ,
								uint8_t DIG_FILT,
								uint8_t OSR)
{
	//LOOP through the MUX states
	for(uint8_t muxId=0; muxId < nMUX; muxId++)
	{
		//Set the mux...
		setMux(muxId);

		//LOOP through each I2C line
		for(uint8_t i2cID = 0; i2cID < nI2C; i2cID++)
		{
			Serial.printf("I2C pins - SDA: PIN%d, SCL: PIN%d\n", WhichWire(i2cID)->getSDA(), WhichWire(i2cID)->getSCL());
			//LOOP through each address
			for(uint8_t nodeId=0; nodeId < nAddress; nodeId++)
			{
				nodeAddrObj[nodeId].init(receiveBuffer, NodeAddresses[nodeId], i2cID, muxId);
				nodeAddrObj[nodeId].configure(receiveBuffer, i2cID, GAIN_SEL, RES_XYZ, DIG_FILT, OSR );
				nodeAddrObj[nodeId].startBurstMode(receiveBuffer, zyxt, i2cID);
			} //end address loop
		}//end i2c loop
	}//end MUX loop
}

void MagLib::readSensingNodesFor(unsigned DEVICE, char *receiveBuffer)
{
	uint8_t nMUX;
	uint8_t nI2C;
 	uint8_t nAddress;
	char zyxt = 0xE;

	switch (DEVICE) {
		case NODE_SINGLE:
			nMUX = 1;
			nI2C = 1;
			nAddress = 1;
			break;
		case NODE_FOUR:
			nMUX = 1;
			nI2C = 1;
			nAddress = 4;
			break;
		case NODE_8:
			nMUX = 1;
			nI2C = 2;
			nAddress = 4;
			break;
		case NODE_16:
			nMUX = 1;
			nI2C = 4;		// Change to 3 for Brace (issue with i2c line 4)
			nAddress = 4;
			break;
		case NODE_32:
			nMUX = 2;
			nI2C = 4;
			nAddress = 4;
			break;
		case NODE_64:
			nMUX = 4;
			nI2C = 4;
			nAddress = 4;
			break;
		case NODE_128:
			nMUX = 4;
			nI2C = 4;
			nAddress = 8;
			break;
		default:
			MagError("No device defined.");
			nMUX = 0;
			nI2C = 0;
			nAddress = 0;
			break;
	}

	readSensingNodes(receiveBuffer, zyxt, nMUX, nI2C, nAddress);
}

void MagLib::readSensingNodes(	char *buffer,
								char zyxt,
								uint8_t nMUX,
								uint8_t nI2C,
								uint8_t nAddress)
{
	//Pack the current time into the receiveBuffer
	unsigned long time = millis();

	uint8_t node = 0;
	uint8_t errors = 0;
	uint8_t error_nodes[MAGBOARD];

	//Loop around the muxId instead, so that we can do async calls to each i2c bus
	for(uint8_t muxId =0; muxId < nMUX; muxId++)
	{
		//Set the mux...
		setMux(muxId);

		//LOOP through addresses
		for (uint8_t nodeId=0; nodeId < nAddress; nodeId++)
		{
			//REQUEST LOOP - i2c lines
			for(uint8_t i2cID = 0; i2cID < nI2C; i2cID++) {
				//Now request for each sweep on that device
				nodeAddrObj[nodeId].RequestMeasurement(receiveBuffer, zyxt, i2cID);
			}
			//WAIT LOOP - IS DATA READY
			for(uint8_t i2cID = 0; i2cID < nI2C; i2cID++) {
				nodeAddrObj[nodeId].AsyncRxFill(receiveBuffer, zyxt, i2cID);
			}
			//READ LOOP
			for(uint8_t i2cID = 0; i2cID < nI2C; i2cID++) {
				//While there's no bytes available to read, do nothing...
				while(!nodeAddrObj[nodeId].measureReady(i2cID));

				//Data ready - so read
				nodeAddrObj[nodeId].takeMeasure(receiveBuffer,i2cID);

				// Check error bit
				if (receiveBuffer[0] & 0x10) {
					errors++;
					error_nodes[errors] = node;
				}

				Serial.printf("Node: %d, status: %x, data:  ", node, receiveBuffer[0]);
				for (int i = 3; i<9;i++)Serial.print(receiveBuffer[i], HEX);
				Serial.println();

				//Work out the address
				uint16_t packetOffset = (muxId*96)+(i2cID*24)+(nodeId*6)+4;
				// Bytes 0-5 (+offset) are receiveBuffer 3-8
				for (int i = 0; i < NODE_N_BYTE; i++) {
					buffer[i+packetOffset] = receiveBuffer[i+3];
				}
				node++;

				delay(20);
			}
		}
	} //End for

	// Report back errors
	Serial.printf("\n*** Completed with %d errors on chips: ", errors);
	for (int i = 0; i < errors; i++) Serial.printf("%d ", error_nodes[i]);
	Serial.println();

	buffer[3] = (time) & 255;
	buffer[2] = ((time)>>8) & 255;
	buffer[1] = ((time)>>16) & 255;
	buffer[0] = ((time)>>24) & 255;

	t_old = time;
}

void MagLib::initBrace(char *buffer)
{
	Serial.begin(115200);
	delay(1000);

	// Set pins
	pinMode(7, OUTPUT);		// Battery status pin
	pinMode(10, OUTPUT);	// Vibration motor

	pinMode(27, OUTPUT);	// Green LED
	pinMode(28, OUTPUT);	// Red LED
	pinMode(29, OUTPUT);	// Blue LED

	// Turn red LED on
	digitalWrite(27, LOW);
	digitalWrite(28, HIGH);
	digitalWrite(29, LOW);

	// Initialise mux Pins
	pinMode(_mux[0], OUTPUT);
	pinMode(_mux[1], OUTPUT);

	//Configure MUX enable pins (Enable is Low)
	pinMode(5,OUTPUT);
	pinMode(6,OUTPUT);
	pinMode(7,OUTPUT);
	pinMode(8,OUTPUT);

	//Enable All MUX Chips
	digitalWrite(5,LOW);
	digitalWrite(6,LOW);
	digitalWrite(7,LOW);
	digitalWrite(8,LOW);

	Serial.printf("Init i2c: 1\n");
	// init i2c comms
	Wire.begin(I2C_MASTER, 0x00, I2C_PINS_18_19, I2C_PULLUP_EXT, 400000);
	Wire.setDefaultTimeout(200000);
	Wire.setOpMode(I2C_OP_MODE_ISR);
	Wire.setRate(I2C_RATE_400);

	Serial.printf("Init i2c: 2\n");
	// init i2c comms
	Wire1.begin(I2C_MASTER, 0x00, I2C_PINS_37_38, I2C_PULLUP_EXT, 400000);
	Wire1.setDefaultTimeout(200000);
	Wire1.setOpMode(I2C_OP_MODE_ISR);
	Wire1.setRate(I2C_RATE_400);

	Serial.printf("Init i2c: 3\n");
	// init i2c comms
	Wire2.begin(I2C_MASTER, 0x00, I2C_PINS_3_4, I2C_PULLUP_EXT, 400000);
	Wire2.setDefaultTimeout(200000);
	Wire2.setOpMode(I2C_OP_MODE_ISR);
	Wire2.setRate(I2C_RATE_400);

	Serial.printf("Init i2c: 4\n");
	// init i2c comms
	Wire3.begin(I2C_MASTER, 0x00, I2C_PINS_56_57, I2C_PULLUP_EXT, 400000);
	Wire3.setDefaultTimeout(200000);
	Wire3.setOpMode(I2C_OP_MODE_ISR);
	Wire3.setRate(I2C_RATE_400);

	uint8_t NodeAddresses[4] = {0x0C, 0x0D, 0x0E, 0x0F};
	uint8_t nAddress = 4;
	uint8_t nI2C = 4;
	uint8_t nMUX = 1;
	char zyxt = 0xE;
	uint8_t GAIN_SEL = 0x00;  //
	uint8_t RES_XYZ = 0x01;  //
	uint8_t DIG_FILT = 0x1;
	uint8_t OSR = 0x1;

	// FIGURE OUT MUX PIN OVERLAP WITH VIBRATION MOTOR (PIN 10)
	initSensingNodes(NodeAddresses, buffer, nMUX, nI2C, nAddress, zyxt,
		GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

	// Turn green LED on.
	digitalWrite(27, HIGH);
	digitalWrite(28, LOW);
	digitalWrite(29, LOW);
}

void MagLib::readBrace(char *buffer)
{

}

void MagLib::comms_MainMenu(unsigned DEVICE, char *buffer)
{
	int files = 0;
	bool sd_card;

	switch (PLATFORM) {
		case RN4781:
			// If connected to central device:
			if (rn487xBle.getConnectionStatus())
			{
				digitalWrite(LED_GREEN, HIGH);
				digitalWrite(LED_RED, LOW);

				// If data available
				if (rn487xBle.readLocalCharacteristic(magHandle))
				{
					char commsByte;
					magPayload = rn487xBle.getLastResponse();

					if ((magPayload != "Err ") || (magPayload == NULL))
					{
						for (int i = 0; i < sizeof(magPayload); i++) Serial.print(magPayload[i]);
						Serial.println();

						commsByte = magPayload[0];

						switch (commsByte) {
							case '^':
								magPayload[0] = "R";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								Serial.println("Received ready command");
								break;
							case 'X':
								comms_EstablishContact();
								magPayload[0] = "X";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								break;
							case 'I':
								magPayload[0] = "i";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								Serial.println("Initialise System");
								System_Initialise(DEVICE, buffer);
								magPayload[0] = "I";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								break;
							case 'F':
								files = getFiles(sd.open("/"), 0);
								Serial.printf("Discovered %d files\n", files);
								magPayload[0] = "F";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								break;
							case 'T':
								magPayload[0] = "t";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								sd_card = test_SD_datalog();
								if (sd_card) {
									magPayload[0] = "T";
									rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
									Serial.println("Tests successful.");
								}
								else {
									magPayload[0] = "X";
									rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								}
								break;
							case 'C':
								Serial.println("check sd status");
								comms_SD_Status();
								magPayload[0] = "C";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								break;
							case 'S':
								//ble.print("s");
								System_Stream(DEVICE, buffer);
								magPayload[0] = "S";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								break;
							case 'L':
								magPayload[0] = "l";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								SD_datalog();
								magPayload[0] = "L";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
								break;
							case 'G':	// get datafile
								magPayload[0] = "g";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
					            SD_upload();
								magPayload[0] = "G";
								rn487xBle.writeLocalCharacteristic(magPayload, magHandle);
					            break;
							default:	 // Unknown command - respond accordingly. RTFM
								// Serial.print(magPayload[0], HEX);
								// Serial.println(" ?");
								break;
						}	// switch commsByte
					}	// if payload != null
				}	// if data available
			} else {	// if connected
				// Not connected to a peer device
				Serial.println("Not connected to a central device");
				digitalWrite(LED_GREEN, LOW);
				digitalWrite(LED_RED, HIGH);
				// Delay inter connection polling - when not connected, check for new connections ever 1 second
				delay(2000);
			}
			break;

		case HM10:
			if (ble_ss.available() > 0)
			{
				int commsByte = ble_ss.read();
				Serial.print("\nCommand Recieved: ");
				Serial.print(commsByte);
				Serial.print("\n");

				int files = 0;
				bool sd_card = false;

				switch (commsByte) {
					case '^':
						ble_ss.print("RDY");
						Serial.println("Received ready command");
						break;
					case 'X':
						comms_EstablishContact();
						ble_ss.print("X");
						break;
					case 'I':
						ble_ss.print("i");
						Serial.println("Initialise System");
						System_Initialise(DEVICE, buffer);
						ble.print("I");	// End of text stream
						break;
					case 'F':
						files = getFiles(sd.open("/"), 0);
						Serial.printf("Discovered %d files\n", files);
						ble_ss.print("F");
						break;
					case 'T':
						ble_ss.print("t");
						sd_card = test_SD_datalog();
						if (sd_card) {
							ble_ss.print("T");
							Serial.println("Tests successful.");
						} else ble_ss.print("e");
						break;
					case 'C':
						Serial.println("check sd status");
						comms_SD_Status();
						ble_ss.print("C");
						break;
					case 'S':
						//ble.print("s");
						System_Stream(DEVICE, buffer);
						ble_ss.print("S");
						break;
					case 'L':
						ble_ss.print("l");
						SD_datalog();
						ble_ss.print("L");
						break;
					case 'G':	// get datafile
						ble_ss.print("g");
						SD_upload();
						ble_ss.print("G");
						break;
					default:	 // Unknown command - respond accordingly. RTFM
						Serial.println("?");
						break;
				}
			} else {
				Serial.print("\nBT Unavailable.");
				delay(2000);
				status_led = !status_led;
				digitalWrite(_ledPin, status_led); //Toggle LED output
			}
			break;

		default:
			// NO BLE PLATFORM SPECIFIED
			break;
	}
}

void MagLib::System_Initialise(unsigned DEVICE, char *receiveBuffer)
{
	initSensingNodesFor(DEVICE, serial_baud, receiveBuffer);

	Serial.println("\nSystem Active");
}

void MagLib::System_Stream(unsigned DEVICE, char *buffer)
{
    int packet_size = DEVICE;
	int commsByte = 0;
	char stream_packet_header[5];
	char writeBuffer[12];
	char counter = 0;
	int size;

	ble.flush();

	do {
		//TAKE READING FROM MAGBOARD
		readSensingNodesFor(DEVICE, buffer);

		size = ble.write(buffer, DEVICE);

		// Wait for packet acknowledgement
		while (ble.available() < 1) { }

		commsByte = ble.read();

	} while (commsByte == 83);

	Serial.println("\nStream stopped.");
}

void MagLib::comms_SystemCheck()
{
	//Serial.println("Testing SD Datalog.");
	test_SD_datalog();
	//Serial.println("SD data log checks complete.");

	//Serial.println("Checking SD status");
	comms_SD_Status();
}

void MagLib::comms_EstablishContact()
{
	while (ble.available() <= 0) {
		Serial.println("Waiting...");
		delay(2000);
	}

	Serial.print("!Magboard n64 v: ");
	Serial.print(__DATE__);
	Serial.print(" ");
	Serial.print(__TIME__);
	Serial.print(" ");
}

bool MagLib::test_SD_datalog()
{
	Serial.println("testing sd datalog...");

	char input_byte;
	uint32_t max_writes = FILE_SIZE/sizeof(SDbuf); //max number of writes to SD file
	uint32_t num_writes = 0;
	uint32_t m = 0; //microsec clock value (to regulate loop)
	uint32_t m_last = 0;
	uint32_t log_start_time;
	uint32_t log_elapsed_time;
	int32_t write_size;

	// Loop dT in micro sec (100Hz)
	uint32_t loop_dt = 10000; //loop dT in micro secs (100Hz)

	//Define packet end
	SDbuf[BUF_SIZE-3] = 'X';
	SDbuf[BUF_SIZE-2] = 'Y';
	SDbuf[BUF_SIZE-1] = 'Z';

	//**********************************************
	//Set log-filename - Uses 8.3 name format
    while (ble.available() < 4) {  }

	// C# Code:
	// byte[] filename = { month, day, hour, minute };
	int month = ble.read();		// MONTH
    int day = ble.read();		// DAY
    int hour = ble.read();		// HOUR
    int minute = ble.read();	// MINUTE

	char buffer[64];
	char *mon_fmt, *day_fmt, *hr_fmt, *min_fmt;

	if (minute < 10) min_fmt = "0%d";
	else min_fmt = "%d";
	if (hour < 10) hr_fmt = "0%d";
	else hr_fmt = "%d";
	if (day < 10) day_fmt = "0%d";
	else day_fmt = "%d";
	if (month < 10) mon_fmt = "0%d";
	else mon_fmt = "%d";

	// Format to resemble "HourMinuteDayMonth.dat".
	// Copy hour format to receiveBuffer first then add the rest behind it
	strncpy(buffer, mon_fmt, sizeof(buffer));
	strncat(buffer, day_fmt, sizeof(buffer));
	strncat(buffer, hr_fmt, sizeof(buffer));
	strncat(buffer, min_fmt, sizeof(buffer));
	strncat(buffer, ".dat", sizeof(buffer));

	sprintf(filename, buffer, month, day, hour, minute);

    Serial.print("Logging. Filename=");
    Serial.println(filename);


	// Create file (truncate existing file)
	if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
		Serial.println("ERROR: file open failed");
		return false;
	} else {
		file.truncate(0); //file with 0 bytes and absolutely no contents in it
		Serial.println("File open OK");
	}

	digitalWrite(_ledPin, HIGH); //Set StatusLED ON during write

	//*** LOGGING LOOP ******************
	log_start_time = millis();

	for (uint32_t i = 0; i < max_writes; i++) {
		m = micros(); //read time

		readSensingNodesFor(_DEVICE, SDbuf);
		// Serial.println("\n**************receiveBuffer:");
		// Serial.write(SDbuf,BUF_SIZE);

		write_size = file.write(SDbuf, BUF_SIZE);

		for (int j = 0; j < max_writes; j+=max_writes/10) if (i == j)
			Serial.printf("%d%%\n", j/(max_writes/100));

		if (write_size != BUF_SIZE) {
			sd.errorPrint("write failed");
			file.close();
			return false;
		}

		m = micros() - m;

		//Regulate loop rate here*
		do {
			delay(1);
			m =  micros();
		} while ( (m - m_last) < loop_dt);

		m_last = m;
		//************************

		num_writes = i;
	} //End write loop *****************

	digitalWrite(_ledPin, LOW);
	file.sync();
	log_elapsed_time = millis() - log_start_time;
	file.close();

	Serial.print("\nWrite Stopped at cycle ");
	Serial.print(num_writes);
	Serial.print(" of ");
	Serial.println(max_writes);

	//Print Performance Information to USB Serial
	Serial.print("\nAverage Loop Time (ms): ");
	Serial.println( log_elapsed_time/num_writes );

	return true;
}

void MagLib::comms_SD_Status()
{
	//Print Card Information
	Serial.print("\nFS Type is FAT");
	Serial.println(int(sd.vol()->fatType()) );
	Serial.print("\nCard Size (GB):");
	Serial.println( sd.card()->cardSize() * 512E-9);
	Serial.print("\nFile Size (MB):");
	Serial.println( FILE_SIZE_MB );
	Serial.print("\nreceiveBuffer Size (Bytes):");
	Serial.println( BUF_SIZE );
	Serial.print("\n");

	uint8_t fsTypeMSB = (0xFF00 & int(sd.vol()->fatType())) >> 8;
	uint8_t fsTypeLSB = (0xFF & int(sd.vol()->fatType()));

	uint8_t cardSizeMSB = (0xFF00 & sd.card()->cardSize()) >> 8;
	uint8_t cardSizeLSB = (0xFF & sd.card()->cardSize());	// Reduce in size by 512E-9 again

	uint8_t fileSizeMSB = (0xFF00 & FILE_SIZE_MB) >> 8;
	uint8_t fileSizeLSB = (0xFF & FILE_SIZE_MB);

	uint8_t bufSizeMSB = (0xFF00 & BUF_SIZE) >> 8;
	uint8_t bufSizeLSB = (0xFF & BUF_SIZE);

	char buf[8] = { fsTypeMSB, fsTypeLSB, cardSizeMSB, cardSizeLSB,
					fileSizeMSB, fileSizeLSB, bufSizeMSB, bufSizeLSB };

	ble.write(buf, 8);

	sd.ls(LS_R | LS_DATE | LS_SIZE); 	//SD file listing to Serial
}

void MagLib::SD_datalog()
{
	char input_byte;
    uint32_t max_writes = FILE_SIZE/sizeof(SDbuf); //max number of writes to SD file
    uint32_t num_writes = 0;
    uint32_t m = 0; //microsec clock value (to regulate loop)
    uint32_t m_last = 0;
    uint32_t log_start_time;
    uint32_t log_elapsed_time;
    int32_t write_size;

	// Loop dT in micro sec (100Hz)
	uint32_t loop_dt = 10000; //loop dT in micro secs (100Hz)

    //Define packet end
    SDbuf[BUF_SIZE-3] = 'X';
    SDbuf[BUF_SIZE-2] = 'Y';
    SDbuf[BUF_SIZE-1] = 'Z';

	//**********************************************
	//Set log-filename - Uses 8.3 name format
    while (ble.available() < 4 ) { }

	// C# Code:
	// byte[] filename = { month, day, hour, minute };
	int month = ble.read();		// MONTH
    int day = ble.read();		// DAY
    int hour = ble.read();		// HOUR
    int minute = ble.read();	// MINUTE

	char buffer[64];
	char *mon_fmt, *day_fmt, *hr_fmt, *min_fmt;

	if (minute < 10) min_fmt = "0%d";
	else min_fmt = "%d";
	if (hour < 10) hr_fmt = "0%d";
	else hr_fmt = "%d";
	if (day < 10) day_fmt = "0%d";
	else day_fmt = "%d";
	if (month < 10) mon_fmt = "0%d";
	else mon_fmt = "%d";

	// Format to resemble "HourMinuteDayMonth.dat".
	// Copy hour format to receiveBuffer first then add the rest behind it
	strncpy(buffer, mon_fmt, sizeof(buffer));
	strncat(buffer, day_fmt, sizeof(buffer));
	strncat(buffer, hr_fmt, sizeof(buffer));
	strncat(buffer, min_fmt, sizeof(buffer));
	strncat(buffer, ".dat", sizeof(buffer));

	sprintf(filename, buffer, month, day, hour, minute);

    Serial.print("Logging. Filename=");
    Serial.println(filename);

    // Create file (truncate existing file)
    if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
		Serial.println("ERROR: file open failed");
		ble.print("E");
		return;
    } else {
		file.truncate(0); //file with 0 bytes and absolutely no contents in it
  		Serial.println("File open OK");
    }

    digitalWrite(_ledPin, HIGH); //Set StatusLED ON during write

    //*** LOGGING LOOP ******************
    log_start_time = millis();

    for (uint32_t i = 0; i < max_writes; i++) {
		m = micros(); 								//read time
		readSensingNodesFor(_DEVICE, SDbuf);		//take reading
		write_size = file.write(SDbuf, BUF_SIZE);

		// Print percentage of cycle
		for (int j = 0; j < max_writes; j+=max_writes/10) if (i == j)
			Serial.printf("%d%%\n", j/(max_writes/100));

		if (write_size != BUF_SIZE) {
			sd.errorPrint("write failed");
			file.close();
			return;
		}

		m = micros() - m;

		//Test to see if
		if (ble.available()) {
			input_byte = ble.read();
			break;
		}

		//Regulate loop rate here*
		do {
			delay(1);
			m =  micros();
		} while ( (m - m_last) < loop_dt);

		m_last = m;
		//************************

		num_writes = i;
	} //End write loop *****************

	digitalWrite(_ledPin, LOW);
	file.sync();
	log_elapsed_time = millis() - log_start_time;
	file.close();

	Serial.print("\nWrite Stopped at cycle ");
	Serial.print(num_writes);
	Serial.print(" of ");
	Serial.println(max_writes);

    //Print Performance Information to USB Serial
    Serial.print("\nAverage Loop Time (ms): ");
    Serial.println( log_elapsed_time/num_writes );
}

void MagLib::SD_upload()
{
	// Serial.println("Listing files to bt...");
	// sd.ls(&ble, "/", LS_R | LS_SIZE ); 	//SD file listing to BT

	float logfile_size;
	uint32_t nr;

	Serial.println("Getting filename...");

	//**********************************************
	//Set log-filename - Uses 8.3 name format
    while (ble.available() < 4 ) { }

	// C# Code:
	// byte[] filename = { month, day, hour, minute };
	int month = ble.read();		// MONTH
    int day = ble.read();		// DAY
    int hour = ble.read();		// HOUR
    int minute = ble.read();	// MINUTE

	char buffer[64];
	char *mon_fmt, *day_fmt, *hr_fmt, *min_fmt;

	if (minute < 10) min_fmt = "0%d";
	else min_fmt = "%d";
	if (hour < 10) hr_fmt = "0%d";
	else hr_fmt = "%d";
	if (day < 10) day_fmt = "0%d";
	else day_fmt = "%d";
	if (month < 10) mon_fmt = "0%d";
	else mon_fmt = "%d";

	// Format to resemble "HourMinuteDayMonth.dat".
	// Copy hour format to receiveBuffer first then add the rest behind it
	strncpy(buffer, mon_fmt, sizeof(buffer));
	strncat(buffer, day_fmt, sizeof(buffer));
	strncat(buffer, hr_fmt, sizeof(buffer));
	strncat(buffer, min_fmt, sizeof(buffer));
	strncat(buffer, ".dat", sizeof(buffer));

	sprintf(filename, buffer, month, day, hour, minute);

	Serial.print("Upload. Filename=");
	Serial.println(filename);

  	// Create file (truncate existing file)
	if (!file.open(filename, O_RDONLY)) {
	    Serial.println("ERROR: file open failed");
	    return;
	} else {
		Serial.println("File open OK");
	}

	logfile_size = file.fileSize();
	Serial.print("\nLog Filesize = ");
	Serial.println(logfile_size);
	ble.println(logfile_size);

	digitalWrite(_ledPin, HIGH); //Set StatusLED ON during write

	while ( (nr = file.read(SDbuf, BUF_SIZE)) > 0 ) {
		if (nr < BUF_SIZE) {
		          //End of file
				  SDbuf[0] = 0xFF;
				  SDbuf[1] = 0xFF;
				  SDbuf[2] = 0xFF;
				  ble.write(SDbuf, BUF_SIZE);
				  return;
		} else {
			ble.write(SDbuf, BUF_SIZE);
		}
	} //END READ LOOP ********

	Serial.println("File upload finished.");

	file.close();
	digitalWrite(_ledPin, LOW); //Set StatusLED ON during write
}

void MagLib::testNode(	char *receiveBuffer,
						char zyxt,
						uint8_t address,
						uint8_t i2cID,
						uint8_t muxID)
{
	uint8_t GAIN_SEL = 0x00;  //
	uint8_t RES_XYZ = 0x01;  //
	uint8_t DIG_FILT = 0x1;
	uint8_t OSR = 0x1;

	Serial.begin(9600);

	// Reset and test a specific chip
	setMux(muxID);
	delay(50);

	Serial.printf("Testing MLX:L%d\tA:0x%x\tMUX:%d\n", i2cID, address, muxID);

	nodeAddrObj[address].resetDevice(receiveBuffer, zyxt, i2cID);
	Serial.printf("Resetting...\n");
	delay(1000);

	Serial.printf("Init & config node...\n");
	nodeAddrObj[address].init(receiveBuffer, address, i2cID, muxID);
	nodeAddrObj[address].configure(receiveBuffer, i2cID, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);
	nodeAddrObj[address].startBurstMode(receiveBuffer, zyxt, i2cID);
	delay(500);

	Serial.printf("Reading node...\n");
	nodeAddrObj[address].RequestMeasurement(receiveBuffer, zyxt, i2cID);
	nodeAddrObj[address].AsyncRxFill(receiveBuffer, zyxt, i2cID);
	//While there's no bytes available to read, do nothing...
	while(!nodeAddrObj[address].measureReady(i2cID));
	//Data ready - so read
	nodeAddrObj[address].takeMeasure(receiveBuffer,i2cID);

	printASCIIData(receiveBuffer, NODE_SINGLE);
}

void MagLib::printRawData(char *buffer, int format, int size)
{
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
			Serial.write(buffer, size);
			break;

		case HEX:
			for (int i = 0; i < size; i++) Serial.print(buffer[i], HEX);
			Serial.println();
			break;

		default:
			break;
	}	// switch (format)

}	// printRawData()

void MagLib::printASCIIData(char *receiveBuffer, int size)
{
	int node = 0;

	float Bx = 0;
	float By = 0;
	float Bz = 0;

	unsigned long time = receiveBuffer[0]+(receiveBuffer[1]<<8)+(receiveBuffer[2]<<16)+(receiveBuffer[3]<<24);

	Serial.printf("Read time: %ld ms|", time);

	for (int i = 4; i < size; i+=6) { //loop through all sensor
		Bx = (receiveBuffer[i] * 256) + receiveBuffer[i+1] * 0.00805f;
		By = (receiveBuffer[i+2] * 256) + receiveBuffer[i+3] * 0.00805f;
		Bz = (receiveBuffer[i+4] * 256) + receiveBuffer[i+5] * 0.02936f;
		Serial.printf("N%d|x:%.0f,y:%.0f,z:%.0f| ", node, Bx, By, Bz);
		node = node +1;
	}	// for loop

	Serial.print("\n");
}

void MagLib::initSDCard()
{
	//Begin the SdFAT file process
    if (!sd.begin()) {
      sd.initErrorHalt();
      Serial.println("ERROR: SD Card Initialisation");
    }
    else{
      Serial.println("SD Card Initialised\n");
    }

	Serial.print("\nLogging data. Filename=");
  	Serial.println(filename);

	// Create file (truncate existing file)
	if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
		Serial.println("ERROR: file open failed");
		return;
	}
	else{
		file.truncate(0); //file with 0 bytes and absolutely no contents in it
		Serial.println("\nLogging. File open OK");
	}
}

void MagLib::SDCardStatus()
{
	//Print Card Information
  Serial.print("FS Type is FAT");
  Serial.print(int(sd.vol()->fatType()) );
  Serial.print("\nCard Size (GB):");
  Serial.print( sd.card()->cardSize()*512E-9 );
  Serial.print("\n\n***SD Card Contents***\n");

  sd.ls(&Serial, "/", LS_R | LS_SIZE ); //SD file listing to BT
  sd.ls(LS_R | LS_DATE | LS_SIZE); //SD file listing to Serial
}


void MagLib::closeSDCard()
{
	file.close();
	Serial.println("SD Card closed.");
}

uint8_t MagLib::setMux(unsigned int muxSet)
{
	//Check the value is no more than the total number of muxes
	if(muxSet > 4) {
		MagError("Invalid MUX");
		//Will never get here: MagError is infinite, but it keeps the compiler happy
		return -1;
	} else {
		/* For each mux use log2 to find num of pins required
		 * e.g. if we have 1 multiplexers, zero pins required to switch
		 * if we have 4 mux (64 node), we need 2 pins to switch between them
		 */
		for(unsigned int muxIdx =1; muxIdx <= log2(NMUX); muxIdx++) {
			//Mask the correct bit and set the correct MUX
			digitalWrite(_mux[muxIdx-1], (muxSet & muxIdx)>>(muxIdx-1));
			/*In otherwords, for the first mux, get the first bit (1&1)
			* and shift it 0 times to right */
		}
	}

	return 1;
}

int MagLib::getFiles(File dir, int numTabs)
{
	Serial.println("Listing files to bt...");
	// sd.ls(&ble, "/", LS_R | LS_SIZE ); 	//SD file listing to BT

	int fileCounter = 0;

	char _filename[16];

	while (true) {

		File entry =  dir.openNextFile();

		if (!entry) {
			// no more files
			break;
		}

		if (!entry.isHidden())
		{
			for (uint8_t i = 0; i < numTabs; i++) {
				Serial.print('\t');
			}

			entry.getName(_filename, sizeof(_filename));

			Serial.println(_filename);
			ble.print(_filename);
			delay(50);

			if (entry.isDirectory()) {
				Serial.println("/");
				getFiles(entry, numTabs + 1);
			}
			// else {
			// 	// files have sizes, directories do not
			// 	Serial.print("\t\t");
			// 	Serial.println(entry.size(), DEC);
			// }

			entry.close();
			fileCounter++;
		}
	}

	return fileCounter;
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

i2c_t3* MagLib::WhichWire(uint8_t wireNo)
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
			Serial.print("\nInvalid wire");
			return &Wire;
			//while(1);
			break;
		}
}
