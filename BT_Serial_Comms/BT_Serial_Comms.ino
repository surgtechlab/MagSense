#include "sdios.h"
String command = "";

#define BTSerial Serial1 //This serial port is linked to the BT transmitter
int BTSerial_baudrate = 115200;
int serial_baudrate = 115200;

void setup() 
{
   // Open serial communications and wait for port to open:
   Serial.begin(9600);
   Serial.println("Type AT commands!");
   // JY-MCU v1.03 defaults to 9600.
   BTSerial.begin(115200);
}

void loop()
{
   // Read device output if available.
   if (BTSerial.available()) {
     while(BTSerial.available()) { // While there is more to be read, keep reading.
       command += (char)BTSerial.read();
     }
     Serial.println(command);
     command = ""; // No repeats
   }
  
   // Read user input if available.
   if (Serial.available()){
       delay(10); // The DELAY!
       BTSerial.write(Serial.read());
   }
}// END loop()

