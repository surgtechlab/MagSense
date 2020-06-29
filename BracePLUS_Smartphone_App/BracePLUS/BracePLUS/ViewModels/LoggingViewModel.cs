using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using BracePLUS.Analysis;
using BracePLUS.Extensions;
using BracePLUS.Models;
using BracePLUS.Views;
using Microsoft.AppCenter.Crashes;
using MvvmCross.ViewModels;
using Xamarin.Forms;

using static BracePLUS.Extensions.Constants;

namespace BracePLUS.ViewModels
{
    class LoggingViewModel : MvxViewModel
    {
        #region DataObjectsList
        private ObservableCollection<DataObjectGroup> _dataObjectGroups;
        public ObservableCollection<DataObjectGroup> DataObjectGroups
        {
            get => _dataObjectGroups;
            set
            {
                _dataObjectGroups = value;
                RaisePropertyChanged(() => DataObjectGroups);
            }
        }
        private DataObject _selectedObject;
        public DataObject SelectedObject
        {
            get => _selectedObject;
            set
            {
                _selectedObject = value;
                RaisePropertyChanged(() => SelectedObject);

                if (_selectedObject != null)
                {
                    HandleSelection(_selectedObject);
                }
            }
        }
        #endregion
        #region Chart
        private ObservableCollection<ChartDataModel> _loggedColumnSeries;
        public ObservableCollection<ChartDataModel> LoggedColumnSeries
        {
            get => _loggedColumnSeries;
            set
            {
                _loggedColumnSeries = value;
                RaisePropertyChanged(() => LoggedColumnSeries);
            }
        }
        private double[] _strokeDashArray;
        public double[] StrokeDashArray
        {
            get => _strokeDashArray;
            set
            {
                _strokeDashArray = value;
                RaisePropertyChanged(() => StrokeDashArray);
            }
        }
        private double _annotationLineHeight;
        public double AnnotationLineHeight
        {
            get => _annotationLineHeight;
            set
            {
                _annotationLineHeight = value;
                RaisePropertyChanged(() => AnnotationLineHeight);
            }
        }
        #endregion
        #region Refresh
        private bool _isRefreshing;
        public bool IsRefreshing
        {
            get => _isRefreshing;
            set
            {
                _isRefreshing = value;
                RaisePropertyChanged(() => IsRefreshing);
            }
        }
        public Command RefreshCommand { get; set; }
        #endregion

        public Command LogCommand { get; set; }
        public INavigation Navigation { get; set; }

        // Private Properties
        private readonly MessageHandler handler;

        public LoggingViewModel()
        {
            handler = new MessageHandler();

            // List of different data object groups
            DataObjectGroups = new ObservableCollection<DataObjectGroup>();
            LoggedColumnSeries = new ObservableCollection<ChartDataModel>();

            StrokeDashArray = new double[2] { 2, 3 };
            AnnotationLineHeight = BENCHMARK_PRESSURE;

            RefreshCommand = new Command(() => ExecuteRefreshCommand());
            LogCommand = new Command(() => ExecuteLogCommand());

            App.Client.SystemEvent += async (s, e) =>
            {
                switch (e.Status)
                {
                    case FILE_WRITTEN:
                        RefreshObjects();
                        break;

                    case LOGGING_FINISH:
                        await App.Client.DownloadFile(e.Filename);
                        break;

                    case DOWNLOAD_FINISH:
                        UpdateObject(e.Filename);
                        RefreshObjects();
                        break;
                }
            };

            RefreshObjects();
        }

        #region Command Methods
        private void ExecuteRefreshCommand()
        {
            IsRefreshing = true;
            RefreshObjects();
            IsRefreshing = false;
        }
        private async void ExecuteLogCommand()
        {
            if (App.IsConnected)
            {
                if (App.Client.STATUS != LOGGING_START)
                {
                    // Create filename using current datetime
                    var filename = handler.GetFileName(DateTime.Now, extension: null);

                    // Request start saving from client
                    await App.Client.StartLogging(filename);
                }
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("Not connected.", "Please connect to a device to log data.", "OK");
            }
            
        }
        #endregion

