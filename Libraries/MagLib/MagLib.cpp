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
{
    
}

MagLib::~MagLib()
{

}

void MagLib::setupForClient(int ledPin, int SerialBaud, int BluetoothBaud)
{
	_ledPin = ledPin;

	pinMode(_ledPin, OUTPUT);
    digitalWrite(_ledPin, LOW);

	//Initiate USB Serial + BT comms
	Serial.begin(SerialBaud);
    BTSerial.begin(BluetoothBaud);

	while (!Serial) { SysCall::yield(); }
	digitalWrite(_ledPin, HIGH); //Signify when Comms active
    delay(1000);
    digitalWrite(_ledPin, LOW);

	//Begin the SdFAT file process
	if (!sd.begin()) {
	  sd.initErrorHalt();
	  Serial.println("ERROR: SD Card Initialisation");
	}
	else{
	  Serial.println("SD Card Initialised\n");
	}

	Serial.println("Waiting for BT connection");
	comms_EstablishContact();
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

void MagLib::initSensingNodesFor(unsigned DEVICE, int BAUD, char *buffer)
{
	if (!Serial) Serial.begin(BAUD);

	Serial.printf("*** Begin system for %d nodes *** \n", DEVICE / 6);
	while (!Serial) { SysCall::yield(); }

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

	initSensingNodes(NodeAddresses, buffer, nMUX, nI2C, nAddress, zyxt, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

	Serial.printf("\n*** Initialisation complete | ");
	Serial.printf("time taken: %g s\n", millis()/1000.0f);
}

void MagLib::initSensingNodes(	uint8_t *NodeAddresses,
								char *_receiveBuffer,
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

void MagLib::readSensingNodesFor(unsigned DEVICE, char *buffer)
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
	//Pack the current time into the buffer
	unsigned long time = millis();

	buffer[3] = (time) & 255;
	buffer[2] = ((time)>>8) & 255;
	buffer[1] = ((time)>>16) & 255;
	buffer[0] = ((time)>>24) & 255;

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

				//Work out the address
				uint16_t packetOffset = (muxId*96)+(i2cID*24)+(nodeId*6)+4;
				// Bytes 0-5 (+offset) are receiveBuffer 3-8
				for (int i = 0; i < NODE_N_BYTE; i++) {
					buffer[i+packetOffset] = receiveBuffer[i+3];
				}
			}
		}
	} //End for

	t_old = time;
}

void MagLib::comms_MainMenu()
{
	if (BTSerial.available() > 0)
	{
		int commsByte = BTSerial.read();
		Serial.print("\nCommand Recieved: ");
		Serial.print(commsByte);
		Serial.print(" ");

		switch (commsByte) {
			case '>':
				BTSerial.print("RDY");
				break;
			case 'I':
				BTSerial.print("i");
				Serial.println("Initialise System");
				System_Initialise();
				BTSerial.print("^");	// End of text stream
				break;
			case 'C':
				BTSerial.print("c");
				Serial.println("Check SD Card");
				comms_SystemCheck();
				BTSerial.print("^"); 	//End of text stream
			case 'S':
				BTSerial.print("s");
				Serial.println("Stream Data");
				System_Stream();
				break;
			case 'L':
				BTSerial.print("l");
				Serial.println("Data Logging");
				SD_datalog();
				break;
			case 'G':	// get datafile
				BTSerial.print("g");
	            Serial.println("Upload SD file");
	            SD_upload();
	            break;
			case 'X':
				comms_EstablishContact();
				break;
			default:	 // Unknown command - respond accordingly. RTFM
				Serial.println("?");
				break;
		}
	} else {
		Serial.print("\nBT Unavailable.");
		delay(1000);
        status_led = !status_led;
        digitalWrite(_ledPin, status_led); //Toggle LED output
	}
}

void MagLib::System_Initialise()
{
	BTSerial.println("\nInitialising I2C Bus...");
	Serial.println("\nInitialising I2C Bus...");

	initSensingNodesFor(MAGBOARD, 115200, mag_buffer);

	BTSerial.println("\nInitialising Mux...");
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

	Serial.println("\nInitialised I2C Bus");
    BTSerial.println("\nInitialised I2C Bus");

    delay(500);

	Serial.println("\nSystem Active");
    BTSerial.println("\nSystem Active");
}

