using BracePLUS.Analysis;
using BracePLUS.Events;
using BracePLUS.Extensions;
using BracePLUS.Models;
using BracePLUS.Services;
using Microsoft.AppCenter.Crashes;
using Microsoft.WindowsAzure.Storage.Blob;
using MvvmCross.ViewModels;
using Plugin.Toast;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;

using static BracePLUS.Extensions.Constants;

namespace BracePLUS.Views
{
    public class InspectViewModel : MvxViewModel
    {
        // Public Interface Members
        private DataObject _dataObj;
        public DataObject DataObj 
        {
            get => _dataObj;
            set
            {
                _dataObj = value;
                if (DataObj != null && !DataRetrieved)
                {
                    RetrieveDataFromObject(value);
                    DataRetrieved = true;
                }
            }
        }
        public INavigation Navigation { get; set; }

        #region File Info Section
        public string Date
        {
            get => DataObj.Date.ToString();
            set { }
        }
        public string Location
        {
            get => DataObj.Location;
            set { }
        }
        public double Duration 
        { 
            get => DataObj.Duration; 
            set { }
        }

        private bool _switchToggled;
        public bool SwitchToggled
        {
            get => _switchToggled;
            set
            {
                _switchToggled = value;
                RaisePropertyChanged(() => SwitchToggled);

                ToggleTarredData(value);
            }
        }

        public string FormattedSize
        {
            get => DataObj.FormattedSize;
            set { }
        }
        private bool _tareData;
        public bool TareData
        {
            get => _tareData;
            set
            {
                _tareData = value;
                RaisePropertyChanged(() => TareData);
            }
        }
        #endregion
        #region File Analysis Section
        public double AveragePressure
        {
            get => DataObj.AveragePressure;
            set { }
        }
        public string AverageChange
        {
            get => DataObj.FormattedPercentageDifference;
            set {  }
        }
        public double AverageOverall
        {
            get => App.GlobalAverage;
            set { }
        }
        public double MaxPressure 
        {
            get => DataObj.MaxPressure;
            set { }
        }
        public double MaximumChange
        {
            get => (100*MaxPressure / App.GlobalMax)-100;
            set { }
        }
        public double MaximumOverall
        {
            get => App.GlobalMax;
            set { }
        }

        #endregion
        #region Charts Section 
        public ObservableCollection<ChartDataModel> LineChartData { get; set; }
        public ObservableCollection<ChartDataModel> BarChartData { get; set; }
        private List<double> _rawNormals;
        public List<double> RawNormals
        {
            get => _rawNormals;
            set
            {
                _rawNormals = value;
                RaisePropertyChanged(() => RawNormals);
            }
        }
        private List<double> _lineOffsetNormals;
        public List<double> LineChartOffsets
        {
            get => _lineOffsetNormals;
            set
            {
                _lineOffsetNormals = value;
                RaisePropertyChanged(() => LineChartOffsets);
            }
        }

        private double[] _allNodeNormals;
        public double[] AllNodeNormals
        {
            get => _allNodeNormals;
            set
            {
                _allNodeNormals = value;
                RaisePropertyChanged(() => AllNodeNormals);
            }
        }

        private double[] _allNodeOffsets;
        public double[] AllNodeOffsets
        {
            get => _allNodeOffsets;
            set
            {
                _allNodeOffsets = value;
                RaisePropertyChanged(() => AllNodeOffsets);
            }
        }

        private double _sliderValue;
        public double SliderValue
        {
            get => _sliderValue;
            set
            {
                _sliderValue = value;
                RaisePropertyChanged(() => SliderValue);
                SliderValueUpdated(value);
            }
        }
        private double _chartMinimum;
        public double LineChartMinimum
        {
            get => _chartMinimum;
            set
            {
                _chartMinimum = value;
                RaisePropertyChanged(() => LineChartMinimum);
            }
        }
        private double _chartMaximum;
        public double LineChartMaximum
        {
            get => _chartMaximum;
            set
            {
                _chartMaximum = value;
                RaisePropertyChanged(() => LineChartMaximum);
            }
        }
        private double _barChartMinimum;
        public double BarChartMinimum
        {
            get => _barChartMinimum;
            set
            {
                _barChartMinimum = value;
                RaisePropertyChanged(() => BarChartMinimum);
            }
        }
        private double _barChartMaximum;
        public double BarChartMaximum
        {
            get => _barChartMaximum;
            set
            {
                _barChartMaximum = value;
                RaisePropertyChanged(() => BarChartMaximum);
            }
        }
        #endregion
        #region Debug Section
        private int _packets;
        public int Packets
        {
            get => _packets;
            set
            {
                _packets = value;
                RaisePropertyChanged(() => Packets);
            }
        }
        public string DataString
        {
            get => DataObj.DataString;
            set { }
        }
        public string Filename
        {
            get => DataObj.Directory;
            set { }
        }
        #endregion

