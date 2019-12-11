#include <MagLib.h>
#include <RN487x_BLE.h>

/*** MagLib VARIEABLES ***/
MagLib device;

int LED = 13;
int BAUD = 115200;
uint8_t NODES = NODE_SINGLE;
char receiveBuffer[NODE_SINGLE];

/*** BLE VARIABLES ***/
#define ble Serial1
#define debugSerial Serial

// Maximuim number of milliseconds to wait for USB serial to get ready on boot
#define SERIAL_TIMEOUT_MS 5000

const char* myDeviceName = "Brace+";  // Custom Device name
const char* myPrivateServiceUUID = "AD11CF40063F11E5BE3E0002A5D5C51B"; // Custom private service UUID

// Sensor Value
const char* sensorCharacteristicUUID = "BF3FBD80063F11E59E690002A5D5C501";  // Custom characteristic GATT
const uint8_t sensorCharacteristicLen = NODE_SINGLE;    // Data length (bytes)
const uint8_t sensorHandle = 0x75;
char sensorPayload[sensorCharacteristicLen*2 + 1];

void setup() {
  // put your setup code here, to run once:

  // Setup Brace LEDs
  pinMode(27, OUTPUT);
  pinMode(28, OUTPUT);

  digitalWrite(27, HIGH);
  digitalWrite(28, HIGH);
  
  debugSerial.begin(BAUD);

  init_ble();
  device.initSensingNodesFor(NODE_SINGLE, BAUD, receiveBuffer);
  debugSerial.println("*** INITIALISATION COMPLETE ***");
}

void loop() {
  // put your main code here, to run repeatedly:
  if (rn487xBle.getConnectionStatus())
  {
    // Connected
    digitalWrite(27, HIGH);
    digitalWrite(28, LOW);

    device.readSensingNodesFor(NODES, receiveBuffer);
    
    // Copy hour format to receiveBuffer first then add the rest behind it
    strncpy(sensorPayload, receiveBuffer, sizeof(sensorPayload));
    rn487xBle.writeLocalCharacteristic(sensorHandle, sensorPayload);
  }
  else
  {
    // Not connected to a peer device
    debugSerial.println("Not connected to a peer device");

    digitalWrite(27, LOW);
    digitalWrite(28, HIGH);

    // Delay inter connection polling - when not connected, check for new connections ever 1 second
    delay(1000);
  }
}

void init_ble()
{
  // Wait for PC to connect, give up after SERIAL_TIMEOUT_MS
  while ((!debugSerial) && (millis() < SERIAL_TIMEOUT_MS));

  // Set the optional debug stream
  rn487xBle.setDiag(debugSerial);
  // Initialize the BLE hardware with our sleep and wakeup pins
  rn487xBle.hwInit(-1, -1);
  // Open the communication pipe with the BLE module
  ble.begin(rn487xBle.getDefaultBaudRate());
  // Assign the BLE serial port to the BLE library
  rn487xBle.initBleStream(&ble);
  // Finalize the init. process
  if (rn487xBle.swInit())
  {
    debugSerial.println("Init. procedure done!");
  }
  else
  {
    debugSerial.println("Init. procedure failed!");
    while(1);
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
  rn487xBle.setSerializedName(myDeviceName);
  rn487xBle.setSupportedFeatures(0x4000); // Set to no prompt (no "CMD>")
  rn487xBle.setDefaultServices(DEVICE_INFO_SERVICE);
  // Set the advertising output power (range: min = 5, max = 0)
  rn487xBle.setAdvPower(0);
  rn487xBle.reboot();
  
  rn487xBle.enterCommandMode();  
  rn487xBle.clearAllServices();
  // Set a private service
  rn487xBle.setServiceUUID(myPrivateServiceUUID);
  // Private service contains the sensors characteristic
  rn487xBle.setCharactUUID(sensorCharacteristicUUID, WRITE_PROPERTY | NOTIFY_PROPERTY, sensorCharacteristicLen);
  
  rn487xBle.startPermanentAdvertising(AD_TYPE_FLAGS, "06");
  rn487xBle.startPermanentAdvertising(AD_TYPE_MANUFACTURE_SPECIFIC_DATA, "CD00FE14AD11CF40063F11E5BE3E0002A5D5C51B");

  // take into account the settings by issuing a reboot
  rn487xBle.reboot();
  rn487xBle.enterCommandMode();

  rn487xBle.startCustomAdvertising(100);
}
