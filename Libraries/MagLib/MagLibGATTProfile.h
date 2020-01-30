#ifndef MAGLIBGATT_PROFILE_H
#define MAGLIBGATT_PROFILE_H

#include <Arduino.h>
#include "RN487x_BLE.h"

#define ble Serial1

/** @file   MagLibGATTProfile.h
 *  @brief  Class to contain custom Gatt profile for MagLib BLE communications.
 *  @author Max Houghton
 *  @date   29.11.2019
 */
class MagLibGATTProfile
{
public:

    /** Default constructor
     */
    MagLibGATTProfile();

    /**	Default deconstructor
     */
    ~MagLibGATTProfile();

    /** Initialise BLE device.
     */
    bool init();

    /** Read menu characteristic.
     *  @return 16bit integer value of menu characterisic value.
     */
    const char* ReadMenu();

    /** Write byte on menu characteristic.
     *  @param bytes Data to be written.
     */
    void WriteMenu(uint8_t byte);

    /** Write data on stream characteristic.
     *  @param data Data to be written.
	 *	@param size Length of the data array.
     */
    void WriteStream(char *data, const int size);

    /** Return the advertised device name.
     *  @return device name.
     */
    const char* getDeviceName(void);
	
	/** Get current BLE connection status.
     */
    bool getStatus(void) { return rn487xBle.getConnectionStatus(); };
	
	/**	Check if bytes avaible at UART port.
	 */
	bool dataAvailable(void) { return rn487xBle.isInputBuffer(); };
	
	/**	Flush out all incoming serial data
	 */
	void clearBuffer(void) { ble.flush(); };

private:

    // Custom GATT Profile for MagLib System
    const char* magServiceUUID = "AD11CF40063F11E5BE3E0002A5D5C51B"; // Custom private service UUID

    // Custom GATT characteristic for BLE data streaming
    const char* streamUUID = "BF3FBD80063F11E59E690002A5D5C501";
    static const uint8_t streamLen = 20;    // Data length (bytes) - max of 20 for BLE
    static const uint8_t streamHandle = 0x75;
	char streamPayload[streamLen*2 +1];

    // Custom GATT characteristic for MagLib menu system
    const char* menuUUID = "BF3FBD80063F11E59E690002A5D5C502";
    static const uint8_t menuLen = 4;    // Data length (bytes)
    static const uint8_t menuHandle = 0x72;
    char menuPayload[menuLen*2 +1];

    // Advertised device name
    char* deviceName;
};

#endif /* MAGLIBGATT_PROFILE_H */