        #region Commands
        // Public Interface Commands
        public Command ShareCommand { get; set; }
        public Command DeleteCommand { get; set; }
        public Command CloudUploadCommand { get; set; }
        public Command ShowDataCommand { get; set; }
        public Command ShowGraphCommand { get; set; }
        #endregion

        private readonly MessageHandler handler;
        public bool DataRetrieved = false;

        public InspectViewModel()
        {
            // Commands
            ShareCommand = new Command(async () => await ExecuteShareCommand());
            DeleteCommand = new Command(async () => await ExecuteDeleteCommand());
            ShowDataCommand = new Command(() => ExecuteShowDataCommand());
            ShowGraphCommand = new Command(() => ExecuteShowGraphCommand());
            CloudUploadCommand = new Command(async () => await ExecuteCloudUploadCommand());

            DataObj = new DataObject();
            handler = new MessageHandler();

            LineChartData = new ObservableCollection<ChartDataModel>();
            BarChartData = new ObservableCollection<ChartDataModel>();

            RawNormals = new List<double>();
            LineChartOffsets = new List<double>();

            Packets = 30;

            TareData = false;
            AllNodeNormals = new double[16];
            AllNodeOffsets = new double[16];

            LineChartMinimum = 0.85;
            LineChartMaximum = 0.4;

            BarChartMinimum = 0.2;
            BarChartMaximum = 1.0;
        }

        #region Events
        protected virtual void OnLocalFileListUpdated(EventArgs e)
        {
            LocalFileListUpdated?.Invoke(this, e);
        }
        public event EventHandler LocalFileListUpdated;
        #endregion
        #region Command Methods
        private async Task ExecuteShareCommand()
        {
            App.DebugMsg($"Sharing file: {DataObj.Filename}");

            var details = handler.RetrieveShareFileDetails(DataObj, TareData);
            
            await Share.RequestAsync(new ShareFileRequest
            {
                Title = details[0],
                File = new ShareFile(details[1])
            });
        }
        private async Task ExecuteDeleteCommand()
        {
            if (await Application.Current.MainPage.DisplayAlert("Delete File?", "Delete file from local storage?", "Yes", "No"))
            {
                // Clear files from memory
                var files = Directory.EnumerateFiles(App.FolderPath, "*");
                foreach (var filename in files)
                {
                    if (filename == DataObj.Directory)
                    {
                        File.Delete(filename);
                        MessagingCenter.Send(this, "Remove", DataObj);
                    }
                }
                OnLocalFileListUpdated(EventArgs.Empty);

                if (App.IsAdmin)
                {
                    // Clear files from cloud storage
                    await BlobStorageService.DeleteBlob(DataObj.Filename, "patient0");
                }

                await Navigation.PopAsync();
            }
        }
        private async void ExecuteShowGraphCommand()
        {
            await Navigation.PushAsync(new GraphView
            {
                BindingContext = DataObj
            });
        }
        private async Task ExecuteCloudUploadCommand()
        {
            App.DebugMsg($"Uploading {DataObj.Filename}");
            CrossToastPopUp.Current.ShowToastMessage($"Uploading {DataObj.Filename}");

            // Get list of files already in cloud.
            var items = await BlobStorageService.GetBlobs<CloudBlockBlob>("patient0");

            // Check not already uploaded
            bool skip = false;
            foreach (var item in items) 
                if (item.Name == DataObj.Filename) skip = true;
          
            if (!skip) await BlobStorageService.SaveBlockBlob("patient0", DataObj.RawData, DataObj.Filename);
        }
        private async void ExecuteShowDataCommand()
        {
            await Navigation.PushAsync(new RawDataView
            {
                BindingContext = DataObj
            });
        }
        #endregion

        public void RetrieveDataFromObject(DataObject dataObject)
        {
            // If data not downloaded or charts have already been initialised, do not proceed.
            if (dataObject == null || !dataObject.IsDownloaded)
                return;

            if (LineChartData.Count > 1)
                return;

            DataObj = dataObject;
            Packets = (DataObj.RawData.Length - 6) / 128;

            InitLineChart(DataObj.CalibratedData);
            InitBarChart(DataObj.CalibratedData);
        }

