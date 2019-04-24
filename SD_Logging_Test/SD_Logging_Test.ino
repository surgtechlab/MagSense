 /*
 * Test functions to write to log to file
 * Adapted by P Culmer from SdFAT demo 
 * This program is a simple binary write/read benchmark.
 */
#include <SPI.h>
#include "SdFat.h"
#include "sdios.h"
#include "FreeStack.h"

// Size of read/write buffer
const size_t BUF_SIZE = 512; //bytes

// Size logging file in MB where MB = 1,000,000 bytes.
const uint32_t FILE_SIZE_MB = 50;
const int ledPin = 13;
uint32_t loop_dt = 1000; //loop dT in micro secs (100Hz)

//==============================================================================
// End of configuration constants.
//------------------------------------------------------------------------------


// File size in bytes.
const uint32_t FILE_SIZE = 1000000UL*FILE_SIZE_MB; //unsigned long constant
uint8_t buf[BUF_SIZE];

// Initiate file system
SdFatSdioEX sd;
// Initiate test file
SdFile file;

// Serial output stream
//ArduinoOutStream cout(Serial);
//------------------------------------------------------------------------------
// Store error strings in flash to save RAM.
//#define error(s) sd.errorHalt(F(s))
//------------------------------------------------------------------------------

void setup() {
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, LOW);
  Serial.begin(9600);
  
  // Wait for USB Serial to be available
  while (!Serial) {
    SysCall::yield();
  }
  digitalWrite(ledPin, HIGH);
  delay(1000);
  Serial.println("\nTeensy Simple SdFAT Data-Logging Test");
  digitalWrite(ledPin, LOW);
}
//------------------------------------------------------------------------------
void loop() {
  float s;
  uint32_t t;
  uint32_t maxLatency;
  uint32_t minLatency;
  uint32_t totalLatency;
  char filename[] = "M064_XYZ.dat";
  char input_byte;

  // Discard any input.
  do {
    delay(10);
  } while (Serial.available() && Serial.read() >= 0);

  Serial.println("\nLogging Test\nEnter 3 character filename to start");

  //Wait until character sent to begin WRITE testing
  while (Serial.available() < 3) { 
    SysCall::yield();
  }

  filename[5] = Serial.read();
  filename[6] = Serial.read();
  filename[7] = Serial.read();

  Serial.println("\nFilename set as: ");
  Serial.print(filename);

  delay(1000);
  
  //Begin the SdFAT file process
  if (!sd.begin()) {
    sd.initErrorHalt();
  }

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
  
  // open or create file - truncate existing file.
  if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
    Serial.println("ERROR: open failed");
  }

  // fill buf with known simulated data
  for (size_t i = 0; i < (BUF_SIZE-2); i++) {
    buf[i] = 'A' + (i % 26);
  }
  //Define packet end
  buf[BUF_SIZE-3] = 'X';
  buf[BUF_SIZE-2] = 'Y';
  buf[BUF_SIZE-1] = 'Z';

//------------------------------------------------------------------------------
// Write test
//------------------------------------------------------------------------------

    uint32_t max_writes = FILE_SIZE/sizeof(buf); //number of writes to fill
    uint32_t num_writes = 0;
    uint32_t m_last = 0;
    
    
    file.truncate(0); //file with 0 bytes and absolutely no contents in it
    
    maxLatency = 0;
    minLatency = 9999999;
    totalLatency = 0;
    t = millis();

    digitalWrite(ledPin, HIGH);
    
    for (uint32_t i = 0; i < max_writes; i++) {
        uint32_t m = micros();
        buf[0] = m & 255;
        buf[1] = (m>>8) & 255;
        buf[2] = (m>>16) & 255;
        buf[3] = (m>>24) & 255;
      if (file.write(buf, sizeof(buf)) != sizeof(buf)) {
        sd.errorPrint("write failed");
        file.close();
        return;
      }
      m = micros() - m;
      if (maxLatency < m) {
        maxLatency = m;
      }
      if (minLatency > m) {
        minLatency = m;
      }
      totalLatency += m;

      if (Serial.available())
      {
        break;
      }

      //Regulate loop rate here***********
      do {
        SysCall::yield();
        m =  micros();       
      } while ( (m - m_last) < loop_dt);
      m_last = m;
      //**********************************
      
      num_writes = i;
    } //End write loop

    digitalWrite(ledPin, LOW);
    file.sync();

    Serial.print("\nWrite Stopped at cycle ");
    Serial.print(num_writes);
    Serial.print(" of ");
    Serial.println(max_writes);
    
        
    t = millis() - t;
    s = file.fileSize();

  //Print Card Information
  Serial.print("\nWrite Speed (KB/Sec): ");
  Serial.println( s/t );
  Serial.print("\nAverage Loop Time (ms): ");
  Serial.println( t/num_writes );
  Serial.print("\nMax dT (microS): ");
  Serial.println( maxLatency );
  Serial.print("\nMin dT (microS): ");
  Serial.println( minLatency );

  Serial.println("\nFile Listing");
  sd.ls(LS_R | LS_DATE | LS_SIZE); //Print file listing
    
//------------------------------------------------------------------------------
// READ test
//------------------------------------------------------------------------------

  // do read test
    file.rewind();
    maxLatency = 0;
    minLatency = 9999999;
    totalLatency = 0;
    t = millis();
    for (uint32_t i = 0; i < 10; i++) {
      buf[BUF_SIZE-1] = 0;
      uint32_t m = micros();
      int32_t nr = file.read(buf, sizeof(buf)); 
      if (nr != sizeof(buf)) {   
        sd.errorPrint("read failed");
        file.close();
        return;
      }
      m = micros() - m;
      if (maxLatency < m) {
        maxLatency = m;
      }
      if (minLatency > m) {
        minLatency = m;
      }
      totalLatency += m;
      if (buf[BUF_SIZE-1] != 'Z') {
        Serial.println("ERROR: data check");
      }
      else{
        Serial.print(i);
        Serial.print("\t");
        Serial.write(buf,BUF_SIZE);
        Serial.print("\n");
      }

    s = file.fileSize();
    t = millis() - t;
  }

  file.close();
}
