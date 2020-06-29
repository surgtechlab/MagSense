using System;
using Xamarin.Forms;
using System.Drawing;

namespace BracePLUS.Extensions
{
    public static class Constants
    {
        // Sensor Device Packet Size Definitions
        public const int NODE_SINGLE =  10;	    // 3axes * 2bytes/axis + 4 time bytes
        public const int NODE_FOUR =    28;	    // 6bytes * 4nodes + 4 time bytes
        public const int NODE_8 =       52;	    // 6bytes * 8nodes + 4 time bytes
        public const int NODE_16 =      100;	// 6bytes * 16nodes + 4 time bytes
        public const int NODE_32 =      196;	// 6bytes * 32nodes + 4 time bytes
        public const int NODE_64 =      388;	// 6bytes * 64nodes + 4 time bytes
        public const int NODE_128 =     772;    // 6bytes * 128nodes + 4 time bytes

        public const int HAILO =        28;	    // 6bytes * 4nodes + 4 time bytes
        public const int MAGTRIX =      100;	// 6bytes * 16nodes + 4 time bytes
        public const int MAGBOARD =     388;	// 6bytes * 64nodes + 4 time bytes

        public const double MAX_PRESSURE = 0.8;

        public const string STORAGE_ACCOUNT_KEY1 = "DefaultEndpointsProtocol=https;AccountName=braceplusappstorage;AccountKey=LmBfodjxy05qZKCAgiKS08WOtyLMudXYt/oyaLpjWxUQeVAyRNZ3F+cZwXmZW07TroKSIrCIsZZGa+fVn85wUQ==;EndpointSuffix=core.windows.net";

        // BLE Definitions
        public const string DEV_NAME = "Brace+";
        public const int BLE_SCAN_TIMEOUT_MS = 10000;
        public const string uartServiceUUID = "49535343-fe7d-4ae5-8fa9-9fafd205e455";
        public const string uartTxCharUUID = "49535343-1e4d-4bd9-ba61-23c647249616";
        public const string uartRxCharUUID = "49535343-8841-43f4-a8d4-ecbe34729bb3";

        // Chart Definitions
        public const string SyncFusionLicense = "MjMyMDQyQDMxMzgyZTMxMmUzMENmYXE2WE5RVlF6TmxLVFNiMzB5eFk3TmJZZnlTVEdhV2JmZUtpZzFBMGM9;MjMyMDQzQDMxMzgyZTMxMmUzMERwOW85NWMxaGxSVFRRdDBHbGxyV1NpUU5XcHcxK1d0YU9mVTNTUEtiYnc9;MjMyMDQ0QDMxMzgyZTMxMmUzMFROUUFJMmI0UFg3SGpxbkFwWndQR3M4ZURrU0tlTzMvVU40dmU4UDNKYTg9;MjMyMDQ1QDMxMzgyZTMxMmUzMFlNOTM0ekd3OFlOaGlVZTg2czZNSnZLamFDMWN2eEJJdkVxNjJCdlFHYVk9";
        public const double BENCHMARK_PRESSURE = 1.000;

        // UI EVENTS
        public const int CONNECTED = 0;
        public const int DISCONNECTED = 1;
        public const int CONNECTING = 2;
        public const int SCAN_START = 3;
        public const int SCAN_FINISH = 4;
        public const int SYS_INIT = 5;
        public const int LOGGING_START = 6;
        public const int LOGGING_FINISH = 7;
        public const int SYS_STREAM_START = 8;
        public const int SYS_STREAM_FINISH = 9;
        public const int DEVICE_FOUND = 10;
        public const int DOWNLOAD_START = 11;
        public const int DOWNLOAD_FINISH = 12;
        public const int IDLE = 13;
        public const int SYNC_START = 14;
        public const int SYNC_FINISH = 15;
        public const int FILE_WRITTEN = 16;
        public const int SCAN_TIMEOUT = 17;
        public const int FILE_DELETED = 18;

        public const int FILE_FORMAT_MMDDHHmm = 0;
        public const int FILE_FORMAT_UTC = 1;

        public static Xamarin.Forms.Color START_COLOUR = Xamarin.Forms.Color.FromHex("#0078E5");
        public static Xamarin.Forms.Color WAIT_COLOUR = Xamarin.Forms.Color.FromHex("#005096");
        public static Xamarin.Forms.Color STOP_COLOUR = Xamarin.Forms.Color.FromHex("#FE0000");
        public static Xamarin.Forms.Color CONNECTED_COLOUR = Xamarin.Forms.Color.FromHex("#09B609");

        public static Xamarin.Forms.Color CLOUD_INDICATOR = Xamarin.Forms.Color.FromHex("#5977F9");

        public const int X_AXIS = 0;
        public const int Y_AXIS = 1;
        public const int Z_AXIS = 2;

        // HEADER Definitions
        public static readonly byte[] HEADER_LOCAL = new byte[] { 0x01, 0x0B, 0x0C };
        public static readonly byte[] HEADER_SIM = new byte[] { 0x02, 0x0B, 0x0C };
        public static readonly byte[] HEADER_MOBILE = new byte[] { 0x04, 0x0B, 0x0C };

        public const long LOCAL = 0x000A0B0C;
        public const long MOBILE = 0x000D0E0F;
        public const long SIM = 0x000B0D0F;
        public const long CLOUD = 0x00C0D0E;
    }
}
