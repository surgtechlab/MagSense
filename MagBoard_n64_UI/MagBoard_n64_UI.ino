 // MagBoard n64 UI Version
////////////////////////////////////
// v1 of full platform by Pete Culmer
// 
///////////////////////////////////

//include MagLIB - for access to high and low level chip functions
#include <MagLib.h>

// include the SD library:
#include <SPI.h>

//include support for SD file writes
#include "SdFat.h"
#include "sdios.h"
#include "FreeStack.h"

//
bool simulate_board = false;

//Declare comms Functions - move to external library later
void comms_SystemCheck();
void comms_MainMenu();
void comms_EstablishContact();
void comms_SD_Status();
void SD_datalog();
void test_SD_datalog();
void SD_upload();
void System_Stream();
void System_Initialise(); //MOVE TO MAGLIB

// MagLIB Defs
MagLib device; //Change this to MLX for readability
#define addressPacket 0x0F0E0D0C
char buffer[NODE_64];
char stream_packet_header[5];
int mux[2] = {10, 11};
uint8_t Select_ZYX = 0xE;

//MLX CHIP SETTINGS
uint8_t GAIN_SEL = 0x00;  // 
uint8_t RES_XYZ = 0x01;  // to match NN training 29/04/2019
uint8_t DIG_FILT = 0x1;
uint8_t OSR = 0x1;

//COMMS SETTINGS //see SD library Example (from Teensy)
int serial_baudrate = 115200;
#define BTSerial Serial1 //This serial port is linked to the BT transmitter
int BTSerial_baudrate = 115200;
const int ledPin = 13; //used to signify comms
bool status_led = false;

//SD LOGGING Settings
const size_t SD_BUF_SIZE = 512; // Size of SD card read/write buffer
uint32_t loop_dt = 10000; //loop dT in micro secs (100Hz)
const uint32_t FILE_SIZE_MB = 5;
const uint32_t FILE_SIZE = 1000000UL*FILE_SIZE_MB;
char SDbuf[SD_BUF_SIZE];
SdFatSdioEX sd; // File system
SdFile file; // Log file
char filename[] = "M064_XYZ.dat"; //base filename

void setup() {
  
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);

  //Initiate USB Serial + BT comms
  Serial.begin(serial_baudrate);
  BTSerial.begin(BTSerial_baudrate);

  //Wait for USB Serial to be available
  while (!Serial) {
    delay(10);
  }
  digitalWrite(ledPin, HIGH); //Signify when Comms active
  delay(1000);
  digitalWrite(ledPin, LOW);
  
  Serial.println("MagBOARD is Alive!"); //Signify system active and print version info
  Serial.println(__FILE__);
  Serial.println(__DATE__);
  Serial.println(__TIME__);
  
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
//END SETUP ****************************************************************

void loop() {

  comms_MainMenu();
}
//END LOOP *****************************************************************

// COMMS FUNCTIONS DEFINED BELOW

void comms_EstablishContact() {
  
  while (BTSerial.available() <= 0) {
    Serial.println("Waiting...");
    delay(500);
  }
  BTSerial.print("!MagBoard n64 v:");
  BTSerial.print(" ");
  BTSerial.print(__DATE__);
  BTSerial.print(" ");
  BTSerial.print(__TIME__);
  BTSerial.print("^"); //End of text stream
  Serial.println("Connection Made");
}

void comms_MainMenu() {
  //Serial.println("M");
  if (BTSerial.available() > 0) {
    int commsByte = BTSerial.read();
    Serial.print("\nCommand Recieved:");
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
          BTSerial.print("^"); //End of text stream
          break;
        case 'C':
          BTSerial.print("c");
          Serial.println("Check SD Card");
          comms_SystemCheck();
          BTSerial.print("^"); //End of text stream
          break;
        case 'S':
          BTSerial.print("s");
          Serial.println("Stream Data");
          System_Stream();
          //Serial.print("^"); //End of text stream
          break;
        case 'L':
          BTSerial.print("l");
          Serial.println("Data Logging");
          SD_datalog();
          break;
        case 'G': //get datafile
          BTSerial.print("g");
          Serial.println("Upload SD file");
          SD_upload();
          break;
        case 'X':
          comms_EstablishContact();
          break;
        case '\n':
          break;
        default:
          // Unknown command - respond accordingly. RTFM
          Serial.println("?");
          }
      }
      else {
        delay(1000);
        status_led = !status_led;
        digitalWrite(ledPin, status_led); //Toggle LED output
      }
}

