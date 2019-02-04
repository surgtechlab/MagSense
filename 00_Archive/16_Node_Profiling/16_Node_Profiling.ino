#include <MagLib.h>

#define addressPacket 0x0C0D0E0F

MagLib device;

char buffer[NODE_16];
//int mux[2] = {10, 11};
int mux[2] = {30, 32};

unsigned long startmicros = 0L;
unsigned long currentmicros = 0L;
unsigned long period = 0L;

void setup() {
  // put your setup code here, to run once:

  Serial.println("\n 16 Node Speed Test MUX");
  delay(2000);
  device.initCommunication(115200, 0);
  //device.init16Nodes(addressPacket, buffer, 0xF, mux, 0);
  device.initFourNode(addressPacket, buffer, 0xF,0);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  startmicros = micros ();
  device.read16Nodes(buffer, 0xF, 0);
  currentmicros = micros ();
  period = currentmicros - startmicros;
  //Serial.println("\n 16 Node (MUX) Read time (us): ");
  //Serial.println(period);
  device.printRawData(buffer, HEX, NODE_16);
  delay(500);
}
