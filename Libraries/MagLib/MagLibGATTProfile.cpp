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
    rn487xBle.setDevName("MagDevice");
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

    rn487xBle.startCustomAdvertising(10);

    return true;
}

bool MagLibGATTProfile::getStatus()
{
    return rn487xBle.getConnectionStatus();
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

void MagLibGATTProfile::WriteStream(uint8_t *data)
{
    size_t len = sizeof(data);
    uint8_t temp_buf[20];

    // Iterate through in sets of 20 until less than 20 remain.
    while (len >= 20) {
        sprintf(streamPayload, "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x",
            data[len-1], data[len-2], data[len-3], data[len-4], data[len-5],
            data[len-6], data[len-7], data[len-8], data[len-9], data[len-10],
            data[len-11], data[len-12], data[len-13], data[len-14], data[len-15],
            data[len-16], data[len-17], data[len-18], data[len-19], data[len-20]);
        rn487xBle.writeLocalCharacteristic(streamHandle, streamPayload);
        len -= 20;
    }

    // Number of remaining bytes left is variable, so create a fixed length temporary buffer and send that
    memcpy(temp_buf, data, 20);

    sprintf(streamPayload, "%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x",
        temp_buf[19], temp_buf[18], temp_buf[17], temp_buf[16], temp_buf[15],
        temp_buf[14], temp_buf[13], temp_buf[12], temp_buf[11], temp_buf[10],
        temp_buf[9], temp_buf[8], temp_buf[7], temp_buf[6], temp_buf[5],
        temp_buf[4], temp_buf[3], temp_buf[2], temp_buf[1], temp_buf[0]);

    rn487xBle.writeLocalCharacteristic(streamHandle, streamPayload);
}

const char* MagLibGATTProfile::getDeviceName()
{
    return rn487xBle.getDeviceName();
}