void comms_SystemCheck() {
  test_SD_datalog();
  comms_SD_Status();
}

void System_Initialise() {
 
  BTSerial.println("\nStarting System Initialisation");
  
  Serial.println("\nInitialising I2C Bus...");
  
  if (!simulate_board)
  {
  //Initialise I2C on ports 0-3
  device.initCommunication(115200, 0);
  device.initCommunication(115200, 1);
  device.initCommunication(115200, 2);
  device.initCommunication(115200, 3);
  
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
    
  //Initialise I2C Ports
  device.init64Nodes(addressPacket, buffer, Select_ZYX, mux, GAIN_SEL, RES_XYZ, DIG_FILT, OSR);

  Serial.println("\nInitialised I2C Bus");
  BTSerial.println("\nInitialised I2C Bus");

  delay(500);

  //i2c reads from hear onwards will be non-blocking
  Wire.setOpMode(I2C_OP_MODE_ISR);
  Wire1.setOpMode(I2C_OP_MODE_ISR);
  Wire2.setOpMode(I2C_OP_MODE_ISR);
  Wire3.setOpMode(I2C_OP_MODE_ISR);

  //Make sure runnning at 400 kHz
  Wire.setRate(I2C_RATE_400);
  Wire1.setRate(I2C_RATE_400);
  Wire2.setRate(I2C_RATE_400);
  Wire3.setRate(I2C_RATE_400);

  } //END IF
  else{ //SIMULATE INIT PROCESS
    //Simulate initialisation delay
    delay(2000);
  }
  Serial.println("\nSystem Active");
  BTSerial.println("\nSystem Active");
}

void System_Stream() {
  int commsByte = 0;
  int packet_size = NODE_64;
  unsigned long time = 0;
  
  do {
    //0. Get reading
      if (!simulate_board)
      {
        //TAKE READING FROM MAGBOARD
        device.read64Nodes(buffer, Select_ZYX);
      }
      else //SIMULATE DEVICE READ
      {
          time = millis();
          buffer[0] = time & 255;
          buffer[1] = (time>>8) & 255;
          buffer[2] = (time>>16) & 255;
          buffer[3] = (time>>24) & 255;
          delay(3);
      }
      
    //1. Print reading
      //Define the header of binary packets sent
        stream_packet_header[0] = 0x0A;
        stream_packet_header[1] = 0x0B;
        stream_packet_header[2] = 0x0C;
        stream_packet_header[3] = packet_size & 0xFF;
        stream_packet_header[4] = (packet_size>>8) & 0xFF;

      BTSerial.write(stream_packet_header,5);
      BTSerial.write(buffer,NODE_64);
  
    //2. Wait until a response character is sent
    while (BTSerial.available() <= 0) {
      delay(1);
    }

    //3. Read command from client (.=stop >=go)
    commsByte = BTSerial.read();
    //4. Confirm command recieved
    BTSerial.print(commsByte);
  } while (commsByte == 62); // 62=ASCII '>'
  Serial.println("\nStreaming Stopped");
}

void comms_SD_Status() {

  //Print Card Information
  BTSerial.print("FS Type is FAT");
  BTSerial.print(int(sd.vol()->fatType()) );
  BTSerial.print("\nCard Size (GB):");
  BTSerial.print( sd.card()->cardSize()*512E-9 );
  //BTSerial.print("\nLog File Size (MB):");
  //BTSerial.print( FILE_SIZE_MB );
  BTSerial.print("\n\n***SD Card Contents***\n");

  sd.ls(&BTSerial, "/", LS_R | LS_SIZE ); //SD file listing to BT
  sd.ls(LS_R | LS_DATE | LS_SIZE); //SD file listing to Serial
  
}

