 // MagBoard n64 UI Version
////////////////////////////////////
// v1 of full platform by P Culmer
// 
///////////////////////////////////

// include MagLIB - for access to high and low level chip functions
#include <MagLib.h>

// include the SD library:
#include <SD.h>
#include <SPI.h>

//Declare comms Functions - move to external library later
void comms_SystemCheck();
void comms_MainMenu();
void comms_EstablishContact();
void comms_SD_Status();
void test_SD_datalog();
void System_Stream();
void System_Initialise(); //MOVE TO MAGLIB

// MagLIB Defs
MagLib device; //Change this to MLX for readability
#define addressPacket 0x0F0E0D0C
char buffer[NODE_64];
int mux[2] = {10, 11};
uint8_t Select_ZYX = 0xE;
//CHIP SETTINGS
uint8_t GAIN_SEL = 0x00;  // 
uint8_t RES_XYZ = 0x00;  // 0x15=gain 1
uint8_t DIG_FILT = 0x1;
uint8_t OSR = 0x1;

// TIMING Settings
unsigned long start_time = 0L;
unsigned long current_time = 0L;
unsigned long period = 0L;

//COMMS SETTINGS //see SD library Example (from Teensy)
int serial_baudrate = 115200;
//SD Card Settings
Sd2Card card;
SdVolume volume;
SdFile root;
const int chipSelect = BUILTIN_SDCARD; 

void setup() {
  
  Serial.begin(serial_baudrate);
  comms_EstablishContact();  
}

int timeMode = 0;

void loop() {

  comms_MainMenu();
  /*
  startmicros = micros ();
  device.read64Nodes(buffer, Select_ZYX);
  currentmicros = micros ();
  period = currentmicros - startmicros;

  if (timeMode)
  {
  Serial.print("\nMagBoardv64. Read Time (uS):");
  Serial.println(period);
  
  device.printASCIIData(buffer, NODE_64);
  }
  else{

  device.printRawData(buffer, BIN, NODE_64);
  }
  delay(50);
  */
  
}


// COMMS FUNCTIONS DEFINED BELOW

void comms_EstablishContact() {
  
  while (Serial.available() <= 0) {
    delay(500);
  }
  Serial.println("!MagBoard n64 UI v12_02_2019");
  Serial.print("^"); //End of text stream
}

void comms_MainMenu() {

  if (Serial.available() > 0) {
    int commsByte = Serial.read();
  
    switch (commsByte) {
        case '>':
          Serial.println("RDY");
          break;
        case 'I':
          Serial.println("i");
          System_Initialise();
          Serial.print("^"); //End of text stream
          break;
        case 'C':
          Serial.println("c");
          comms_SystemCheck();
          Serial.print("^"); //End of text stream
          break;
        case 'S':
          Serial.println("s");
          System_Stream();
          //Serial.print("^"); //End of text stream
          break;
        case 'L':
          Serial.println("Log Data");
          test_SD_datalog();
          break;
        case 'X':
          comms_EstablishContact();
          break;
        case '\n':
          //Serial.println("NewLine"); //Ignore \n sent by Serial Monitors
          break;
        default:
          // Unknown command - respond accordingly. RTFM
          Serial.print("\n?");
          }
      }
      else {
        delay(1000);
      }
}


void comms_SystemCheck() {
  Serial.println("*System Status...");
  Serial.println("*64 Nodes Active...");
  Serial.println("*SD Storage...");
  comms_SD_Status();
}

void System_Initialise() {
 
  //Initialise serial comms on ports 0-3
  device.initCommunication(115200, 0);
  device.initCommunication(115200, 1);
  device.initCommunication(115200, 2);
  device.initCommunication(115200, 3);
  
  Serial.println("\nMagBoard_64 v2 Performance Testing");
  Serial.println("\nInitialised Serial Comms");
  delay(500);
  
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
  delay(2000);
  Serial.println("\Entering Read Mode....\n\n");

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
}

void System_Stream() {
  int commsByte = 0;
  
  do {
    //0. Get reading
    device.read64Nodes(buffer, Select_ZYX);
    
    //1. Print reading
    device.printRawData(buffer, BIN, NODE_64);
  
    //2. Wait until a response character is sent
    while (Serial.available() <= 0) {
      //Serial.println("."); //for debug
      delay(10);
    }

    //3. Read command from client (.=stop >=go)
    commsByte = Serial.read();
    //4. Confirm command recieved
    Serial.print(commsByte,HEX);
  } while (commsByte == 62); // 62=ASCII '>'
}

void comms_SD_Status() {

    if (!card.init(SPI_HALF_SPEED, chipSelect)) {
    Serial.println("No SD Card Found!");
    return;
  } else {
   Serial.println("SD Card Found"); 
  }

  // print the type of card
  Serial.print("Type:");
  switch(card.type()) {
    case SD_CARD_TYPE_SD1:
      Serial.println("SD1");
      break;
    case SD_CARD_TYPE_SD2:
      Serial.println("SD2");
      break;
    case SD_CARD_TYPE_SDHC:
      Serial.println("SDHC");
      break;
    default:
      Serial.println("Unknown");
  }

  // Now we will try to open the 'volume'/'partition' - it should be FAT16 or FAT32
  if (!volume.init(card)) {
    Serial.println("Could not find FAT16/FAT32 partition.\nMake sure you've formatted the card");
    return;
  }

  // print the type and size of the first FAT-type volume
  uint32_t volumesize;
  uint32_t blocksPerCluster;
  uint32_t freevolumesize;
  Serial.print("Volume Type: FAT");
  Serial.println(volume.fatType(), DEC);
  
  blocksPerCluster = volume.blocksPerCluster();    // clusters are collections of blocks
  volumesize = volume.clusterCount() * blocksPerCluster; 
  Serial.print("Volume size (Kbytes): ");
  volumesize /= 2;
  Serial.println(volumesize);
  Serial.print("Volume size (Mbytes): ");
  volumesize /= 1024;
  Serial.println(volumesize);
  
  Serial.println("\nFiles found on the card (name, date and size in bytes): ");
  root.openRoot(volume);
  
  // list all files in the card with date and size
  root.ls(LS_R | LS_DATE | LS_SIZE);
}

void test_SD_datalog()
{
  char filename[] = "MagTest64_1.data";
  // open the file
  Serial.println("Datalogging Test");

  Serial.print("Initializing SD card...");
  // see if the card is present and can be initialized:
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    return;
  }
  Serial.println("SD card initialized.");
  
  File dataFile = SD.open("test.dat", O_WRITE | O_CREAT);

  // Check if the file is available...
  if (dataFile) {
    Serial.println("Starting 1000 Writes:");
    //if yes test write performance

    //Loop to test 1000 writes

    start_time = micros ();
    for (int i=0;i<1000;i++) {
        current_time = millis();
        buffer[0] = current_time & 255;
        buffer[1] = (current_time>>8) & 255;
        buffer[2] = (current_time>>16) & 255;
        buffer[3] = (current_time>>24) & 255;
      if (NODE_64 != dataFile.write(buffer,NODE_64) ) {
        Serial.println("Write failed");
      return;
      }
    }
    dataFile.close();
    current_time = micros ();
    period = current_time - start_time;
    // Report outcome:
    Serial.println("Total Time for 1000 cycles (uS):");
    Serial.println(period);
    Serial.println("Avg Time per cycle (uS):");
    Serial.println(period/1000);
    Serial.println("Max Write Freq (Hz):");
    Serial.println( (1000000000/period));    
  } 
  // if the file isn't open, pop up an error:
  else {
    Serial.println("Error opening file");
  } 

}


