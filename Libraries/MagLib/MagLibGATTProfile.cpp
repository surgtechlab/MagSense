#include "MagLibGATTProfile.h"

MagLibGATTProfile::MagLibGATTProfile()
{

}

MagLibGATTProfile::~MagLibGATTProfile()
{

}

bool MagLibGATTProfile::init()
{
    // Set the optional debug stream
    rn487xBle.setDiag(Serial);
	// Reset the device
	rn487xBle.hwReset();
    // Initialize the BLE hardware with our sleep and wakeup pins
    rn487xBle.hwInit(-1, -1);
    // Open communication pipe with the BLE module
    ble.begin(rn487xBle.getDefaultBaudRate());
    // Assign the BLE serial port to the BLE library
    rn487xBle.initBleStream(&ble);

    if (!rn487xBle.swInit()) {
        return false;
    }

    // Fist, enter into command mode
    rn487xBle.enterCommandMode();
    // Stop advertising before starting the demo
    rn487xBle.stopAdvertising();
    rn487xBle.clearPermanentAdvertising();
    rn487xBle.clearPermanentBeacon();
    rn487xBle.clearImmediateAdvertising();
    rn487xBle.clearImmediateBeacon();
    rn487xBle.clearAllServices();

    // Set the serialized device name
	rn487xBle.setDevName("Brace+");
    rn487xBle.setSupportedFeatures(0x4000); // Set to no prompt (no "CMD>")
    rn487xBle.setDefaultServices(DEVICE_INFO_SERVICE);

    // Set the advertising output power (range: min = 5, max = 0)
    rn487xBle.setAdvPower(0);
    rn487xBle.setConPower(0);
    rn487xBle.reboot();
    rn487xBle.enterCommandMode();
    rn487xBle.clearAllServices();
    // Set a private service
    rn487xBle.setServiceUUID(magServiceUUID);
    // Private service contains the menu/streaming characteristics
    rn487xBle.setCharactUUID(menuUUID, WRITE_PROPERTY | NOTIFY_PROPERTY, menuLen);
    rn487xBle.setCharactUUID(streamUUID, WRITE_PROPERTY | NOTIFY_PROPERTY, streamLen);

    rn487xBle.startPermanentAdvertising(AD_TYPE_FLAGS, "06");
    rn487xBle.startPermanentAdvertising(AD_TYPE_MANUFACTURE_SPECIFIC_DATA, "CD00FE14AD11CF40063F11E5BE3E0002A5D5C51B");

    // take into account the settings by issuing a reboot
    rn487xBle.reboot();
    rn487xBle.enterCommandMode();

    rn487xBle.startCustomAdvertising(50);

    return true;
}

const char* MagLibGATTProfile::ReadMenu()
{
    // Check data available
    if (rn487xBle.readLocalCharacteristic(menuHandle))
    {
        const char* payload = rn487xBle.getLastResponse();
        return payload;
    }

    return 0;
}

void MagLibGATTProfile::WriteMenu(uint8_t byte)
{
    sprintf(menuPayload, "%x", byte);
    rn487xBle.writeLocalCharacteristic(menuHandle, menuPayload);
}

void MagLibGATTProfile::WriteStream(char *data)
{	
	unsigned long t2 = millis();
	// Test function
	//sprintf(streamPayload, "%x%x%x%x%x%x%x%x", 54, 76, 56, 85, 64, 50, 60, 70);
	//rn487xBle.writeLocalCharacteristic(streamHandle, streamPayload);
	
	//Serial.printf("write menu: %d millis\n", millis() - t2);

	
	size_t len = sizeof(data);
	char temp[16];
	int i;
	int cyc = 0;
	
	while (cyc < len) {
		// Cycle through whole buffer in batches of 20 bytes
		for (i = 0; i < 20; i++) {
			// Create formatted data string
			sprintf(temp, "%X", data[i+cyc]);
			// Append to BLE payload
			strcat(streamPayload, temp);	
		}
		
		Serial.write(streamPayload, sizeof(streamPayload));
		rn487xBle.writeLocalCharacteristic(streamHandle, streamPayload);
		// Empty payload to avoid overlap (Copy empty string into memory)
		strcpy(streamPayload, "");
		cyc += 20;
	}
	
    // Number of remaining bytes left is variable, so create a fixed 
	// length temporary buffer, copy bytes across and send that.
		
	uint8_t temp_buf[20];
    memcpy(temp_buf, data, sizeof(temp_buf));
	
	for (i = 0; i < 20; i++) {
		// Create temp formatted data string
		sprintf(temp, "%x", temp_buf[i]);
		// Append to BLE Payload
		strcat(streamPayload, temp);
	}
	rn487xBle.writeLocalCharacteristic(streamHandle, streamPayload);
	// Empty payload to avoid overlap (Copy empty string into memory)
	strcpy(streamPayload, "");
	
}

const char* MagLibGATTProfile::getDeviceName()
{
    return rn487xBle.getDeviceName();
}