        public void OnAppearing()
        {
            SelectedObject = null;
        }

        public void RefreshObjects()
        {
            var msg = "LOGGING: Refreshing files...";
            App.DebugMsg(msg);

            LoadLocalFiles();

            int downloaded = 0;
            double avgs_sum = 0.0;
            // Scan through each group of objects
            for (int i = 0; i < DataObjectGroups.Count; i++)
            {
                var objectGroup = DataObjectGroups[i];
                foreach (DataObject obj in objectGroup)
                {
                    if (obj.IsDownloaded)
                    {
                        avgs_sum += obj.AveragePressure;
                        downloaded++;
                        if (obj.MaxPressure > App.GlobalMax) App.GlobalMax = obj.MaxPressure;
                    }
                }

                App.GlobalAverage = avgs_sum / downloaded;
            }

            UpdateGraph(DataObjectGroups);
            ReorderDataObjects();
        }

        #region Private Methods
        private async void HandleSelection(DataObject item)
        {
            // Inspect file...
            try
            {
                if (item.IsDownloaded)
                {
                    await Navigation.PushAsync(new Inspect(item));
                }
                else
                {
                    await App.Client.DownloadFile(item.Filename);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Async nav push to new file inspect page failed: {ex.Message}");
            }

            SelectedObject = null;
        }

        private void LoadLocalFiles()
        {
            var msg = "LOGGING: Loading local files...";
            Debug.WriteLine(msg);

            // Create groups for data recordings from different times
            var todayObjects = new DataObjectGroup()
            {
                Heading = "Today"
            };
            var yesterdayObjects = new DataObjectGroup()
            {
                Heading = "Yesterday"
            };
            var weekObjects = new DataObjectGroup()
            {
                Heading = "This Week"
            };
            var monthObjects = new DataObjectGroup()
            {
                Heading = "This Month"
            };
            var olderObjects = new DataObjectGroup()
            {
                Heading = "Older"
            };

            var files = Directory.EnumerateFiles(App.FolderPath, "*.txt");

            foreach (var filename in files)
            {
                // Get info about file
                FileInfo fi = new FileInfo(filename);

                // Download data ready to be read by data object
                var data = File.ReadAllBytes(filename);
                var header = new byte[3];
                Array.Copy(data, header, 3);

                DataObject dataObject = new DataObject
                {
                    Size = fi.Length,
                    Date = handler.DecodeFilename(fi.Name, file_format: FILE_FORMAT_MMDDHHmm),
                    Filename = fi.Name,
                    Directory = filename,
                    Location = handler.DecodeLocation(header)[0],
                    Tag = handler.DecodeLocation(header)[1],
                    TagColour = ((header[0] & 0x10) == 0x10) ? CLOUD_INDICATOR : Color.Gray,
                    RawData = data,
                    IsDownloaded = (data.Length > 6) ? true : false
                };

                // Assign object into correct group according to its time of creation.
                if (dataObject.Location == "Mobile")
                {
                    dataObject.Analyze();

                    if (dataObject.Date.Month == DateTime.Now.Month &&
                        dataObject.Date.Day == DateTime.Now.Day)
                    {
                        todayObjects.Add(dataObject);
                    }
                    else if (dataObject.Date.Month == DateTime.Now.Month &&
                        dataObject.Date == DateTime.Now.AddDays(-1))
                    {
                        yesterdayObjects.Add(dataObject);
                    }
                    else if (dataObject.Date.Month == DateTime.Now.Month &&
                        dataObject.Date > DateTime.Now.AddDays(-7))
                    {
                        weekObjects.Add(dataObject);
                    }
                    else if (dataObject.Date.Month == DateTime.Now.Month)
                    {
                        monthObjects.Add(dataObject);
                    }
                    else
                    {
                        olderObjects.Add(dataObject);
                    }
                }
            }

            var group = new ObservableCollection<DataObjectGroup>()
            {
                todayObjects,
                yesterdayObjects,
                weekObjects,
                monthObjects,
                olderObjects
            };
            DataObjectGroups = group;

            UpdateGraph(DataObjectGroups);
            ReorderDataObjects();
        }

        private void ReorderDataObjects()
        {           
            try
            {
                // Loop through all groups
                for (int k = 0; k < DataObjectGroups.Count; k++)
                {
                    var objects = DataObjectGroups[k];

                    // In each group, cycle through each object and compare with all other objects.
                    // If comparitive object found to have an earlier date, swap objects.
                    for (int j = 0; j < objects.Count; j++)
                    {
                        for (int i = 0; i < objects.Count - 1; i++)
                        {
                            try
                            {
                                // Get date of current and next object
                                int date1 = int.Parse(objects[i].Filename.Remove(8));
                                int date2 = int.Parse(objects[i + 1].Filename.Remove(8));

                                // If date2 > date1, respective dataobjects swap
                                if (date2 > date1)
                                {
                                    // Create temp data objects
                                    DataObject temp_i = objects[i];
                                    DataObject temp_i1 = objects[i + 1];

                                    // Remove from collection
                                    objects.Remove(temp_i);
                                    objects.Remove(temp_i1);

                                    // Put back in opposite places
                                    objects.Insert(i, temp_i1);
                                    objects.Insert(i + 1, temp_i);
                                }
                            }
                            catch (Exception ex)
                            {
                                Debug.WriteLine("LOGGING: Object reordering failed: " + ex.Message);
                            }
                        }
                    }

                    DataObjectGroups[k] = objects;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("LOGGING: Object reordering failed: " + ex.Message);
            }
        }

        private void UpdateObject(string objName)
        {
            // Scan through all objects, if found update data and analyze.
            for (int i = 0; i < DataObjectGroups.Count; i++)
            {
                var objectGroup = DataObjectGroups[i];

                foreach (var obj in objectGroup)
                {
                    if (obj.Filename == objName)
                    {
                        obj.DownloadLocalData(obj.Directory);
                        //Debug.WriteLine($"Downloaded data length: {obj.Data.Length}");
                        obj.IsDownloaded = true;
                        obj.Analyze();
                    }
                }
            }
        }

        private void UpdateGraph(ObservableCollection<DataObjectGroup> dataObjectGroup)
        {
            try
            {
                LoggedColumnSeries.Clear();
            }
            catch (Exception ex)
            {
                Debug.WriteLine("LOGGING: Unable to update graph. " + ex.Message);
                return;
            }

            double[] normals = new double[5];

            foreach (var group in dataObjectGroup)
            {
                // Get normals from last 7 days to display (reference to today's date then 1 less each time)
                // Get normals from today
                if (group.Heading == "Today")
                {
                    normals[0] = AnalysisAssitant.GetNormalAverageFromGroup(group);
                }
                else if (group.Heading == "Yesterday")
                {
                    normals[1] = AnalysisAssitant.GetNormalAverageFromGroup(group);
                }
                else if (group.Heading == "This Week")
                {
                    normals[2] = AnalysisAssitant.GetNormalAverageFromGroup(group);
                }
                else if (group.Heading == "This Month")
                {
                    normals[3] = AnalysisAssitant.GetNormalAverageFromGroup(group);
                }
                else if (group.Heading == "Older")
                {
                    normals[4] = AnalysisAssitant.GetNormalAverageFromGroup(group);
                }
            }

            try
            {
                LoggedColumnSeries.Add(new ChartDataModel("Older", normals[4]));
                LoggedColumnSeries.Add(new ChartDataModel("This month", normals[3]));
                LoggedColumnSeries.Add(new ChartDataModel("This week", normals[2]));
                LoggedColumnSeries.Add(new ChartDataModel("Yesterday", normals[1]));
                LoggedColumnSeries.Add(new ChartDataModel("Today", normals[0]));
            }
            catch (Exception ex)
            {
                Crashes.TrackError(ex);
                Debug.WriteLine(ex.Message);
            }
        }

        
        #endregion
    }
}
