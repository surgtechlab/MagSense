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

	digitalWrite(LED, HIGH); //Signify when Comms active
    delay(1000);
    digitalWrite(LED, LOW);

	//Begin the SdFAT file process
	if (!sd.begin()) {
	  sd.initErrorHalt();
	  Serial.println("ERROR: SD Card Initialisation Failed.");
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
		case BLE:
			if (initBLE("RN_BLE")) {
				if (verbosefb) Serial.printf("RN4781 Initialised as: %s\n", rn487xBle.getDeviceName());
			}
			else {
				if (verbosefb) Serial.println("ERROR: RN4781 Initialisation failed.");
				else Serial.println(".BLE");
				while(1);
			}
			break;
		case SERIAL:
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
	thisWire->begin(I2C_MASTER, 0x00, BRD_I2C_PINS[i2cID], I2C_PULLUP_EXT, 400000);
	thisWire->setDefaultTimeout(200000);

	thisWire->setOpMode(I2C_OP_MODE_ISR);
	thisWire->setRate(I2C_RATE_400);
}

bool MagLib::initBLE(const char* name)
{
	  // Set the optional debug stream
	rn487xBle.setDiag(debugSerial);

	// Initialize the BLE hardware
	rn487xBle.hwInit();

	// Open the communication pipe with the BLE module
	bleSerial.begin(rn487xBle.getDefaultBaudRate());

	// Assign the BLE serial port to the BLE library
	rn487xBle.initBleStream(&bleSerial);

	// Finalize the init. process
	if (!rn487xBle.swInit())
	{
		debugSerial.println("BLE init procedure failed!");
		while(1);
	}

	// Enter command mode
	rn487xBle.enterCommandMode();

	// Factory reset
	rn487xBle.factoryReset();

	// Back into command mode
	rn487xBle.enterCommandMode();

	// Enable service: transparent UART & Device info
	rn487xBle.setDefaultServices(UART_TRANSP_SERVICE | DEVICE_INFO_SERVICE);

	// Enable features: fast mode (0x2000), and RN4020 MLDP streaming (0x0020)
	rn487xBle.setSupportedFeatures(FAST_MODE | MLDP_SUPPORT_BMP);

	// Setup connection parameters
	rn487xBle.setConnectionParams(0x0010, 0x0024, 0x0001, 0x64);

	// Set device name
	rn487xBle.setDevName("Brace+");

	// Enable echo
	rn487xBle.enableEcho();

	// Set the advertising/conneciton output power (range: min = 5, max = 0)
	rn487xBle.setAdvPower(0); 
	rn487xBle.setConPower(0);

	// Reboot to make changes take effect.
	rn487xBle.reboot();

	// Enable the UART stream
	rn487xBle.enableStream();

	return true;
}

