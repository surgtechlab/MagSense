 using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading.Tasks;
using BracePLUS.Events;
using BracePLUS.Extensions;
using BracePLUS.Models;
using BracePLUS.Services;
using Microsoft.AppCenter.Crashes;
using MvvmCross.ViewModels;
using Plugin.Toast;
using Xamarin.Forms;
using static BracePLUS.Extensions.Constants;

namespace BracePLUS.ViewModels
{
    public class DebugViewModel : MvxViewModel
    {
        // View properties
        #region ConnectedDevice
        private string _connectedDevice;
        public string ConnectedDevice
        {
            get => _connectedDevice;
            set
            {
                _connectedDevice = value;
                RaisePropertyChanged(() => ConnectedDevice);
            }
        }
        #endregion
        #region RSSI
        private string _rssi;
        public string RSSI
        {
            get => _rssi;
            set
            {
                _rssi = value;
                RaisePropertyChanged(() => RSSI);
            }
        }
        #endregion
        #region ServiceID
        private string _serviceID;
        public string ServiceID
        {
            get => _serviceID;
            set
            {
                _serviceID = value;
                RaisePropertyChanged(ServiceID);
            }
        }
        #endregion
        #region CharTxID
        private string _charTxID;
        public string CharTxID
        {
            get => _charTxID;
            set
            {
                _charTxID = value;
                RaisePropertyChanged(CharTxID);
            }
        }
        #endregion
        #region CharRxID
        private string _charRxID;
        public string CharRxID
        {
            get => _charRxID;
            set
            {
                _charRxID = value;
                RaisePropertyChanged(CharRxID);
            }
        }
        #endregion

        // View commands
        public Command SimulateData { get; set; }
        public Command ClearFiles { get; set; }

        // Private members
        readonly Random random;
        readonly MessageHandler handler;
        StackLayout stack;

        public DebugViewModel()
        {
            random = new Random();
            handler = new MessageHandler();
            // Commands
            SimulateData = new Command(() => ExecuteSimulateData());
            ClearFiles = new Command(() => ExecuteClearFiles());

            // Events from Brace Client
            App.Client.SystemEvent += Client_SystemEvent;

            // Status messages from all app systems.
            MessagingCenter.Subscribe<BraceClient, string>(this, "StatusMessage", (sender, arg) => AddMessage(arg));
        }

        public void RegisterStack(StackLayout stack)
        {
            this.stack = stack;
        }

        private void Client_SystemEvent(object sender, SystemUpdatedEventArgs e)
        {
            switch (e.Status)
            {
                case CONNECTED:
                    try
                    {
                        ConnectedDevice = e.Device.Name;
                        RSSI = e.Device.Rssi.ToString();
                        ServiceID = e.ServiceId;
                        CharTxID = e.UartTxId;
                        CharRxID = e.UartRxId;
                    }
                    catch (Exception ex)
                    {
                        Crashes.TrackError(ex);
                        SetNullValues();
                    }
                    break;

                case DISCONNECTED:
                    SetNullValues();
                    break;

                case SCAN_START:
                    SetNullValues();
                    break;

                case SCAN_FINISH:
                    if (!App.IsConnected)
                    {
                        SetNullValues();
                    }
                    break;

                default:
                    break;
            }
        }

        private void AddMessage(string msg)
        {
            msg = DateTime.Now.ToString() + " " + msg;

            Device.BeginInvokeOnMainThread(() =>
            {
                try
                {
                    stack.Children.Insert(0, new Label
                    {
                        Text = msg,
                        TextColor = Color.Blue,
                        Margin = 3,
                        FontSize = 12
                    });

                    if (stack.Children.Count > 200)
                    {
                        stack.Children.RemoveAt(200);
                    }
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                }
            });
        }

        private async void ExecuteClearFiles()
        {
            var clear = await Application.Current.MainPage.DisplayAlert("Clear files", "Do you wish to clear all files? This cannot be undone.", "Yes", "No");

            if (clear)
            {
                var msg = "Clearing app files.";
                App.DebugMsg(msg);
                App.ClearFiles();
            }
        }
 
        private void ExecuteSimulateData()
        {
            var _f = handler.GetFileName(DateTime.Now, file_format: FILE_FORMAT_MMDDHHmm);

            var filename = _f.Remove(8);
            filename += "_SIM.txt";

            var sim_data = new List<byte[]>();

            for (int i = 0; i < random.Next(20, 200); i++)
            {
                byte[] temp = new byte[128];
                for (int j = 4; j < 100; j++)
                {
                    long t = j + i * 128;

                    temp[3] = (byte)((t >> 24) & 0xFF);
                    temp[2] = (byte)((t >> 16) & 0xFF);
                    temp[1] = (byte)((t >> 8) & 0xFF);
                    temp[0] = (byte)(t & 0xFF);

                    temp[j] = (byte)random.Next(0xFF);
                }

                sim_data.Add(temp);
            }

            var msg = $"Creating simulation file: {(sim_data.Count * 128) / 1000} KB";
            App.DebugMsg(msg);

            CrossToastPopUp.Current.ShowToastMessage($"Written file: {filename}");
            FileManager.WriteFile(sim_data, filename, header: HEADER_SIM, footer: HEADER_SIM);
        }

        private void SetNullValues()
        {
            ConnectedDevice = "-";
            RSSI = "-";
            ServiceID = "-";
            CharTxID = "-";
            CharRxID = "-";
        }
    }
}