void MagLib::System_Stream()
{
	int commsByte = 0;
    int packet_size = MAGBOARD;
    unsigned long time = 0;
	char stream_packet_header[5];

	do {
		//TAKE READING FROM MAGBOARD
		readSensingNodesFor(MAGBOARD, mag_buffer);

		stream_packet_header[0] = 0x0A;
		stream_packet_header[1] = 0x0B;
		stream_packet_header[2] = 0x0C;
		stream_packet_header[3] = packet_size & 0xFF;
		stream_packet_header[4] = (packet_size>>8) & 0xFF;

		BTSerial.write(stream_packet_header,5);
		BTSerial.write(mag_buffer,MAGBOARD);

		//2. Wait until a response character is sent
	    while (BTSerial.available() <= 0) {
	      delay(1);
	    }

	    //3. Read command from client (.=stop >=go)
	    commsByte = BTSerial.read();
	    //4. Confirm command recieved
	    BTSerial.print(commsByte);

	} while (commsByte == 62);  // 62=ASCII '>'

  	Serial.println("\nStreaming Stopped");
}

void MagLib::comms_SystemCheck()
{
	test_SD_datalog();
	comms_SD_Status();
}

void MagLib::comms_EstablishContact()
{
	while (BTSerial.available() <= 0) {
		Serial.println("Waiting...");
		delay(2000);
	}
	BTSerial.print("!MagBoard n64 v:");
	BTSerial.print(" ");
	BTSerial.print(__DATE__);
	BTSerial.print(" ");
	BTSerial.print(__TIME__);
	BTSerial.print("^"); //End of text stream
	Serial.println("Connection Made");
}