        /// <summary>
        /// Switch view of 
        /// </summary>
        /// <param name="tare"></param>
        private void ToggleTarredData(bool tare)
        {
            LineChartData.Clear();
            BarChartData.Clear();

            TareData = tare;

            if (tare)
            {
                // TARRED DATA

                // Update line chart
                LineChartMinimum = -0.2;
                LineChartMaximum = 0.2;

                // Update chart data
                // If less than 200 data points avaible, use total number of points
                for (int i = 0; i < (LineChartOffsets.Count > 200 ? 200 : LineChartOffsets.Count); i++)
                    LineChartData.Add(new ChartDataModel(i.ToString(), LineChartOffsets[i]));

                // Update bar chart
                BarChartMinimum = 0.6;
                BarChartMaximum = 1.4;

                AllNodeNormals = AnalysisAssitant.ExtractAbsolutePacketNormals(DataObj.CalibratedData, (int)SliderValue - 1);

                for (int i = 0; i < 16; i++)
                    BarChartData.Add(new ChartDataModel(i.ToString(), AllNodeOffsets[i] + AllNodeNormals[i]));
            }
            else
            {
                // UNTARRED DATA

                // Update line chart
                LineChartMinimum = 0.4;
                LineChartMaximum = 0.8;

                // If less than 200 data points avaible, use total number of points
                for (int i = 0; i < (RawNormals.Count > 200 ? 200 : RawNormals.Count); i++)
                    LineChartData.Add(new ChartDataModel(i.ToString(), RawNormals[i]));

                // Update bar chart
                BarChartMinimum = 0.2;
                BarChartMaximum = 1.0;

                AllNodeNormals = AnalysisAssitant.ExtractAbsolutePacketNormals(DataObj.CalibratedData, (int)SliderValue - 1);

                for (int i = 0; i < 16; i++)
                    BarChartData.Add(new ChartDataModel(i.ToString(), AllNodeNormals[i]));
            }
        }

        private void SliderValueUpdated(double value)
        {
            int val = (int)value;
            if (val < 1) val = 1;

            try
            {
                BarChartData.Clear();

                Debug.WriteLine(TareData);

                AllNodeNormals = AnalysisAssitant.ExtractAbsolutePacketNormals(DataObj.CalibratedData, val - 1);

                if (TareData)
                {
                    for (int i = 0; i < 16; i++)
                        BarChartData.Add(new ChartDataModel(i.ToString(), AllNodeOffsets[i] + AllNodeNormals[i]));
                }
                else
                {
                    for (int i = 0; i < 16; i++)
                        BarChartData.Add(new ChartDataModel(i.ToString(), AllNodeNormals[i]));
                }
                
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Replace bar chart nodes failed with exception: " + ex.Message);

                for (int i = 0; i < 16; i++)
                    Debug.WriteLine(BarChartData[i]);
            }
        }

        private void InitBarChart(List<double[,]> calibData)
        {
            try
            {
                // Retrieve array of 16 doubles containing sensor Z axis values for a specific data packet (first/0th packet in this case)
                AllNodeNormals = AnalysisAssitant.ExtractAbsolutePacketNormals(calibData, 1);

                // Gather offsets to use when tarring data.
                for (int i = 0; i < 16; i++)
                    AllNodeOffsets[i] = 1 - AllNodeNormals[i];

                // Add new bar chart for each sensor Z value in packet
                for (int i = 0; i < 16; i++)
                    BarChartData.Add(new ChartDataModel((i + 1).ToString(), AllNodeNormals[i]));
            }
            catch (Exception ex)
            {
                Debug.WriteLine("All nodes chart initialisation failed with exception: " + ex.Message);
            }
        }

        private void InitLineChart(List<double[,]> calibData)
        { 
            // Take calibrated data
            var data = AnalysisAssitant.ExtractAbsoluteAverageNormals(calibData);
            RawNormals = data;

            // Create offset from initial value (0th index is sometimes wrong- needs fixing.)
            var offset = data[2];

            // Create new set of values with offset removed to create tarred data.
            for (int i = 0; i < data.Count; i++)
                LineChartOffsets.Add(data[i] - offset);

            // Add chart data
            try
            {
                // If less than 200 data points avaible, use total number of points
                for (int i = 0; i < (data.Count > 200 ? 200 : data.Count); i++)
                    LineChartData.Add(new ChartDataModel(i.ToString(), data[i]));
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Line chart initialisation failed with exception: " + ex.Message);
            }
        }
    }
}