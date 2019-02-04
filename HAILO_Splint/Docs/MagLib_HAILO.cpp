#include "MagLib.h"
#include "BluetoothSerial.h"

BluetoothSerial SerialBT;
MagLib::MagLib()
{
}
MagLib::~MagLib()
{
}

void MagLib::initSingleNode(uint16_t address, char *buffer, char zyxt)
{
	_device1.init(receiveBuffer, address);
	_device1.configure(receiveBuffer);
	_device1.startBurstMode(receiveBuffer, zyxt);

	buffer[0] = receiveBuffer[0];	// Status byte
}

void MagLib::readSingleNode(char *buffer, char zyxt)
{
	unsigned long time = millis();
	int i;

	buffer[0] = (time & 0xFF00) >> 8;	// T msb
	buffer[1] = (time & 0xFF);			// T lsb

	_device1.ReadMeasurement(receiveBuffer, zyxt);
	for (i = 2; i < 8; i++) {
		if (i==2 || i==4) 
		{
			buffer[i] = receiveBuffer[i + 1]*0.00805f;
		}
		else if (i==6)
		{
			buffer[i] = receiveBuffer[i + 1]*0.02936f;
		}
		else 
		{
			buffer[i]= receiveBuffer[i+1];
		}
	}
}

void MagLib::initFourNode(uint32_t addressPackage, char *_receiveBuffer, char zyxt)
{
	_Address1 = addressPackage & 0xFF;
	_Address2 = (addressPackage & 0xFF00) >> 8;
	_Address3 = (addressPackage & 0xFF0000) >> 16;
	_Address4 = (addressPackage & 0xFF000000) >> 24;

	_device1.init(receiveBuffer, _Address1);
	_device1.configure(receiveBuffer);
	_device1.startBurstMode(receiveBuffer, zyxt);

	_device2.init(receiveBuffer, _Address2);
	_device2.configure(receiveBuffer);
	_device2.startBurstMode(receiveBuffer, zyxt);

	_device3.init(receiveBuffer, _Address3);
	_device3.configure(receiveBuffer);
	_device3.startBurstMode(receiveBuffer, zyxt);

	_device4.init(receiveBuffer, _Address4);
	_device4.configure(receiveBuffer);
	_device4.startBurstMode(receiveBuffer, zyxt);

	SerialBT.begin("ESP32");
}

void MagLib::readFourNodes(char *buffer, char zyxt)
{
	unsigned long time = millis();

	buffer[0] = (time & 0xFF00) >> 8;   // T msb
	buffer[1] = (time & 0xFF);	   // T lsb

	_device1.ReadMeasurement(receiveBuffer, zyxt);
	for (int i = 2; i < 8; i++) 
	{
		if (i==3 || i==5) 
		{
			buffer[i] = receiveBuffer[i + 1]*0.00805f;
		}
		else if (i==7)
		{
			buffer[i] = receiveBuffer[i + 1]*0.02936f;
		}
		else 
		{
			buffer[i]= receiveBuffer[i+1];
		}
	}

	_device2.ReadMeasurement(receiveBuffer, zyxt);
	for (int i = 2; i < 8; i++)
	{
		if (i==3 || i==5) 
		{
			buffer[i+6] = receiveBuffer[i + 1]*0.00805f;
		}
		else if (i==7)
		{
			buffer[i+6] = receiveBuffer[i + 1]*0.02936f;
		}
		else 
		{
			buffer[i+6]= receiveBuffer[i+1];
		}
	}

	_device3.ReadMeasurement(receiveBuffer, zyxt);
	for (int i = 2; i < 8; i++)
	{
		if (i==3 || i==5) 
		{
			buffer[i+12] = receiveBuffer[i + 1]*0.00805f;
		}
		else if (i==7)
		{
			buffer[i+12] = receiveBuffer[i + 1]*0.02936f;
		}
		else 
		{
			buffer[i+12]= receiveBuffer[i+1];
		}
	}

	_device4.ReadMeasurement(receiveBuffer, zyxt);
	for (int i = 2; i < 8; i++)
	{
		if (i==3 || i==5) 
		{
			buffer[i+18] = receiveBuffer[i + 1]*0.00805f;
		}
		else if (i==7)
		{
			buffer[i+18] = receiveBuffer[i + 1]*0.02936f;
		}
		else 
		{
			buffer[i+18]= receiveBuffer[i+1];
		}
	}
}


void MagLib::printRawData(char *buffer, char *buildBuffer, char *compositionBuffer, int format, int size)
{

	switch (format) {
		case DEC:
			for (int i = 2; i < size; i+=2) 
			{
				float B= buffer[i]*256 + buffer[i+1];
				if (i==6 || i==12 || i==18)
				{
				sprintf(buildBuffer,"%.02f ||",B);
				strcat(compositionBuffer,buildBuffer);
				} else if (i==25)	
				{		
				sprintf(buildBuffer, "%.02f |||", B);
				strcat(compositionBuffer,buildBuffer);
				} else
				{
				sprintf(buildBuffer, "%.02f |", B);
				strcat(compositionBuffer,buildBuffer);			
				}
    			}
			SerialBT.println(compositionBuffer);   // build up output string
			break;

		case HEX:
			for (int i = 2; i < size; i++) {
				sprintf(buildBuffer, "%.02X ", (uint8_t)buffer[i]);
				strcat(compositionBuffer,buildBuffer);
    			}
			SerialBT.println(compositionBuffer);   // build up output string
			break;
		
		default:
			break;
	}	
}

void MagLib::initSDCard(int chipSelect)
{

}

void MagLib::printToSDCard(char *buffer, int size)
{
	
}	// printToSDCard()

void MagLib::closeSDCard()
{
	
}

void MagLib::setMux(int *muxBus, int index)
{
	
}
void MagLib::TimeMeasurement(float TimeTaken)
{
	Serial.print("Time: ");
	Serial.println(TimeTaken, DEC);
}
