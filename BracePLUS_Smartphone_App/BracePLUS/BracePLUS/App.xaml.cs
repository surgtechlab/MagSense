using System;
using Xamarin.Forms;
using BracePLUS.Views;
using System.Diagnostics;
using BracePLUS.Models;
using static BracePLUS.Extensions.Constants;
using System.IO;
using BracePLUS.Extensions;
using Xamarin.Essentials;
using System.Threading.Tasks;
using BracePLUS.Services;

namespace BracePLUS
{
    public partial class App : Application
    {
        // Models
        public static BraceClient Client;
        public static MessageHandler handler;

        // Global Members
        public static string FolderPath { get; private set; }

        // User Info
        public static double GlobalMax { get; set; }
        public static double GlobalAverage { get; set; }

        // Global variables
        public static bool IsConnected { get; set; }
        public static bool IsAdmin { get; private set; }


        public App()
        {
            //Register Syncfusion license
            Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense(SyncFusionLicense);
            FolderPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData));

            InitializeComponent();

            handler = new MessageHandler();
            Client = new BraceClient();

            RemovePersistentAnnoyingMarchFiles();

            MainPage = new MainPage();
        }

        public static void DebugMsg(string debugMsg)
        {
            Debug.WriteLine(debugMsg);
            MessagingCenter.Send(Client, "StatusMessage", debugMsg);
        }

        public static void EnableAdmin()
        {
            if (!IsAdmin)
            {
                IsAdmin = true;
                DebugMsg("Debug mode enabled.");
            }
        }

        protected override async void OnStart()
        {
            IsConnected = false;
            IsAdmin = false;

            await Task.Delay(1000);
            await Client.StartScan();
        }

        protected override void OnSleep()
        {
            // Handle when your app sleeps
        }

        protected override void OnResume()
        {
            // Handle when your app resumes
        }

        static public void Vibrate(int time)
        {
            try
            {
                var duration = TimeSpan.FromSeconds(time);
                Vibration.Vibrate(duration);
            }
            catch (FeatureNotSupportedException ex)
            {
                Debug.WriteLine("Vibration not supported:" + ex.Message);
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Vibration failed: " + ex.Message);
            }
        }

        public static void ClearFiles()
        {
            var files = Directory.EnumerateFiles(FolderPath, "*");

            foreach (var file in files)
                File.Delete(file);
        }

        private void RemovePersistentAnnoyingMarchFiles()
        {
            // Can't remove these files for some reason. Needs looking into in depth.
            var files = Directory.EnumerateFiles(FolderPath, "*.txt");

            foreach (var path in files)
            {
                var date = handler.DecodeFilename(Path.GetFileName(path));
                if (date.Month == 3 && date.Day == 4)
                    FileManager.DeleteFile(path: path);
            }
        }
    }
}