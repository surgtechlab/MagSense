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
	//: ble_ss(SoftwareSerial(0,1))
{

}

MagLib::~MagLib()
{

}

void MagLib::setupForClient(int platform, int device, int led, int baud, int _sync_read, bool _verbosefb)
{
	PLATFORM = platform;
	DEVICE = device;
	LED = led;
	BAUD = baud;
	
	sync_read = _sync_read;
	verbosefb = _verbosefb;

	pinMode(LED, OUTPUT);
    digitalWrite(LED, LOW);

	pinMode(LED_GREEN, OUTPUT);	// Green LED
	pinMode(LED_RED, OUTPUT);	// Red LED
	pinMode(LED_BLUE, OUTPUT);	// Blue LED

	//Initiate USB Serial
	Serial.begin(BAUD);

	//while (!Serial) { SysCall::yield(); }
	digitalWrite(LED, HIGH); //Signify when Comms active
    delay(1000);
    digitalWrite(LED, LOW);

	//Begin the SdFAT file process
	if (!sd.begin()) {
	  sd.initErrorHalt();
	  Serial.println("ERROR: SD Card Initialisation");
	}
	else {
	  if (verbosefb) Serial.println("SD Card Initialised");
	}

	// Initialise bluetooth according to specified platform.
	switch (PLATFORM) {
		case HM10:
			// BLE fixed BAUD rate at 9600 (can maybe change? look into)
			//ble_ss.begin(9600);
			break;
		case RN4781:
			if (initBLE()) {
				if (verbosefb) Serial.printf("RN4781 Initialised as: %s\n", rn487xBle.getDeviceName());
			}
			else {
				if (verbosefb) Serial.println("ERROR: RN4781 Initialisation failed.");
			}
			break;
		case USB_COMMS:
			Serial.begin(baud);
			break;
		default:
			Serial.println("Unknown BLE Platform specified.");
			while(1);
			break;
	}
	
	Serial.println("RDY");
}

void MagLib::initI2C(int i2cID)
{
	if (verbosefb) Serial.printf("Init i2c: %d\n", i2cID);

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
		if (verbosefb) Serial.println("Init. procedure failed!");
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

void MagLib::initSensingNodesFor(int DEVICE, int BAUD, char *buffer)
{
	if (!Serial) Serial.begin(BAUD);

	if (verbosefb) Serial.printf("*** Begin system for %d nodes *** \n", DEVICE / 6);
	//while (!Serial) { SysCall::yield(); }

	if (verbosefb) Serial.println("\nInitialising Mux...");

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
			break;
		case NODE_8:
			nMUX = 1;
			nI2C = 2;
			nAddress = 4;
			break;
		case NODE_12:
			nMUX = 1;
			nI2C = 3;
			nAddress = 3;
			Serial.println("HAILO is Alive!"); //Signify system active and print version info
			Serial.println(__FILE__);
			Serial.println(__DATE__);
			Serial.println(__TIME__);
			Serial.println("****");
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
			if (verbosefb) {
				Serial.println("FootPlate is Alive!"); //Signify system active and print version info
				Serial.println(__FILE__);
				Serial.println(__DATE__);
				Serial.println(__TIME__);
				Serial.println("****");
			}
			break;
		default:		// default to single node device
			nMUX = 1;	// minimum of 1 to keep log2() function happy
			nI2C = 1;
			nAddress = 1;
			break;
	}
	// Set the number of muxes
	NMUX = nMUX;
	
	mux_bytes = 96 * (nAddress / 4);

	// Init required i2c channels
	for (int i = 0; i < nI2C; i++) initI2C(i);
	if (verbosefb) Serial.println("Initialised I2C Bus");

	initSensingNodes(NodeAddresses, buffer, nMUX, nI2C, nAddress, zyxt, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

	if (verbosefb) {
		Serial.printf("\n*** Initialisation complete | ");
		Serial.printf("time taken: %g s\n", (millis() - _t)/1000.0f);
	}
}

void MagLib::initSensingNodes(	uint8_t *NodeAddresses,
								char *buffer,
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
			if (verbosefb) Serial.printf("\nI2C pins - SDA: PIN%d, SCL: PIN%d\n", WhichWire(i2cID)->getSDA(), WhichWire(i2cID)->getSCL());
			//LOOP through each address
			for(uint8_t nodeId=0; nodeId < nAddress; nodeId++)
			{
				if (verbosefb) Serial.printf("\n\nInit node: %d\n", (nodeId + i2cID*8 + muxId*32));
				nodeAddrObj[nodeId].init(receiveBuffer, NodeAddresses[nodeId], i2cID, muxId, verbosefb);
				nodeAddrObj[nodeId].configure(receiveBuffer, i2cID, GAIN_SEL, RES_XYZ, DIG_FILT, OSR );
				nodeAddrObj[nodeId].startBurstMode(receiveBuffer, zyxt, i2cID);
			} //end address loop
		}//end i2c loop
	}//end MUX loop
	
	Serial.println();
}

