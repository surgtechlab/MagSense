using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using Xamarin.Forms;
using BracePLUS.Extensions;
using System.Diagnostics;
using System.IO;
using Xamarin.Essentials;
using BracePLUS.Events;
using static BracePLUS.Extensions.Constants;
using BracePLUS.Services;
using Plugin.Toast;
using BracePLUS.Analysis;

namespace BracePLUS.Models
{
    public class DataObject : BindableObject
    {
        private readonly MessageHandler handler;

        #region File Properties
        public bool IsDownloaded { get; set; }
        public DateTime Date { get; set; }
        public string Directory { get; set; }
        public string DirectoryCSV { get; set; }
        public string Filename { get; set; }
        public string FilenameCSV { get; set; }
        public string Location { get; set; }
        public long Size { get; set; }
        public double Duration { get; set; }
        #endregion
        #region View Properties
        public string Text
        {
            get => BitConverter.ToString(RawData);
            set { }
        }
        public string FormattedSize
        {
            get => handler.FormattedFileSize(Size);
            set { }
        }
        public string DataString
        { 
            get => handler.GetPreviewDataString(RawData);
            set { }
        }
        public string Name 
        { 
            get => string.Format($"{Date.ToShortDateString()}, {Date.ToShortTimeString()}");
            set { }
        }
        public string FormattedPercentageDifference
        {
            get => IsDownloaded ? handler.FormattedPercentageDifference(AveragePressure, BENCHMARK_PRESSURE) : "-";
            set { }
        }
        public ObservableCollection<ChartDataModel> NormalData { get; set; }
        public ObservableCollection<ChartDataModel> PreviewNormalData { get; set; }
        public string Detail
        {
            get => string.Format("{0}, {1:0.00}s", FormattedSize, Duration);
            set { }
        }
        public string ChartEnabled { get; set; }
        public double ChartMaximum { get; set; }
        public double ChartMinimum { get; set; }
        public bool ProgressBarEnabled { get; set; }
        public float DownloadProgress { get; set; }
        public string UpDownImage { get; set; }
        #endregion
        #region Data Properties
        public double AveragePressure { get; set; }
        public double MaxPressure { get; set; }
        public byte[] RawData { get; set; }
        public List<double[,]> CalibratedData { get; set; }
        public string Tag { get; set; }
        public Color TagColour { get; set; }
        #endregion

        // Commands
        public Command ShareClicked { get; set; }
        public Command DownloadCommand { get; set; }

        public DataObject()
        {
            handler = new MessageHandler();
            NormalData = new ObservableCollection<ChartDataModel>();
            PreviewNormalData = new ObservableCollection<ChartDataModel>();

            ShareClicked = new Command(async () => await ExecuteShareCommand());
            DownloadCommand = new Command(async () => await ExecuteDownloadCommand());

            ChartEnabled = "False";
            ProgressBarEnabled = false;

            CalibratedData = new List<double[,]>();

            App.Client.DownloadProgression += Client_OnDownloadProgress;
        }

        #region Events
        void Client_OnDownloadProgress(object sender, DownloadProgressEventArgs e)
        {
            ProgressBarEnabled = true;
            if (e.Value >= 1.0) ProgressBarEnabled = false;
            else
            {
                //Debug.WriteLine(e.Value);
                ProgressBarEnabled = true;
                DownloadProgress = e.Value;
            }
        }
        #endregion

        #region Command Methods
        private async Task ExecuteShareCommand()
        {
            var file = Path.Combine(App.FolderPath, FilenameCSV);
            Debug.WriteLine("Sharing file: " + file);

            await Share.RequestAsync(new ShareFileRequest
            {
                Title = Filename,
                File = new ShareFile(file)
            });
        }

