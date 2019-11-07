#include <MagLib.h>

#define TCAADR 0x70

MagLib device;

const int BAUD = 115200;
const int ledPin = 13;
const int DEVICE = MAGBOARD;

char receiveBuffer[DEVICE];

unsigned long t_old;

void setup() {
  
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, HIGH);

  device.initSensingNodesFor(DEVICE, BAUD, receiveBuffer);
  device.initSDCard();

  device.SDCardStatus();
  
  Serial.println("Starting 1000 readings...");
 
  int j = 0;
  unsigned long t_new = millis();

  while (j < 1000) {
    // put your main code here, to run repeatedly:
    device.readSensingNodesFor(DEVICE, receiveBuffer);
  
//  device.printRawData(receiveBuffer, HEX, DEVICE);
//  device.printASCIIData(receiveBuffer, DEVICE); 
    device.printToSDCard(receiveBuffer, DEVICE);
    j++;
  }

  Serial.printf("Finished. Time elapsed: %d\n", t_new - t_old);

  device.closeSDCard();
  device.SDCardStatus();
}

void loop() {

  

  //t_old = t_new;
  
//  delay(2000);
  toggleLED(100);
}

void toggleLED(int period_ms) {
  digitalWrite(ledPin, HIGH);
  delay(period_ms);
  digitalWrite(ledPin, LOW);
  delay(period_ms);
}


