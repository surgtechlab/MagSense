//Emulate the magsense board for testing
//Developed for 

//Include Pete's library
#include <MagLib.h>

//Setup device object
MagLib device;

//Global buffer
char buffer[NODE_64];

void setup() {
  Serial.begin(9600);
}

void loop() {
  Serial.print("Hello World");

  //Put something meaningful in the buffer
//  pixelDivider = sqrt(NODE_16);
  for(int pixelIdx = 0; pixelIdx < NODE_64; pixelIdx++)
  {
    //Presuming y incrememnts at the end of every X, calculate the X and y positions
//    thisX = pixelIdx % (pixelDivider-1);
//    thisY = pixelIdx - thisX
    buffer[pixelIdx] = (char) (pixelIdx & 0xff);
  }

  device.printRawData(buffer, BIN, NODE_64);

  delay(100);

}
