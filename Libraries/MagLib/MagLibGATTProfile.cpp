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
        return rn487xBle.getLastResponse();
    }

    return 0;
}

void MagLibGATTProfile::WriteMenu(uint8_t byte)
{
    sprintf(menuPayload, "%x", byte);
    rn487xBle.writeLocalCharacteristic(menuHandle, menuPayload);
}

void MagLibGATTProfile::WriteStream(char *data, const int size)
{	
	char format[4];
	int i, j;
	int cyc = 0;
	
	// Fixed at 100 bytes for Brace+.
	while (cyc < size) {
		// Cycle through whole buffer in batches of 10 bytes
		for (i = 0; i < 20; i++) {
			// Create formatted data string
			sprintf(format, "%02X", data[i+cyc]);
			// Append to BLE payload
			strcat(streamPayload, format);	
		}
		
		rn487xBle.writeLocalCharacteristic(streamHandle, streamPayload);
		// Empty payload to avoid overload (Copy empty string into memory)
		strcpy(streamPayload, "");
		cyc += 20;
	}
		
	// Write packet footer
	char header[3] = { 'X', 'Y', 'Z' };
	
	for (i = 0; i < 3; i++) {
		sprintf(format, "%02X", header[i]);
		strcat(streamPayload, format);
	}	
	rn487xBle.writeLocalCharacteristic(streamHandle, streamPayload);
}

const char* MagLibGATTProfile::getDeviceName()
{
    return rn487xBle.getDeviceName();
}