void MagLib::readSensingNodesFor(int DEVICE, char *buffer)
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
		case NODE_12:
			nMUX = 1;
			nI2C = 3;
			nAddress = 3;
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

	readSensingNodes(buffer, zyxt, nMUX, nI2C, nAddress);
}

void MagLib::readSensingNodes(	char *buffer,
								char zyxt,
								uint8_t nMUX,
								uint8_t nI2C,
								uint8_t nAddress)
{
	Serial.flush();
	
	//Pack the current time into the receiveBuffer
	unsigned long time = millis();

	//Loop around the muxId instead, so that we can do async calls to each i2c bus
	for(uint8_t muxId =0; muxId < nMUX; muxId++)
	{
		//Set the mux...
		setMux(muxId);

		//LOOP through addresses
		for (uint8_t nodeId=0; nodeId < nAddress; nodeId++)
		{		
			switch (sync_read) {
			case ASYNC:
				//REQUEST LOOP - i2c lines
				for(uint8_t i2cID = 0; i2cID < nI2C; i2cID++) {
					//Now request for each sweep on that device
					nodeAddrObj[nodeId].RequestMeasurement(receiveBuffer, zyxt, i2cID);
				}
				//WAIT LOOP - IS DATA READY
				for(uint8_t i2cID = 0; i2cID < nI2C; i2cID++) {;
					nodeAddrObj[nodeId].AsyncRxFill(receiveBuffer, zyxt, i2cID);
				}
				//READ LOOP
				for(uint8_t i2cID = 0; i2cID < nI2C; i2cID++) {

					//While there's no bytes available to read, do nothing...
					while(!nodeAddrObj[nodeId].measureReady(i2cID));
					
					//Data ready - so read
					nodeAddrObj[nodeId].takeMeasure(receiveBuffer,i2cID);

					//Work out the address
					uint16_t packetOffset = (muxId*mux_bytes)+(nodeId*24)+(i2cID*6)+4;
					// Bytes 0-5 (+offset) are receiveBuffer 3-8
					for (int i = 0; i < NODE_N_BYTE; i++) {
						buffer[i+packetOffset] = receiveBuffer[i+3];
					}	
				}
				break;
			
			case SYNC:
				// Synchronous Measurement Loop
				for (int i2cID = 0; i2cID < nI2C; i2cID++) {
					// Get measurement from sensor
					nodeAddrObj[nodeId].GetMeasurement(receiveBuffer, 0xE, i2cID);
					//Work out the address
					uint16_t packetOffset = (muxId*mux_bytes)+(nodeId*24)+(i2cID*6)+4;
					// Bytes 0-5 (+offset) are receiveBuffer 3-8
					for (int i = 0; i < NODE_N_BYTE; i++) {
						buffer[i+packetOffset] = receiveBuffer[i+3];
					}	
				}
				break;
			default:
				MagError("I2C Timings not specified.");
				break;
			}		
		}
	} //End for
 
	buffer[0] = (time) & 255;
	buffer[1] = ((time)>>8) & 255;
	buffer[2] = ((time)>>16) & 255;
	buffer[3] = ((time)>>24) & 255;

	t_old = time;
}