void MagLib::test_SD_datalog()
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
	while (BTSerial.available() < 3) {
		delay(10);
	}

	filename[5] = BTSerial.read();
	filename[6] = BTSerial.read();
	filename[7] = BTSerial.read();

	Serial.print("\nLogging. Filename=");
	Serial.println(filename);

	// Create file (truncate existing file)
	if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
		Serial.println("ERROR: file open failed");
		BTSerial.print("E");
		return;
	} else {
		file.truncate(0); //file with 0 bytes and absolutely no contents in it
		Serial.println("\nLogging. File open OK");
	}

	digitalWrite(_ledPin, HIGH); //Set StatusLED ON during write

	//*** LOGGING LOOP ******************
	log_start_time = millis();

	for (uint32_t i = 0; i < max_writes; i++) {
		m = micros(); //read time

		//device.read64Nodes(SDbuf, Select_ZYX); //take reading
		readSensingNodesFor(MAGBOARD, SDbuf);
		Serial.println("\n**************Buffer:");
		Serial.write(SDbuf,BUF_SIZE);

		write_size = file.write(SDbuf, BUF_SIZE);
		Serial.print("\nWrite size:");
		Serial.print(write_size);

		if (write_size != BUF_SIZE) {
			sd.errorPrint("write failed");
			//file.close();
			//return;
		}

		m = micros() - m;

		//Test to see if
		if (BTSerial.available()) {
		  	input_byte = BTSerial.read();
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
	BTSerial.print("~");
}

void MagLib::comms_SD_Status()
{
	//Print Card Information
	Serial.print("\nFS Type is FAT");
	Serial.println(int(sd.vol()->fatType()) );
	Serial.print("\nCard Size (GB):");
	Serial.println( sd.card()->cardSize()*512E-9 );
	Serial.print("\nFile Size (MB):");
	Serial.println( FILE_SIZE_MB );
	Serial.print("\nBuffer Size (Bytes):");
	Serial.println( BUF_SIZE );
	Serial.print("\n");

	//Print Card Information
	BTSerial.print("FS Type is FAT");
	BTSerial.print(int(sd.vol()->fatType()) );
	BTSerial.print("\nCard Size (GB):");
	BTSerial.print( sd.card()->cardSize()*512E-9 );
	BTSerial.print("\nLog File Size (MB):");
	BTSerial.print( FILE_SIZE_MB );
	BTSerial.print("\n\n***SD Card Contents***\n");

	sd.ls(&BTSerial, "/", LS_R | LS_SIZE ); //SD file listing to BT
	sd.ls(LS_R | LS_DATE | LS_SIZE); //SD file listing to Serial
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
    while (BTSerial.available() < 3) {
  		delay(10);
    }
    filename[5] = BTSerial.read();
    filename[6] = BTSerial.read();
    filename[7] = BTSerial.read();

    Serial.print("\nLogging. Filename=");
    Serial.println(filename);

    // Create file (truncate existing file)
    if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
		Serial.println("ERROR: file open failed");
		BTSerial.print("E");
		return;
    } else {
		file.truncate(0); //file with 0 bytes and absolutely no contents in it
  		Serial.println("\nLogging. File open OK");
    }

    digitalWrite(_ledPin, HIGH); //Set StatusLED ON during write

    //*** LOGGING LOOP ******************
    log_start_time = millis();

    for (uint32_t i = 0; i < max_writes; i++) {
		m = micros(); 										//read time
		readSensingNodesFor(MAGBOARD, SDbuf);		//take reading
		Serial.println("\n**************Buffer:");
		Serial.write(SDbuf, BUF_SIZE);
		write_size = file.write(SDbuf, BUF_SIZE);
		Serial.print("\nWrite size:");
		Serial.print(write_size);

		if (write_size != BUF_SIZE) {
			sd.errorPrint("write failed");
			//file.close();
			//return;
		}

		m = micros() - m;

		//Test to see if
		if (BTSerial.available()) {
			input_byte = BTSerial.read();
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
    BTSerial.print("~");
}

void MagLib::SD_upload()
{
	float logfile_size;
	uint32_t nr;

	Serial.print("\nGetting Filename...");
	//Set log-filename - Uses 8.3 name format
	while (BTSerial.available() < 3) {
		delay(10);
	}

	filename[5] = BTSerial.read();
	filename[6] = BTSerial.read();
	filename[7] = BTSerial.read();

	Serial.print("\nUpload. Filename=");
	Serial.println(filename);

  	// Create file (truncate existing file)
	if (!file.open(filename, O_RDONLY)) {
	    Serial.println("ERROR: file open failed");
	    return;
	} else {
		Serial.println("\nUpload. File open OK");
	}

	logfile_size = file.fileSize();
	Serial.print("\nLog Filesize = ");
	Serial.println(logfile_size);
	BTSerial.println(logfile_size);

	digitalWrite(_ledPin, HIGH); //Set StatusLED ON during write

	while ( (nr = file.read(SDbuf, BUF_SIZE)) > 0 ) {
		if (nr < BUF_SIZE) {
		          //End of file
				  SDbuf[0] = 0xFF;
				  SDbuf[1] = 0xFF;
				  SDbuf[2] = 0xFF;
				  BTSerial.write(SDbuf, BUF_SIZE);
				  return;
		} else {
			BTSerial.write(SDbuf, BUF_SIZE);
		}
	} //END READ LOOP ********

	file.close();
	digitalWrite(_ledPin, LOW); //Set StatusLED ON during write
}

void MagLib::testNode(	char *buffer,
						char zyxt,
						uint8_t address,
						uint8_t i2cID,
						uint8_t muxID)
{
	uint8_t GAIN_SEL = 0x00;  //
	uint8_t RES_XYZ = 0x01;  //
	uint8_t DIG_FILT = 0x1;
	uint8_t OSR = 0x1;

	Serial.begin(115200);

	// Reset and test a specific chip
	setMux(muxID);
	delay(50);

	Serial.printf("Testing MLX:L%d\tA:0x%x\tMUX:%d\n", i2cID, address, muxID);

	nodeAddrObj[address].resetDevice(buffer, zyxt, i2cID);
	Serial.printf("Resetting...\n");
	delay(1000);

	Serial.printf("Init & config node...\n");
	nodeAddrObj[address].init(buffer, address, i2cID, muxID);
	nodeAddrObj[address].configure(buffer, i2cID, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);
	nodeAddrObj[address].startBurstMode(buffer, zyxt, i2cID);
	delay(500);

	Serial.printf("Reading node...\n");
	nodeAddrObj[address].RequestMeasurement(buffer, zyxt, i2cID);
	nodeAddrObj[address].AsyncRxFill(buffer, zyxt, i2cID);
	//While there's no bytes available to read, do nothing...
	while(!nodeAddrObj[address].measureReady(i2cID));
	//Data ready - so read
	nodeAddrObj[address].takeMeasure(buffer,i2cID);

	printASCIIData(buffer, NODE_SINGLE);
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
			for (int i = 0; i < size; i++) {
				Serial.printf("%x", buffer[i]);
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

	float Bx = 0;
	float By = 0;
	float Bz = 0;

	unsigned long time = buffer[0]+(buffer[1]<<8)+(buffer[2]<<16)+(buffer[3]<<24);

	Serial.printf("Read time: %ld ms|", time);

	for (int i = 4; i < size; i+=6) { //loop through all sensor
		Bx = (buffer[i+0] * 256) + buffer[i+1] * 0.00805f;
		By = (buffer[i+2] * 256) + buffer[i+3] * 0.00805f;
		Bz = (buffer[i+4] * 256) + buffer[i+5] * 0.02936f;
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

void MagLib::printToSDCard(char *buffer, int size)
{
	uint32_t write_size = file.write(buffer, size);
	// Serial.print("\nWrite size:");
	// Serial.print(write_size);
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