        public async Task ExecuteDownloadCommand()
        {
            try
            {
                if (RawData.Length > 6)
                {
                    CrossToastPopUp.Current.ShowToastMessage("File already downloaded.");

                    ChartEnabled = "True";
                    ProgressBarEnabled = false;
                    IsDownloaded = true;
                    return;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
                return;
            }

            try
            {
                if (Location == "Local")
                {
                    DownloadLocalData(Filename);
                }
                else if (Location == "Mobile")
                {
                    if (App.IsConnected)
                    {
                        ProgressBarEnabled = true;
                        await App.Client.DownloadFile(Filename);
                    }
                    else
                    {
                        await Application.Current.MainPage.DisplayAlert
                            ("Not Connected", "Please connect to Brace+ to download.", "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Filedownload failed: " + ex.Message);
            }
        }
        #endregion

        public void DebugObject()
        {
            Debug.WriteLine("*** DEBUG OBJECT ***");
            Debug.WriteLine($"*** RawData Object: {Name} ***");
            Debug.WriteLine($"*** Date of creation: {Date} ***");
            Debug.WriteLine($"*** Directory: {Directory} ***");

            if (!string.IsNullOrEmpty(DirectoryCSV))
                Debug.WriteLine($"*** CSV Directory: {DirectoryCSV} ***");

            Debug.WriteLine($"*** Downloaded? {IsDownloaded} ***");
            if (IsDownloaded)
            {
                Debug.WriteLine($"*** Size: {FormattedSize} ***");
                Debug.WriteLine($"*** Average: {AveragePressure} ***");
                Debug.WriteLine($"*** Max pressure: {MaxPressure} ***");
                Debug.WriteLine($"*** Duration: {Duration} ***");
            }
            Debug.WriteLine("*** END ***\n");
        }

        public void DownloadLocalData(string path)
        {
            try
            {
                if (RawData.Length > 6)
                {
                    ChartEnabled = "True";
                    IsDownloaded = true;
                    return;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Check for download failed with exception: " + ex.Message);
            }
            
            // Download data
            try
            {
                RawData = File.ReadAllBytes(path);
                if (Location == "Local") IsDownloaded = true;

                ChartEnabled = "True";
            }
            catch (Exception ex)
            {
                IsDownloaded = false;
                Debug.WriteLine("DownloadLocalData failed with exception: " + ex.Message);
            }
        }

        public void Analyze()
        {
            // Basic analysis
            if (RawData.Length > 6) // (only contains header/footer)
            {
                FilenameCSV = Filename.Remove(8).Insert(8, "_CALIB.csv");
                DirectoryCSV = Path.Combine(App.FolderPath, FilenameCSV);

                // Check if calibration already retrieved
                if (CalibratedData.Count < 1) 
                    CalibratedData = RetrieveCalibration(RawData, FilenameCSV);

                // Extract list of normals
                var normals = AnalysisAssitant.ExtractAbsoluteMaximumNormals(CalibratedData);
                var averages = AnalysisAssitant.ExtractAbsoluteAverageNormals(CalibratedData);

                Duration = AnalysisAssitant.GetPacketDuration(RawData);
                AveragePressure = AnalysisAssitant.GetAverage(averages);
                MaxPressure = AnalysisAssitant.GetMaximum(normals);

                if (AveragePressure > BENCHMARK_PRESSURE)
                    UpDownImage = "UpArrow.png";
                else
                    UpDownImage = "DownArrow.png";                    

                InitPreviewChartData(averages);
                InitNormalDataChart(averages);
            }
            else
            {
                ChartEnabled = "False";
            }
        }

        private void InitNormalDataChart(List<double> averages)
        {
            // Add to list of normals for data chart
            for (int i = 0; i < averages.Count; i++)
                NormalData.Add(new ChartDataModel(i.ToString(), averages[i]));
        }

        private void InitPreviewChartData(List<double> averages)
        {
            try
            {
                if (PreviewNormalData.Count < 1)
                {
                    for (int i = 0; i < (averages.Count > 50 ? 50 : averages.Count); i++)
                        PreviewNormalData.Add(new ChartDataModel(i.ToString(), averages[i]));
                    
                }
                ChartEnabled = "True";

                // Set chart max/mins
                ChartMaximum = Math.Round(AveragePressure, 2) + 0.05;
                ChartMinimum = Math.Round(AveragePressure, 2) - 0.05;
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Unable to add chart preview data: " + ex.Message);
            }
        }

        private List<double[,]> RetrieveCalibration(byte[] bytes, string name)
        {
            try
            {
                // Check if calibration file exists
                if (File.Exists(DirectoryCSV))
                {
                    // Read data
                    var calibData = FileManager.ReadCSV(DirectoryCSV);
                    return calibData;
                }
                else
                {
                    // Perform calibration
                    var calibData = AnalysisAssitant.Calibrate(bytes);
                    // Export data to CSV file
                    FileManager.WriteCSV(calibData, name);
                    // Return data
                    return calibData;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Calibration retrieval failed: " + ex.Message);
                return null;
            }
        }       
    }

    public class DataObjectGroup : List<DataObject>
    {
        public string Heading { get; set; }
        public List<DataObject> DataObjects => this;

        public double GetGroupMaximum()
        {
            List<double> max_normals = new List<double>();

            foreach (var obj in this)
            {
                if (obj.IsDownloaded)
                    max_normals.Add(obj.MaxPressure);
            }

            return AnalysisAssitant.GetMaximum(max_normals);
        }
    }
}