void MagLib::testNode(	char *receiveBuffer,
						char zyxt,
						uint8_t address,
						uint8_t i2cID,
						uint8_t muxID)
{
	Serial.println("\n/*** SINGLE NODE TESTS ***/\n");
	
	uint8_t GAIN_SEL = 0x00;  //
	uint8_t RES_XYZ = 0x01;  //
	uint8_t DIG_FILT = 0x1;
	uint8_t OSR = 0x1;
	uint8_t node = (address - 0x0C) + (i2cID)*8 + (muxID)*32;

	// Reset and test a specific chip
	setMux(muxID);
	delay(50);

	Serial.printf("Node %d: ", node);
	
	nodeAddrObj[address].init(receiveBuffer, address, i2cID, muxID, verbosefb);
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

void MagLib::readNode(char *buffer, char zyxt, uint8_t address, uint8_t i2cID, uint8_t muxID)
{
	nodeAddrObj[address].RequestMeasurement(buffer, zyxt, i2cID);
	nodeAddrObj[address].AsyncRxFill(buffer, zyxt, i2cID);
	//While there's no bytes available to read, do nothing...
	while(!nodeAddrObj[address].measureReady(i2cID));
	//Data ready - so read
	nodeAddrObj[address].takeMeasure(buffer,i2cID);
}

void MagLib::debug(char *buffer, uint8_t muxID, uint8_t i2cID, uint8_t nodeID)
{
	uint8_t node = nodeID + i2cID*8 + muxID*32;
	
	Serial.printf("Node %d | MLX:L%d\tA:0x%x \t MUX:%d \t ", node, i2cID, nodeAddrObj[nodeID].getAddress(), muxID);
	Serial.printf("status: 0x%x, data:  ", buffer[0]);
	for (int i = 3; i<9;i++) Serial.print(buffer[i], HEX);
	Serial.println();
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

void MagLib::comms_MainMenu(int DEVICE, char *buffer)
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
					const char* payload = rn487xBle.getLastResponse();

					if (payload == NULL)
					{
						for (unsigned i = 0; i < sizeof(magPayload); i++) Serial.print(payload[i]);
						Serial.println();

						commsByte = payload[0];

						switch (commsByte) {
							case '^':
								magPayload[0] =  'R';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								Serial.println("Received ready command");
								break;
							case 'X':
								comms_EstablishContact();
								magPayload[0] = 'X';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								break;
							case 'I':
								magPayload[0] = 'i';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								Serial.println("Initialise System");
								System_Initialise(DEVICE, buffer);
								magPayload[0] = 'I';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								break;
							case 'F':
								files = getFiles(sd.open("/"), 0);
								Serial.printf("Discovered %d files\n", files);
								magPayload[0] = 'F';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								break;
							case 'T':
								magPayload[0] = 't';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								sd_card = test_SD_datalog();
								if (sd_card) {
									magPayload[0] = 'T';
									rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
									Serial.println("Tests successful.");
								}
								else {
									magPayload[0] = 'X';
									rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								}
								break;
							case 'C':
								Serial.println("check sd status");
								comms_SD_Status();
								magPayload[0] = 'C';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								break;
							case 'S':
								//ble.print("s");
								System_Stream(DEVICE, buffer);
								magPayload[0] = 'S';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								break;
							case 'L':
								magPayload[0] = 'l';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								SD_datalog();
								magPayload[0] = 'L';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
								break;
							case 'G':	// get datafile
								magPayload[0] = 'g';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
					            SD_upload();
								magPayload[0] = 'G';
								rn487xBle.writeLocalCharacteristic(magHandle, magPayload);
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
		/*
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
				digitalWrite(LED, status_led); //Toggle LED output
			}
			break;
		*/
		
		case USB_COMMS:
			if (Serial.available() > 0)
			{
				int commsByte = Serial.read();
				
				if (verbosefb) {
					Serial.print("\nCommand Recieved: ");
					Serial.print(commsByte);
					Serial.print("\n");
				}
				
				int files = 0;
				bool sd_card = false;

				switch (commsByte) {
					case '^':
						Serial.println("Received ready command");
						break;
					case 'X':
						comms_EstablishContact();
						Serial.println("^");
						break;
					case 'I':
						Serial.print("i");
						System_Initialise(DEVICE, buffer);
						Serial.println("^");	// End of text stream
						break;
					case 'F':
						files = getFiles(sd.open("/"), 0);
						if (verbosefb) Serial.printf("Discovered %d files\n", files);
						Serial.println("^");
						break;
					case 'T':
						sd_card = test_SD_datalog();
						if (sd_card) {
							if (verbosefb) Serial.println("Tests successful.");
							Serial.print("^");
						} else Serial.print("e");
						break;
					case 'C':
						comms_SD_Status();
						Serial.println("^");
						break;
					case 'S':
						Serial.print("s");
						System_Stream(DEVICE, buffer);
						Serial.println("^");
						break;
					case 'L':
						SD_datalog();
						Serial.println("^");
						break;
					case 'G':	// get datafile
						SD_upload();
						Serial.println("^");
						break;
					case '?':
						menu_help();
						break;
					default:	 // Unknown command - respond accordingly. RTFM
						Serial.println("?");
						break;
				}
			} else {
				delay(500);
				status_led = !status_led;
				digitalWrite(LED, status_led); //Toggle LED output
			}
			break;
		
		default:
			// NO BLE PLATFORM SPECIFIED
			Serial.println("NO PLATFORM SPECIFIED ");
			delay(2000);
			break;
	}
}

void MagLib::System_Initialise(int DEVICE, char *receiveBuffer)
{
	initSensingNodesFor(DEVICE, BAUD, receiveBuffer);

	if (verbosefb) Serial.println("\nSystem Active");
}

void MagLib::System_Stream(int DEVICE, char *buffer)
{
	int commsByte = 0;
	unsigned long t_start;

	do {
		// TAKE READING FROM MAGBOARD
		readSensingNodesFor(DEVICE, SDbuf);
		// BUFFER PADDING
		for (unsigned i = DEVICE; i < BUF_SIZE; i++) SDbuf[i] = 0xEE;

		Serial.write(SDbuf, 1024);

		t_start = millis();
		// Wait for packet acknowledgement
		while (Serial.available() < 1) { 
		
			if ((millis() - t_start) > SERIAL_TIMEOUT_MS) {
				if (verbosefb) Serial.println("*** TIMEOUT EXCEEDED. RETURN TO MENU ***");
				return;
			}
		}

		commsByte = Serial.read();

	} while (commsByte == 83);

	if (verbosefb) Serial.println("\nStream stopped.");
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
	// CHANGE DEPENDING ON PLATFORM
	while (Serial.available() <= 0) {
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
	int minute, hour, day, month;

	// C# Code:
	// byte[] filename = { month, day, hour, minute };
	//Set log-filename - Uses 8.3 name format
	while (ble.available() < 4 ) { }

	month = ble.read();		// MONTH
	day = ble.read();		// DAY
	hour = ble.read();		// HOUR
	minute = ble.read();	// MINUTE
	
	char buffer[64];
			
	if (minute < 10) strncpy(buffer, "0%d", 64);
	else strncpy(buffer, "0%d", 64);
	if (hour < 10) strncat(buffer, "0%d", 64);
	else strncat(buffer, "0%d", 64);
	if (day < 10) strncat(buffer, "0%d", 64);
	else strncat(buffer, "0%d", 64);
	if (month < 10) strncat(buffer, "0%d", 64);
	else strncat(buffer, "0%d", 64);
	
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

	digitalWrite(LED, HIGH); //Set StatusLED ON during write

	//*** LOGGING LOOP ******************
	log_start_time = millis();

	for (uint32_t i = 0; i < max_writes; i++) {
		m = micros(); //read time

		readSensingNodesFor(DEVICE, SDbuf);
		// Serial.println("\n**************receiveBuffer:");
		// Serial.write(SDbuf,BUF_SIZE);

		write_size = file.write(SDbuf, BUF_SIZE);

		for (unsigned j = 0; j < max_writes; j+=max_writes/10) if (i == j)
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

	digitalWrite(LED, LOW);
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
	
	bool led = false;
	
	int minute, hour, day, month;

	//**********************************************
	switch (PLATFORM) {
		
		case RN4781:
		
			//Set log-filename - Uses 8.3 name format
			while (ble.available() < 4 ) { }
		
			month = ble.read();		// MONTH
			day = ble.read();		// DAY
			hour = ble.read();		// HOUR
			minute = ble.read();	// MINUTE
			
			char buffer[64];
					
			if (minute < 10) strncpy(buffer, "0%d", 64);
			else strncpy(buffer, "0%d", 64);
			if (hour < 10) strncat(buffer, "0%d", 64);
			else strncat(buffer, "0%d", 64);
			if (day < 10) strncat(buffer, "0%d", 64);
			else strncat(buffer, "0%d", 64);
			if (month < 10) strncat(buffer, "0%d", 64);
			else strncat(buffer, "0%d", 64);
			
			sprintf(filename, buffer, month, day, hour, minute);
			
			break;
			
		case HM10:
			break;
			
		case USB_COMMS:
			//Set log-filename - Uses 8.3 name format
			Serial.println("Enter filename");
			
			while (Serial.available() < 8) { }
			
			for (int i = 0; i < Serial.available(); i++)
				filename[i] = Serial.read();
		
			break;
		
		default:
			Serial.println("NO PLATFORM SPECIFIED");
			return;
	}
	
	//Set log-filename - Uses 8.3 name format
	Serial.println("Enter filename");
	
	while (Serial.available() < 8) { }
	
	for (int i = 0; i < 8; i++)
		filename[i] = Serial.read();
	
    Serial.print("Logging. Filename=");
    Serial.println(filename);

    // Create file (truncate existing file)
    if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
		Serial.println("ERROR: file open failed");
		//ble.print("E");
		return;
    } else {
		file.truncate(0); //file with 0 bytes and absolutely no contents in it
  		Serial.println("File open OK");
    }

    digitalWrite(LED, HIGH); //Set StatusLED ON during write

    //*** LOGGING LOOP ******************
	log_start_time = millis();

	Serial.flush();

	for (uint32_t i = 0; i < max_writes; i++) {

		m = micros();                 //read time
		readSensingNodesFor(DEVICE, SDbuf);    //take reading
		write_size = file.write(SDbuf, BUF_SIZE);

		// Print percentage of cycle
		for (unsigned j = 0; j < max_writes; j+=max_writes/10) if (i == j)
			Serial.printf("%d%%\n", j/(max_writes/100));

		// Blink LED for every 1% of file written
		for (unsigned j = 0; j < max_writes; j+=max_writes/100) if (i == j) {
			digitalWrite(13, led);
			led = !led;
		}
		 
		if (write_size != BUF_SIZE) {
			sd.errorPrint("write failed");
			file.close();
			return;
		}

		m = micros() - m;

		//Regulate loop rate here*
		do {
			delayMicroseconds(100);
			m =  micros();
		} while ( (m - m_last) < loop_dt);

		m_last = m;
		//************************
		  
		num_writes = i;
	} //End write loop *****************

	digitalWrite(LED, LOW);
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

	Serial.print("\nTotal time elapsed: ");
	Serial.print( log_elapsed_time/1000 );
	Serial.println("s");
}

void MagLib::SD_upload()
{
	// Serial.println("Listing files to bt...");
	// sd.ls(&ble, "/", LS_R | LS_SIZE ); 	//SD file listing to BT

	float logfile_size;
	uint32_t nr;

	int minute, hour, day, month;

	// C# Code:
	// byte[] filename = { month, day, hour, minute };
	//Set log-filename - Uses 8.3 name format
	while (ble.available() < 4 ) { }

	month = ble.read();		// MONTH
	day = ble.read();		// DAY
	hour = ble.read();		// HOUR
	minute = ble.read();	// MINUTE
	
	char buffer[64];
			
	if (minute < 10) strncpy(buffer, "0%d", 64);
	else strncpy(buffer, "0%d", 64);
	if (hour < 10) strncat(buffer, "0%d", 64);
	else strncat(buffer, "0%d", 64);
	if (day < 10) strncat(buffer, "0%d", 64);
	else strncat(buffer, "0%d", 64);
	if (month < 10) strncat(buffer, "0%d", 64);
	else strncat(buffer, "0%d", 64);
	
	sprintf(filename, buffer, month, day, hour, minute);

    Serial.print("Logging. Filename=");
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

	digitalWrite(LED, HIGH); //Set StatusLED ON during write

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
	digitalWrite(LED, LOW); //Set StatusLED ON during write
}

void MagLib::menu_help()
{
	Serial.println("\n*****************************************");
	Serial.println("     COMMS MENU INTERFACE FUNCTIONS     ");
	Serial.println("*****************************************");
	
	Serial.println("\n\tI --> Initialise System.");
	Serial.println("\n\tF --> Show SD Card Files.");
	Serial.println("\n\tT --> Test SD Data Logging.");
	Serial.println("\n\tC --> Check SD Card Status.");
	Serial.println("\n\tL --> Log Data to SD Card.");
	Serial.println("\n\tS --> Stream Data Over Serial.");
	Serial.println("\n\tG --> Upload File [requires filename].\n\n");
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
		
		// Delay to allow the mux to settle
		delayMicroseconds(500);
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
void MagLib::MagError(const char *errString){
	//How quickly do you want to flash the error?
	static const unsigned int repRate = 250;

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
