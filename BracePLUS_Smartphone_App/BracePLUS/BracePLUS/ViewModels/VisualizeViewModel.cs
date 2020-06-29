using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using BracePLUS.Extensions;
using BracePLUS.Models;
using BracePLUS.Views;
using Syncfusion.SfChart.XForms;
using Xamarin.Forms;

namespace BracePLUS.ViewModels
{
    public class VisualizeViewModel : BaseViewModel
    {
        // View model properties
        public List<string> NodeList { get; set; }
        SfChart DataChart;

        // View model commands
        public Command ClearDataCommand { get; set; }

        public ObservableCollection<ChartDataModel> LineData1 { get; set; }
        public ObservableCollection<ChartDataModel> LineData2 { get; set; }
        public ObservableCollection<ChartDataModel> LineData3 { get; set; }

        public VisualizeViewModel()
        {
            LineData1 = new ObservableCollection<ChartDataModel>();
            LineData2 = new ObservableCollection<ChartDataModel>();
            LineData3 = new ObservableCollection<ChartDataModel>();

            DataChart = new SfChart();

            ChartZoomPanBehavior behavior = new ChartZoomPanBehavior
            {
                ZoomMode = ZoomMode.X,
                MaximumZoomLevel = 10
            };

            DataChart.ChartBehaviors.Add(behavior);

            ClearDataCommand = new Command(() => ExecuteClearDataCommand());           

            NodeList = new List<string>();
            for (int i = 0; i < 16; i++)
                NodeList.Add((i + 1).ToString());
        }

        public async Task Save()
        {
            // Create file instance
            var filename = Path.Combine(App.FolderPath, $"{Path.GetRandomFileName()}.dat");
            FileStream file = new FileStream(filename, FileMode.Append, FileAccess.Write);

            bool writeFile = true;
            // Check if app has data.
            if (App.InputData.Count == 0)
            {
                writeFile = await Application.Current.MainPage.DisplayAlert("Empty File", "No data received, stored file will be empty. Do you wish to continue?", "Yes", "No");
            }

            // If app has data/user has requested to continue with writing, fill file with all data available + header.
            if (writeFile)
            {
                // File header
                byte[] b = new byte[3];
                b[0] = 0x0A; b[1] = 0x0B; b[2] = 0x0C;
                file.Write(b, 0, b.Length);

                // Write file data
                foreach (var bytes in App.InputData)
                {
                    file.Write(bytes, 0, bytes.Length);
                };

                // File footer and close.
                file.Write(b, 0, b.Length);
                file.Close();
            }         
        }



        void AddRandomData(int range)
        {
            byte[] values = new byte[range];

            Random rand = new Random();

            // Add random values for rest of data
            rand.NextBytes(values);

            // Simulate time bytes
            values[0] = 0;
            values[1] = 0;
            values[2] = 0;
            values[3] = 0;

            for (int i = 4; i < range; i+=6)
            {
                try
                {
                    var x = (values[i] * 256 + values[i+1]) * 0.00906;
                    var y = (values[i + 2] * 256 + values[i + 3]) * 0.00906;
                    var z = (values[i + 4] * 256 + values[i + 5]) * 0.00906;

                    LineData1.Add(new ChartDataModel(i.ToString(), x));
                    LineData2.Add(new ChartDataModel(i.ToString(), y));
                    LineData3.Add(new ChartDataModel(i.ToString(), z));
                }
                catch (Exception ex)
                {
                    Debug.WriteLine("Random data generation ended with exception: " + ex.Message);
                }               
            }

            App.AddData(values);
        }
    }
}
