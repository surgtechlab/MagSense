#include <MagLib.h>

MagLib device;

char buffer[MAGBOARD128];

// Initiate file system
SdFatSdioEX sd;
// Initiate test file
SdFile file;

int _ledPin = 13;

unsigned long t_old = 0;

// SD Card properties
char SDbuf[BUF_SIZE];

// Data file name
char filename[64] = "footplate_002.txt";

void setup() {

  Serial.begin(115200);
  
  // put your setup code here, to run once:
  //Begin the SdFAT file process
  if (!sd.begin()) {
    sd.initErrorHalt();
    Serial.println("ERROR: SD Card Initialisation");
  }
  else {
    Serial.println("SD Card Initialised");
  }
  
  device.initSensingNodesFor(MAGBOARD128, 115200, buffer);

  write_to_file();
}

void loop() {
  // put your main code here, to run repeatedly:

}

void write_to_file() {

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
  
  Serial.print("Logging. Filename=");
  Serial.println(filename);
  
  // Create file (truncate existing file)
  if (!file.open(filename, O_RDWR | O_CREAT | O_TRUNC)) { //?? Remove TRUNC ??
    Serial.println("ERROR: file open failed");
    return;
  } else {
    file.truncate(0); //file with 0 bytes and absolutely no contents in it
    Serial.println("File open OK");
  }
  
  digitalWrite(13, HIGH); //Set StatusLED ON during write

  //*** LOGGING LOOP ******************
  log_start_time = millis();

  for (uint32_t i = 0; i < max_writes; i++) {
    
    m = micros();                 //read time
    
    device.readSensingNodesFor(MAGBOARD128, SDbuf);    //take reading
    
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

