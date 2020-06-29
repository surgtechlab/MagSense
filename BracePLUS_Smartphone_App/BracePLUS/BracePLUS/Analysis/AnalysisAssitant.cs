using BracePLUS.Models;
using Microsoft.AppCenter.Crashes;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Text;

namespace BracePLUS.Analysis
{
    class AnalysisAssitant
    {
        static public List<double[,]> Calibrate(byte[] bytes)
        {
            // List of 3x16 double arrays with XYZ data for each of 16 nodes within a data packet
            var calibData = new List<double[,]>();

            try
            {
                // Calculate number of packets within data object
                int packets = (bytes.Length - 6) / 128;

                // For each packet of 128 bytes within raw data,
                // calibrate each packet and send result to calibration data list.
                for (int packet_index = 0; packet_index < packets; packet_index++)
                {
                    // Prepare shorter data buffer
                    byte[] buf = new byte[128];

                    // Go through each byte within current packet and allocate value from main buffer 
                    for (int byte_index = 0; byte_index < 128; byte_index++)
                        buf[byte_index] = bytes[3 + byte_index + packet_index * 128];

                    // Perform calibration on one 128byte buffer
                    var calibLine = NeuralNetCalib.CalibratePacket(buf);

                    // Add 3x16 double array to list.
                    calibData.Add(calibLine);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Calibration failed: " + ex.Message);
                return null;
            }

            return calibData;
        }

        static public int GetAverage(int[] values)
        {
            int sum = 0;
            int n = values.Length;

            foreach (var val in values)
                if (val != 0) sum += val;

            return sum / n;
        }

        static public double GetAverage(double[] values)
        {
            double sum = 0;
            int n = 0;

            foreach (var val in values)
            {
                if (val != 0)
                {
                    sum += val;
                    n++;
                }
            }

            return sum / n;
        }

        static public double GetAverage(List<double> values)
        {
            double sum = 0;
            int n = 0;

            foreach (var val in values)
            {
                if (val != 0)
                {
                    sum += val;
                    n++;
                }
            }

            return sum / n;
        }

        static public double GetPacketDuration(byte[] rawData)
        {
            if (rawData.Length > 8)
            {
                // Extract first and last time packets from file.
                // File format: [ 0x0A | 0x0B | 0x0C | T0 | T1 | T2 | T3 | X1MSB.....| Zn | 0x0A | 0x0B | 0x0C ]
                byte t3 = rawData[6];
                byte t2 = rawData[5];
                byte t1 = rawData[4];
                byte t0 = rawData[3];
                var t_start = t0 + (t1 << 8) + (t2 << 16) + (t3 << 24);
                //Debug.WriteLine("T start: " + t_start);

                int length = rawData.Length;

                // Packet length is 128, then accomodate for file footer.
                // Last time packet is bytes 0:3 of last packet
                t3 = rawData[length - 128];
                t2 = rawData[length - 129];
                t1 = rawData[length - 130];
                t0 = rawData[length - 131];

                var t_finish = t0 + (t1 << 8) + (t2 << 16) + (t3 << 24);
                // Debug.WriteLine("T finish: " + t_start);

                return (t_finish - t_start) / 1000.0;
            }
            else
            {
                Debug.WriteLine("Unable to extract duration: data not downloaded.");
                return 0.0;
            }
        }

        static public double GetMaximum(List<double> values)
        {
            double max = 0.0;

            foreach (double val in values)
                if (val > max) max = val;

            return max;
        }

        static public List<double> ExtractNodeNormals(byte[] data, int maxIndex = 100, int startIndex = 8)
        {
            List<double> normals = new List<double>();

            long Zmsb, Zlsb;
            double z, z_max;

            z_max = 0.0;

            // Extract normals
            for (int packet = 0; packet < maxIndex; packet++)
            {
                for (int _byte = startIndex; _byte < 100; _byte += 6)
                {
                    // Find current Z value
                    Zmsb = data[packet * 128 + _byte] << 8;
                    Zlsb = data[packet * 128 + _byte + 1];
                    z = (Zmsb + Zlsb) * 0.02636;

                    bool skip = (Zmsb == 0xFF00) && (Zlsb == 0xFF);

                    // If greater than previous Z, previous Z becomes new Z
                    if ((z > z_max) && !skip) z_max = z;
                }

                // Add maximum Z to chart
                normals.Add(z_max);
                z_max = 0.0;
            }

            return normals;
        }

        static public List<double> ExtractPacketNormalDistaceAverages(List<double[,]> calibData)
        {
            var normals = new List<double>();

            try
            {
                for (int j = 0; j < calibData.Count; j++)
                {
                    double sum = 0;
                    int n = 0;

                    for (int i = 0; i < 16; i++)
                    {
                        var val = calibData[j][i, 2];
                        if (val != 0)
                        {
                            sum += val;
                            n++;
                        }
                    }

                    normals.Add(sum / n);
                }
            }
            catch (Exception ex)
            {
                Crashes.TrackError(ex);
                Debug.WriteLine("Calibrated maximum normals extraction failed: " + ex.Message);
            }

            return normals;
        }

        static public double[] ExtractNodeNormals(byte[] data, int index)
        {
            double[] values = new double[16];

            // First normal data byte is 11th
            for (int i = 0; i < 16; i++)
            {
                var Zmsb = data[11 + (index * 128) + (i * 6)] << 8;
                var Zlsb = data[12 + (index * 128) + (i * 6)];
                values[i] = (Zmsb + Zlsb) * 0.02636;
                //Debug.WriteLine(values[i]);
            }

            return values;
        }

        /// <summary>
        /// Extract a the highest normal values from a specific packet within the data array.
        /// </summary>
        /// <param name="data">The data containing the sensor values (List of data arrays, each array is 3x16; XYZ values * 16 sensors)</param>
        /// <param name="index">The index of the desired sensor packet within the list of data</param>
        /// <returns></returns>
        static public double[] ExtractAbsolutePacketNormals(List<double[,]> data, int index)
        {
            double[] values = new double[16];

            try
            {
                for (int i = 0; i < 16; i++)
                    values[i] = Math.Abs(data[index][i, 2]);
            }
            catch (Exception ex)
            {
                Crashes.TrackError(ex);
                Debug.WriteLine(ex);
            }

            return values;
        }

        /// <summary>
        /// Extract the highest normal values from each packet within the array of calibrated values
        /// </summary>
        /// <param name="calibData">The calibrated data containing sensor measurements.</param>
        /// <returns>List of maximums</returns>
        static public List<double> ExtractAbsoluteMaximumNormals(List<double[,]> calibData)
        {
            var normals = new List<double>();

            try
            {
                for (int j = 0; j < calibData.Count; j++)
                {
                    double z, z_max = 0;

                    for (int i = 0; i < 16; i++)
                    {
                        z = Math.Abs(calibData[j][i, 2]);
                        if (z > z_max) z_max = z;
                    }

                    normals.Add(z_max);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Calibrated maximum normals extraction failed: " + ex.Message);
            }

            return normals;
        }

        /// <summary>
        /// Extract the average normal values from each packet within the array of calibrated values
        /// </summary>
        /// <param name="calibData">The calibrated data containing sensor measurements.</param>
        /// <returns>List of averages.</returns>
        static public List<double> ExtractAbsoluteAverageNormals(List<double[,]> calibData)
        {
            // PrintCalibData(calibData);

            var normals = new List<double>();

            for (int packet = 0; packet < calibData.Count; packet++)
            {
                double packet_sum = 0;

                for (int sensor = 0; sensor < 16; sensor++)
                    packet_sum += Math.Abs(calibData[packet][sensor, 2]);
                
                var average = packet_sum / 16;

                normals.Add(average);
            }

            return normals;
        }

        /// <summary>
        /// Extract the average Z axis value from a group of data objects.
        /// </summary>
        /// <param name="group"></param>
        /// <returns>Returns the average value over all the data objects</returns>
        static public double GetNormalAverageFromGroup(DataObjectGroup group)
        {
            List<double> normals = new List<double>();

            // scan through objects
            foreach (var obj in group)
            {
                normals.Add(obj.AveragePressure);
            }

            return GetAverage(normals);
        }

        static public double GetNormalAverageFromDate(DateTime date, List<DataObject> dataObjects)
        {
            List<double> normals = new List<double>();

            // scan through objects
            foreach (var obj in dataObjects)
            {
                // if date matches the desired one, add to temp list of objects
                if ((obj.Date.Day == date.Day) && (obj.Date.Month == date.Month) && obj.IsDownloaded)
                {
                    normals.Add(obj.AveragePressure);
                }
            }

            return GetAverage(normals);
        }

        public List<DateTime> ExtractTimes(DateTime start, byte[] data, int packets)
        {
            List<DateTime> times = new List<DateTime>
            {
                start
            };

            DateTime t_old = start;

            for (int i = 1; i < packets - 1; i++)
            {
                // Get time between adjacent packets
                byte t3 = data[i * 128 + 6];
                byte t2 = data[i * 128 + 5];
                byte t1 = data[i * 128 + 4];
                byte t0 = data[i * 128 + 3];
                int millis = t0 + (t1 << 8) + (t2 << 16) + (t3 << 24);

                // Create new datetime with added difference in milliseconds
                DateTime t_new = t_old.AddMilliseconds(millis);
                times.Add(t_new);

                // old time reference for nex
                t_old = t_new;
            }

            return times;
        }

        static public void PrintCalibData(List<double[,]> calibData)
        {
            Debug.WriteLine("Debugging calib data:");
            for (int i = 0; i < calibData.Count; i++)
            {
                Debug.WriteLine($"Packet {i}:");

                for (int j = 0; j < 16; j++)
                    Debug.WriteLine($"X:{calibData[i][j, 0]}  Y:{calibData[i][j, 1]}  Z:{calibData[i][j, 2]}");
            }
        }
    }
}