void MagLib::initSensingNodesFor(int _DEVICE, int BAUD, char *buffer)
{
	if (!Serial) Serial.begin(BAUD);

	if (verbosefb) Serial.printf("*** Begin system for %d nodes *** \n", DEVICE / 6);
	if (verbosefb) Serial.println("\nInitialising Mux...");

	if (!sync_read) sync_read = ASYNC;

	long _t = millis();

	uint8_t NodeAddresses[8] = {0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13};
	uint8_t nAddress;
	uint8_t nI2C;
	uint8_t nMUX;

	//  Axis selection: 0xE (0b1110) => ZYX and ignore T.
	uint8_t zyxt = 0xE;		
	
	// Gain and resolution selection of 0 equates to sensivities of 0.751 and 1.210 in XY and Z axes respectively.
	// Sensitvity is defined as uT / LSB, see table 14, page 27 of MLX90393 datasheet for reference.
	uint8_t GAIN_SEL = 0x00; 
	uint8_t RES_XYZ = 0x00;  	

	// Digital filter value of 0x1 and OSR value of 0x1 equates to conversion time for XYZT 2.23ms.
	// See table 16, page 28 of MLX90393 datasheet for reference.
	uint8_t DIG_FILT = 0x1;
	uint8_t OSR = 0x1;
	
	// For majority of systems developed, hardware is designed so Multiplexer select pins 0-3 are connected to
	// pins 5-8 on the MCU. Only Mag128 Interface board varies (values set explicitly).
	_muxSelect[0] = 5;
	_muxSelect[1] = 6;
	_muxSelect[2] = 7;
	_muxSelect[3] = 8;

	// Set up settings for device
	switch (_DEVICE) {
		case NODE_SINGLE:
			nMUX = 1;
			nI2C = 1;
			nAddress = 1;
			break;
		case NODE_4:
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
			if (verbosefb) {
				Serial.println("HAILO is Alive!"); //Signify system active and print version info
				Serial.println(__FILE__);
				Serial.println(__DATE__);
				Serial.println(__TIME__);
				Serial.println("****");
			}
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
			if (verbosefb) {
				Serial.println("MagBoard is Alive!"); //Signify system active and print version info
				Serial.println(__FILE__);
				Serial.println(__DATE__);
				Serial.println(__TIME__);
				Serial.println("****");
			}
			break;
		case NODE_128:
			// Set system params
			nMUX = 4;
			nI2C = 4;
			nAddress = 8;
			// Interface board has different MUX select pins to other boards.
			_muxSelect[0] = 17;
			_muxSelect[1] = 36;
			_muxSelect[2] = 2;
			_muxSelect[3] = 55;
			// Enable interface LEDs
			pinMode(LED_CONNECT, OUTPUT);
			pinMode(LED_LOGGING, OUTPUT);
			pinMode(LED_CONTACT, OUTPUT);
			// Set all to low
			digitalWrite(LED_CONNECT, LOW);
			digitalWrite(LED_LOGGING, LOW);
			digitalWrite(LED_CONTACT, LOW);
			
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

	// Set the number of muxes and calculate bytes returned per mux line/i2c line
	NMUX = nMUX;
	i2c_bytes = NODE_N_BYTE * nI2C;
	mux_bytes = NODE_N_BYTE * nI2C * nAddress;
		
	// Initialise mux Pins
	pinMode(_mux[0], OUTPUT);
	pinMode(_mux[1], OUTPUT);
	
	// Configure MUX enable pins
	for (int i = 0; i < nMUX; i++) {
		pinMode(_muxSelect[i], OUTPUT);
	}
	// Enable all MUX chips (active low)
	for (int i = 0; i < nMUX; i++) {
		digitalWrite(_muxSelect[i], LOW);
	}
	if (verbosefb) Serial.println("Initialised MUX chips"); 

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
			if (verbosefb) Serial.printf("\nI2C pins - SDA: PIN%d, SCL: PIN%d\n",
											WhichWire(i2cID)->getSDA(),
											WhichWire(i2cID)->getSCL());

			//LOOP through each address
			for(uint8_t nodeId=0; nodeId < nAddress; nodeId++)
			{
				if (verbosefb) Serial.printf("\n\nInit node: %d\n", (nodeId + i2cID*nAddress + muxId*nAddress*4));
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
		case NODE_4:
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
				for(uint8_t i2cID = 0; i2cID < nI2C; i2cID++) {
					nodeAddrObj[nodeId].AsyncRxFill(receiveBuffer, zyxt, i2cID);
				}
				//READ LOOP
				for(uint8_t i2cID = 0; i2cID < nI2C; i2cID++) {

					// While there's no bytes available to read, do nothing...
					while(!nodeAddrObj[nodeId].measureReady(i2cID));
					
					// Data ready - so read
					nodeAddrObj[nodeId].takeMeasure(receiveBuffer,i2cID);
					
					// Calculate the address
					uint16_t packetOffset = (muxId*mux_bytes)+(nodeId*i2c_bytes)+(i2cID*6)+4;
					
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
					uint16_t packetOffset = (muxId*192)+(nodeId*24)+(i2cID*6)+4;
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
	
	//unsigned long read_t = micros() - m;
	//Serial.printf("Read time: %d\n", read_t);
	unsigned long time = millis() - t_start;

	buffer[0] = (time) & 255;
	buffer[1] = ((time)>>8) & 255;
	buffer[2] = ((time)>>16) & 255;
	buffer[3] = ((time)>>24) & 255;
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

void MagLib::comms_MainMenu(int _DEVICE, char *buffer)
{
	int files = 0;
	bool sd_card;
	int commsByte;
	char input[128];
	int inputLen = sizeof(input);
	
	switch (PLATFORM) {
		case BLE:
			// If data available?		
			if (rn487xBle.isInputBuffer())
			{
				// Device is connected.
				digitalWrite(LED_GREEN, HIGH);
				// Read BLE input
				int avail = rn487xBle.available();   
				for (int i = 0; i < avail; i++) input[i] = rn487xBle.getInputBuffer();
				
				if (verbosefb) {
					Serial.print("Received buffer: ");
					Serial.write(input);
					Serial.println();
				}
				
				// Check input from RN4781 chip
				if (input == DISCONNECT) {
					sys_connect = false;
					break;
				}
				
				// Extract comms byte (will only be 1 char when communicating with client)
				commsByte = input[0];
				// Clear input array
				memset(input, 0, inputLen);
							
				switch (commsByte) {
					case '^': 	// '^'
						rn487xBle.sendData("R", 1);
						if (verbosefb) Serial.println("Received ready command");
						break;
					case 'I':
						rn487xBle.sendData("i", 1);
						System_Initialise(DEVICE, buffer);
						Serial.println("OK");
						rn487xBle.sendData("^", 1);
						break;
					case 'F':
						files = getFiles(sd.open("/"), 0);
						rn487xBle.sendData("^", 1);
						break;
					case 'C':
						if (verbosefb) Serial.println("Checking SD status.");
						comms_SD_Status();
						rn487xBle.sendData("^", 1);
						break;
					case 'S':
						System_Stream(DEVICE, buffer);
						rn487xBle.sendData("^", 1);
						break;
					case 'D':
						System_LongTerm_Logging(1, 30, DEVICE, buffer);
						rn487xBle.sendData("^", 1);
						break;
					case 'L':
						SD_datalog();
						rn487xBle.sendData("^", 1);
						break;
					case 'G':	// get datafile def
						SD_upload();
						rn487xBle.sendData("^", 1);
						break;
					case '.':	// Disconnect
						sys_connect = false;
						if (verbosefb) {
							Serial.println("Disconnected from client.");
						}
						break;
					case '%':	// RN4781 Debugging
						break;
					default:	 // Unknown command - respond accordingly. RTFM
						if (verbosefb) { 
							Serial.print(commsByte);
							Serial.println(" ?");
							delay(50);
						}
						break;
				}	// switch commsByte				
			} else {	// if data available
				if ((DEVICE == BRACE) && sys_connect) {
					status_led = !status_led;
					digitalWrite(LED_GREEN, status_led); //Toggle LED output
					digitalWrite(LED_RED, LOW);
				} else if (DEVICE == BRACE) {
					status_led = !status_led;
					digitalWrite(LED_GREEN, LOW);
					digitalWrite(LED_RED, status_led); //Toggle LED output
				}
				// Delay inter connection polling - when not connected, check for new connections every 1 second
				delay(1000);
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

		case SERIAL:
			if (Serial.available() > 0)
			{
				int commsByte = Serial.read();

				if (verbosefb) {
					Serial.print("\nCommand Recieved: ");
					Serial.print(commsByte);
					Serial.print("\n");
				}
				
				if (DEVICE == FOOTPLATE) digitalWrite(LED_CONNECT, HIGH);

				int files = 0;
				bool sd_card = false;

				switch (commsByte) {
					case '^':
						Serial.println("Received ready command");
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
					case 'C':
						comms_SD_Status();
						Serial.println("^");
						break;
					case 'S':
						Serial.print("s");
						System_Stream(DEVICE, buffer);
						Serial.println("^");
						break;
					case 'D':
						System_LongTerm_Logging(1, ONE_MIN, DEVICE, buffer);
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
					case 'P':
						readSensingNodesFor(DEVICE, buffer);
						printASCIIData(buffer, DEVICE);
						break;
					case '?':
						menu_help();
						break;
					default:	 // Unknown command - respond accordingly. RTFM
						Serial.println("?");
						break;
				}
			} else {
				if (DEVICE == FOOTPLATE) {
					digitalWrite(LED_CONNECT, LOW);
					digitalWrite(LED_LOGGING, LOW);
					digitalWrite(LED_CONTACT, LOW);
					
					status_led = !status_led;
					digitalWrite(LED, status_led); //Toggle LED output
				} else if (DEVICE == BRACE) {
					status_led = !status_led;
					digitalWrite(LED_GREEN, status_led);
				} else {
					status_led = !status_led;
					digitalWrite(LED, status_led); //Toggle LED output
				}
				delay(500);
				
			}
			break;

		default:
			// NO BLE PLATFORM SPECIFIED
			Serial.println("NO PLATFORM SPECIFIED ");
			delay(5000);
			break;
	}
}

void MagLib::System_Initialise(int DEVICE, char *receiveBuffer)
{
	// Make LED on whilst initialising.
	digitalWrite(LED, HIGH);

	initSensingNodesFor(DEVICE, BAUD, receiveBuffer);

	// Make LED low and short delay to allow time for system settle.
	delay(100);
	digitalWrite(LED, LOW);

	sys_connect = true;
	if (verbosefb) Serial.println("\nSystem Active");
}

void MagLib::System_Stream(int DEVICE, char *buffer)
{
	int commsByte = 83;
	unsigned long t_serial = 0;
	unsigned long t_start = millis();
	
	// Time packet relative to start of the stream command, 
	// not since device first turned on.
	t_start = millis();
	
	uint32_t m = 0;
	uint32_t m_last = 0;
	// Loop dT in micro sec (100Hz)
	uint32_t loop_dt = 10000; //loop dT in micro secs (100Hz)
	
	if (verbosefb) Serial.println("Stream started");

	do {
		// TAKE READING FROM MAGBOARD
		readSensingNodesFor(DEVICE, SDbuf);
		// BUFFER PADDING
		for (unsigned i = DEVICE; i < BUF_SIZE; i++) SDbuf[i] = 0xEE;

		// Take initial time to check for timeout.
		t_serial = millis();

		// Begin comms on specified platform		
		switch (PLATFORM)
		{
			case SERIAL:
				// Write buffer to serial port.
				Serial.write(SDbuf, 1024);
				// Wait for packet acknowledgement
				while (Serial.available() < 1) {
					if ((millis() - t_serial) > SERIAL_TIMEOUT_MS) {
						if (verbosefb) Serial.println("\n*** TIMEOUT EXCEEDED. RETURN TO MENU ***");
						return;
					}
				}
				// Read Serial input when bytes available.
				commsByte = Serial.read();
				break;
				
			case BLE:
				// Write buffer to BLE
				rn487xBle.sendData(SDbuf, 100);					
				// Wait for packet acknowledgement
				while (rn487xBle.available() < 1) {
					if ((millis() - t_serial) > SERIAL_TIMEOUT_MS) {
						if (verbosefb) Serial.println("\n*** TIMEOUT EXCEEDED. RETURN TO MENU ***");
						return;
					}
				}
				
				// Read BLE input
				commsByte = rn487xBle.getInputBuffer();
				break;
		}
		
		// Toggle LED every read
		digitalWrite(LED, status_led);
		status_led = !status_led;
	} while (commsByte == 83);
	
	digitalWrite(LED, LOW);
	if (verbosefb) Serial.println("Stream stopped.");
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

	sd.ls(LS_R | LS_DATE | LS_SIZE); 	//SD file listing to Serial
}

void MagLib::SD_datalog()
{
	if (DEVICE == FOOTPLATE) digitalWrite(LED_LOGGING, HIGH);
	
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

		case BLE:
			//Set log-filename - Uses 8.3 name format
			rn487xBle.sendData("E", 1);

			while (rn487xBle.available() < 8) { }

			for (int i = 0; i < 8; i++)
				filename[i] = rn487xBle.getInputBuffer();

			break;

		case HM10:
			break;

		case SERIAL:
			//Set log-filename - Uses 8.3 name format
			if (verbosefb) Serial.println("Enter filename");
			else Serial.println('E');

			while (Serial.available() < 8) { }

			for (int i = 0; i < 8; i++)
				filename[i] = Serial.read();

			break;

		default:
			Serial.println("\n*** NO PLATFORM SPECIFIED");
			return;
	}

	if (verbosefb) {
		Serial.print("Logging. Filename=");
		Serial.println(filename);
	}

    // Create file (truncate existing file)
    if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
		if (verbosefb) Serial.println("ERROR: file open failed");
		else Serial.print('.');
		return;
    } else {
		file.truncate(0); //file with 0 bytes and absolutely no contents in it
  		if (verbosefb) Serial.println("File open OK");
		else Serial.print('>');
    }

    digitalWrite(LED, HIGH); //Set StatusLED ON during write
	
	// To be packed into sensor read buffer[0:3]
	t_start = millis();
    //*** LOGGING LOOP ******************
	log_start_time = millis();
	for (uint32_t i = 0; i < max_writes; i++) {
		m = micros();                 //read time
		readSensingNodesFor(DEVICE, SDbuf);    //take reading
		write_size = file.write(SDbuf, BUF_SIZE);

		// Blink LED for every 1% of file written (check remainder == 0)
		if ((i % (max_writes/100)) == 0) {
			digitalWrite(13, led);
			led = !led;
			if (!verbosefb) Serial.print("%");
		}
		if (write_size != BUF_SIZE) {
			sd.errorPrint("write failed");
			Serial.print(".");
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

	if (verbosefb && (PLATFORM == SERIAL)) {
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
	
	if (DEVICE == FOOTPLATE) digitalWrite(LED_LOGGING, LOW);
}

void MagLib::System_LongTerm_Logging(int delta, int period, int DEVICE, char *buffer)
{
	if (DEVICE == FOOTPLATE) digitalWrite(LED_LOGGING, HIGH);
	
	uint32_t max_writes = FILE_SIZE/sizeof(SDbuf); //max number of writes to SD file
    uint32_t num_writes = 0;
    uint32_t log_start_time, log_elapsed_time, m, m_last;
    int32_t write_size;
	
	int _buf_size = 0;
	switch (DEVICE) {
		
		case BRACE:
			_buf_size = 100;
			break;
			
		case FOOTPLATE:
			_buf_size = BUF_SIZE;
			break;
			
		default:
			break;
	}

	uint32_t loop_dt = delta * 1000000; 	// Loop dT in microsec
	uint32_t max_time = period * 1000; 	// Max writing time in sec

	bool led = false;

	//**********************************************
	switch (PLATFORM) {

		case BLE:
			//Set log-filename - Uses 8.3 name format
			rn487xBle.sendData("E", 1);

			while (rn487xBle.available() < 8) { }

			for (int i = 0; i < 8; i++)
				filename[i] = rn487xBle.getInputBuffer();

			break;

		case HM10:
			break;

		case SERIAL:
			//Set log-filename - Uses 8.3 name format
			if (verbosefb) Serial.println("Enter filename");
			else Serial.println('E');

			while (Serial.available() < 8) { }

			for (int i = 0; i < 8; i++)
				filename[i] = Serial.read();

			break;

		default:
			Serial.println("\n*** NO PLATFORM SPECIFIED.\nRETURNING TO MENU.");
			return;
	}
	
	if (verbosefb) {
		Serial.print("Logging. Filename=");
		Serial.println(filename);
	}

    // Create file (truncate existing file)
    if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
		Serial.println("ERROR: file open failed");
		return;
    } else {
		file.truncate(0); //file with 0 bytes and absolutely no contents in it
  		if (verbosefb) Serial.println("File open OK");
		else Serial.print('>');
    }

    digitalWrite(LED, HIGH); //Set StatusLED ON during write
	
	// To be packed into sensor read buffer[0:3]
	t_start = millis();
    //*** LOGGING LOOP ******************
	log_start_time = millis();
	
	while ((num_writes < max_writes) && (log_elapsed_time < max_time)) {

		m = micros();
		
		readSensingNodesFor(DEVICE, SDbuf);    //take reading
		write_size = file.write(SDbuf, _buf_size);
					
		if (DEVICE == BRACE) {
			digitalWrite(LED_GREEN, led);
			led = !led;
		} else {
			digitalWrite(13, led);
			led = !led;
		}
	
		if (write_size != _buf_size) {
			sd.errorPrint("write failed");
			Serial.print(".");
			file.close();
			return;
		}
		m = micros() - m;
		//Regulate loop rate here
		do {
			delay(100);
			m =  micros();
		} while ( (m - m_last) < loop_dt);
		
		m_last = m;
		
		log_elapsed_time = millis() - log_start_time;
		
		//************************
		num_writes++;
	} //End write loop *****************

	digitalWrite(LED, LOW);
	file.sync();
	log_elapsed_time = millis() - log_start_time;
	file.close();

	if (verbosefb) {
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
	
	if (DEVICE == FOOTPLATE) digitalWrite(LED_LOGGING, LOW);
}

void MagLib::SD_upload()
{
	float logfile_size;
	//uint32_t nr;

	int month, day, hour, minute;
	//**********************************************
	switch (PLATFORM) {

		case BLE:
			//Set log-filename - Uses 8.3 name format
			rn487xBle.sendData("E", 1);

			while (rn487xBle.available() < 8) { }

			for (int i = 0; i < 8; i++)
				filename[i] = rn487xBle.getInputBuffer();

			break;

		case HM10:
			break;

		case SERIAL:
			// Maximum of 8 bytes for name
			if (verbosefb) Serial.println("Enter filename:");
			else Serial.println('E');

			while (Serial.available() < 8) { }

			for (int i = 0; i < 8; i++)
				filename[i] = Serial.read();

			break;

		default:
			Serial.println("\n*** NO PLATFORM SPECIFIED");
			return;
	}

	Serial.flush();
    if (verbosefb) {
		Serial.print("Opening file: ");
		Serial.println(filename);
	}

  	// Create file (truncate existing file)
	if (!file.open(filename, O_RDONLY)) {
	    if (verbosefb) Serial.println("ERROR: file open failed");
		else Serial.println('.');
	    return;
	} else {
		if (verbosefb) Serial.print("File open OK: ");
	}

	logfile_size = file.fileSize();
	if (verbosefb) {
		Serial.print("\nLog Filesize = ");
		Serial.println(logfile_size);
	}

	digitalWrite(LED, HIGH); //Set StatusLED ON during write

	int commsByte = 0;
	int _buf_size = 0;
	switch (DEVICE) {
		
		case BRACE:
			_buf_size = 100;
			break;
			
		case FOOTPLATE:
			_buf_size = BUF_SIZE;
			break;
			
		default:
			break;
	}
	int max_reads = logfile_size / _buf_size;
	
	unsigned long t_start;
	
	if (PLATFORM == BLE) rn487xBle.flush();
	
	if (verbosefb) {
		Serial.printf("max reads: %d\n", max_reads);
		Serial.printf("buf size: %d\n", _buf_size);
	}

	// Loop through all lines in file
	for (int num_reads = 0; num_reads < max_reads; num_reads++) {
		
		// Take initial timing reading for timeout function
		t_start = millis();
		do {
			
			// Take initial time to check for timeout.
			t_start = millis();
			// Take reading from file
			file.read(SDbuf, _buf_size);
			
			switch (PLATFORM) {
				
				case SERIAL:
					// End of file?
					if (num_reads == max_reads-1) {
						Serial.flush();
						SDbuf[0] = 0xFF;
						SDbuf[1] = 0xFF;
						SDbuf[2] = 0xFF;
					}
					// Write to serial comms port
					Serial.write(SDbuf, _buf_size);
					// Wait for packet acknowledgement
					while (Serial.available() < 1) {
						if ((millis() - t_start) > SERIAL_TIMEOUT_MS) {
							if (verbosefb) Serial.println("\n*** TIMEOUT EXCEEDED. RETURN TO MENU ***");
							file.close();
							return;
						}
					}
					commsByte = Serial.read();
					break;
				
				case BLE:
					// End of file?
					if (num_reads == max_reads-1) {
						rn487xBle.flush();
					}
					// Write buffer to BLE
					rn487xBle.sendData(SDbuf, _buf_size);					
					
					while (rn487xBle.available() < 1) {
						if ((millis() - t_start) > SERIAL_TIMEOUT_MS) {
							if (verbosefb) Serial.println("\n*** TIMEOUT EXCEEDED. RETURN TO MENU ***");
							return;
						}
					}
					// Read BLE input
					commsByte = rn487xBle.getInputBuffer();
					break;
			}	
						
			// Handshaking - expecting 'G' or 71 in ASCII
		} while(commsByte == 71);
	}

	if (verbosefb) Serial.println("File upload finished.");

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
	Serial.println("\n\tG --> Upload File [requires filename].");
	Serial.println("\n\tP --> Print Formatted Data.");
	
	Serial.println(); 
}

void MagLib::EnableVerboseFeedback()
{
	verbosefb = true;
}

void MagLib::DisableVerboseFeedback()
{
	verbosefb = false;
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
}

void MagLib::printASCIIData(char *receiveBuffer, int size)
{
	float Bx = 0;
	float By = 0;
	float Bz = 0;

	unsigned long time = receiveBuffer[0]+(receiveBuffer[1]<<8)+(receiveBuffer[2]<<16)+(receiveBuffer[3]<<24);

	Serial.printf("Read time: %ld ms | ", time);

	for (int i = 4; i < size; i+=6) { //loop through all sensor
		Bx = (receiveBuffer[i] * 256) + receiveBuffer[i+1] * 0.00805f;
		By = (receiveBuffer[i+2] * 256) + receiveBuffer[i+3] * 0.00805f;
		Bz = (receiveBuffer[i+4] * 256) + receiveBuffer[i+5] * 0.02936f;
		Serial.printf("N%d|x:%.0f,y:%.0f,z:%.0f | ", (i-4)/6, Bx, By, Bz);
	}	// for loop

	Serial.print("\n");
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
		delayMicroseconds(250);
	}

	return 1;
}

int MagLib::getFiles(File dir, int numTabs)
{
	int fileCounter = 0;
	char _filename[20];

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
			
			switch (PLATFORM) {
				
				case SERIAL:
					Serial.println(_filename);
					break;
				
				case BLE:
					if (verbosefb) Serial.println(_filename);
					rn487xBle.sendData(_filename, sizeof(_filename));
					break;
					
				default:
					break;
			}
			
			//memset(_filename, 0, 20);
			delay(100);

			if (entry.isDirectory()) {
				Serial.println("/");
				getFiles(entry, numTabs + 1);
			}

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