void SD_datalog()
{
  char input_byte;
  uint32_t max_writes = FILE_SIZE/sizeof(SDbuf); //max number of writes to SD file
  uint32_t num_writes = 0;
  uint32_t m = 0; //microsec clock value (to regulate loop)
  uint32_t m_last = 0;
  uint32_t log_start_time;
  uint32_t log_elapsed_time;
  int32_t write_size;
  
  //Define packet end
  SDbuf[SD_BUF_SIZE-3] = 'X';
  SDbuf[SD_BUF_SIZE-2] = 'Y';
  SDbuf[SD_BUF_SIZE-1] = 'Z';
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
  }
  else{
    file.truncate(0); //file with 0 bytes and absolutely no contents in it
    Serial.println("\nLogging. File open OK");
  }
  digitalWrite(ledPin, HIGH); //Set StatusLED ON during write

  //*** LOGGING LOOP ******************
  log_start_time = millis();
  for (uint32_t i = 0; i < max_writes; i++) {
        m = micros(); //read time
        device.read64Nodes(SDbuf, Select_ZYX); //take reading
		    Serial.println("\n**************Buffer:");
		    Serial.write(SDbuf,SD_BUF_SIZE);
        write_size = file.write(SDbuf, SD_BUF_SIZE);
        Serial.print("\nWrite size:");
        Serial.print(write_size);

		if (write_size != SD_BUF_SIZE) {
        sd.errorPrint("write failed");
        //file.close();
        //return;
      }
      m = micros() - m;

      //Test to see if 
      if (BTSerial.available())
      {
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

    digitalWrite(ledPin, LOW);
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

void SD_upload()
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
  }
  else{
    Serial.println("\nUpload. File open OK");
  }
  logfile_size = file.fileSize();
  Serial.print("\nLog Filesize = ");
  Serial.println(logfile_size);
  BTSerial.println(logfile_size);
  
  digitalWrite(ledPin, HIGH); //Set StatusLED ON during write
  
  while ((nr = file.read(SDbuf, SD_BUF_SIZE)) > 0) {
    if (nr < SD_BUF_SIZE){ 
              //End of file
			  SDbuf[0] = 0xFF;
			  SDbuf[1] = 0xFF;
			  SDbuf[2] = 0xFF;
			  BTSerial.write(SDbuf,SD_BUF_SIZE);
			  return;
    }
    else { 
              BTSerial.write(SDbuf,SD_BUF_SIZE);
		}
  } //END READ LOOP ********
	
	file.close();  
	digitalWrite(ledPin, LOW); //Set StatusLED ON during write

}

void test_SD_datalog()
{
  uint32_t max_writes = 100; //number of writes to test SD file
  uint32_t num_writes = 0;
  int32_t write_size;
  
  //Define packet end
  SDbuf[SD_BUF_SIZE-3] = 'X';
  SDbuf[SD_BUF_SIZE-2] = 'Y';
  SDbuf[SD_BUF_SIZE-1] = 'Z';
  //**********************************************
  
  filename[5] = 'T';
  filename[6] = 'S';
  filename[7] = 'T';

  Serial.print("\nLogging Test: Filename=");
  Serial.println(filename);

  // Create file (truncate existing file)
  if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
    Serial.println("ERROR: file open failed");
    BTSerial.print("E");
    return;
  }
  else{
    file.truncate(0); //file with 0 bytes and absolutely no contents in it
    Serial.println("\nLogging. File open OK");
    BTSerial.println("SD Logging Test. File open OK");
  }
  digitalWrite(ledPin, HIGH); //Set StatusLED ON during write

  //*** LOGGING LOOP ******************
  for (uint32_t i = 0; i < max_writes; i++) {
        Serial.write(SDbuf,SD_BUF_SIZE);
        write_size = file.write(SDbuf, SD_BUF_SIZE);
        Serial.print("\nWrite size:");
        Serial.print(write_size);

    if (write_size != SD_BUF_SIZE) {
        sd.errorPrint("write failed");
        //file.close();
        break;
      }

      delay(10);
      //************************
      
      num_writes = i;
    } //End write loop *****************

    digitalWrite(ledPin, LOW);
    file.sync();
    file.close();

    BTSerial.print("SD Logging Test. Written ");
    BTSerial.print(num_writes);
    BTSerial.print(" of ");
    BTSerial.println(max_writes);
}
