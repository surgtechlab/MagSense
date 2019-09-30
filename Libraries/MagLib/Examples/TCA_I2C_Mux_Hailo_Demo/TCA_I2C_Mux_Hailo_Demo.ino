#include <MagLib.h>

#define TCAADR 0x70

MagLib device;

const int BAUD = 115200;
const int ledPin = 13;
const int DEVICE = NODE_FOUR;

char receiveBuffer[DEVICE];

void setup() {
  
  // put your setup code here, to run once:
  pinMode(ledPin, OUTPUT);
  digitalWrite(ledPin, HIGH);

  Wire.begin();
  tcaselect(7);

  device.initSensingNodesFor(DEVICE, BAUD, receiveBuffer);
//  device.initSDCard();
}

void loop() {
  
  // put your main code here, to run repeatedly:
  device.readSensingNodesFor(DEVICE, receiveBuffer);
  
//  device.printRawData(receiveBuffer, HEX, DEVICE);
  device.printASCIIData(receiveBuffer, DEVICE); 
//  device.printToSDCard(receiveBuffer, DEVICE);

  toggleLED(100);
}

void tcaselect(uint8_t i) {

  // Write to wire lib
  Wire.beginTransmission(TCAADR);
  Wire.write(1 << i);
  Wire.endTransmission();
}

void toggleLED(int period_ms) {
  digitalWrite(ledPin, HIGH);
  delay(period_ms);
  digitalWrite(ledPin, LOW);
  delay(period_ms);
}


