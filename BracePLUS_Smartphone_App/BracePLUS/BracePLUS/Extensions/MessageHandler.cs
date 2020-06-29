using static BracePLUS.Extensions.Constants;
using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Diagnostics;
using System.Globalization;
using Microsoft.AppCenter.Crashes;
using BracePLUS.Models;
using Plugin.Toast;

namespace BracePLUS.Extensions
{
    public class MessageHandler
    {
        private static readonly Random random = new Random();

        public string Translate(string str, int status = 0)
        {
            string msg = "";

            switch (status)
            {
                case SYS_INIT:
                    if (str == "^") msg = "Brace+ Ready.";
                    else if (str == ".") msg = "System Initialisation Failed.";
                    else if (str == "i") msg = "Initalising system.";
                    break;

                case SYS_STREAM_START:
                    if (str == "s") msg = "Stream incoming...";
                    else if (str == ".") msg = "Stream failed.";
                    break;

                case SYS_STREAM_FINISH:
                    if (str == ".") msg = "Stream failed.";
                    else if (str == "^") msg = "Stream complete.";
                    break;

                case LOGGING_START:
                    if (str == "d") msg = "Logging started.";
                    else if (str == ".") msg = "Logging failed.";
                    else if (str == "^") msg = "Logging complete.";
                    break;

                case DOWNLOAD_FINISH:
                    if (str == "^") msg = "File download complete.";
                    else if (str == ".") msg = "File download failed.";
                    break;

                default:
                    switch (str)
                    {
                        case "X":
                            msg = "Connection with Brace+ Established.";
                            break;

                        case "i":
                            msg = "Initalising system...";
                            break;

                        case "I":
                            msg = "System Initalisation complete.";
                            break;

                        case "t":
                            msg = "Testing SD data logging...";
                            break;

                        case "e":
                            msg = "Error. File open failed.";
                            break;

                        case "T":
                            msg = "SD data log tests complete.";
                            break;

                        case "F":
                            msg = "Uploading files from SD Card...";
                            break;

                        case "C":
                            msg = "SD Card status checks complete.";
                            break;

                        case "l":
                            msg = "Logging data to SD Card...";
                            break;

                        case "L":
                            msg = "RawData logging finished.";
                            break;

                        case "g":
                            msg = "Starting file download...";
                            break;

                        case "G":
                            msg = "File download finished.";
                            break;

                        case "sdE":
                            msg = "SD card error.";
                            break;

                        case "sdOK":
                            msg = "Logging. File Open OK.";
                            break;

                        default:
                            msg = string.Format("Unknown: " + str);
                            break;
                    }
                    break;
            }
           
            return msg;
        }

        public string[] DecodeLocation(byte[] header)
        {
            string location = "";
            string tag = "";

            /* 
             * Header definitions:
             * 
             * HEADER_LOCAL =   { 0x01, 0x0B, 0x0C };
             * HEADER_SIM =     { 0x02, 0x0B, 0x0C };
             * HEADER_MOBILE =  { 0x04, 0x0B, 0x0C };
             */

            // mask first byte of header
            byte _header = (byte)(header[0] & 0x0F);

            switch (_header)
            {
                case 0x01:
                    location = "Local";
                    break;

                case 0x02:
                    location = "Simulation";
                    break;

                case 0x04:
                    location = "Mobile";
                    break;
            }

            // Check for 4th bit of header for cloud
            if ((header[0] & 0x10) == 0x10)
                tag = "Stored in Cloud";
            
            return new string[] { location, tag } ;
        }

        public DateTime DecodeFilename(string file, int file_format = FILE_FORMAT_MMDDHHmm)
        {
            DateTime filetime = DateTime.Now;

            try
            {
                switch (file_format)
                {
                    case FILE_FORMAT_UTC:
                        // Format is 64 bit timestamp
                        // Must convert hex filename into int.
                        string hextime = file.Remove(8);

                        // Now convert to long int
                        ulong time_l = UInt64.Parse(hextime, NumberStyles.HexNumber);
                        time_l <<= 32;

                        // Parse using datetime library
                        filetime = DateTime.FromFileTimeUtc((long)time_l);
                        break;

                    case FILE_FORMAT_MMDDHHmm:

                        // Format: MMDDHHmm.dat
                        // Example filename: "09181007.dat"
                        // Represents 10:07am 18th September
                        // charArray would be: ['1','0','0'...'9']

                        // trim file (remove '.dat')
                        file.Remove(8);

                        string month_t = file;
                        string day_t = file;
                        string hour_t = file;
                        string min_t = file;

                        // remove all chars after second
                        int month = int.Parse(month_t.Remove(2));

                        // remove first 2 then all chars after 6th
                        int day = int.Parse(day_t.Remove(0, 2).Remove(2));

                        // remove first 4 chars then all chars after 4th
                        int hour = int.Parse(hour_t.Remove(0, 4).Remove(2));
                        
                        // remove first 6 chards then all chars after 8th
                        int minute = int.Parse(min_t.Remove(0, 6).Remove(2));

                        // Put data into a string of the correct format
                        string mon_fmt, day_fmt, hr_fmt, min_fmt, tt;

                        if (month < 10) mon_fmt = "0{0:d}";
                        else mon_fmt = "{0:d}";
                        if (day < 10) day_fmt = "0{1:d}";
                        else day_fmt = "{1:d}";
                        if (hour < 10) hr_fmt = "0{2:d}";
                        else hr_fmt = "{2:d}";
                        if (minute < 10) min_fmt = "0{3:d}";
                        else min_fmt = "{3:d}";

                        if (hour < 12) tt = "AM";
                        else tt = "PM";

                        string format = DateTime.Now.Year.ToString() + "-" + mon_fmt + "-" + day_fmt + " " + hr_fmt + ":" + min_fmt + " " + tt;
                        string datetime = string.Format(format, month, day, hour, minute);

                        // Parse the formatted string into a DateTime object and return
                        CultureInfo provider = CultureInfo.InvariantCulture;
                        filetime = DateTime.ParseExact(datetime, "yyyy-MM-dd HH:mm tt", provider);
                        break;

                    default:
                        // If undetermined format, simply put as current datetime
                        filetime = DateTime.Now;
                        break;
                }

                //Debug.WriteLine("Successfully decoded filetime: " + filetime.ToString());
            }
            catch (FormatException ex)
            {
                Crashes.TrackError(ex);
                Debug.WriteLine("Decoding filename failed. Format incorrect: " + ex.Message);
            }
            catch (Exception ex)
            {
                Crashes.TrackError(ex);
                Debug.WriteLine("Decoding filename failed with exception: " + ex.Message);
            }

            // Return decoded filetime
            return filetime;
        }

        public string GetFileName(DateTime dateTime, string extension = ".txt", int file_format = FILE_FORMAT_MMDDHHmm)
        {
            string filename = "";
            try
            {
                switch (file_format)
                {
                    case FILE_FORMAT_MMDDHHmm:

                        var month = dateTime.Month;
                        var day = dateTime.Day;
                        var hour = dateTime.Hour;
                        var minute = dateTime.Minute;

                        string mon_fmt, day_fmt, hr_fmt, min_fmt;

                        if (month < 10) mon_fmt = "0{0:d}";
                        else mon_fmt = "{0:d}";
                        if (day < 10) day_fmt = "0{1:d}";
                        else day_fmt = "{1:d}";
                        if (hour < 10) hr_fmt = "0{2:d}";
                        else hr_fmt = "{2:d}";
                        if (minute < 10) min_fmt = "0{3:d}";
                        else min_fmt = "{3:d}";

                        string format = mon_fmt + day_fmt + hr_fmt + min_fmt + extension;
                        filename = string.Format(format, month, day, hour, minute);
                        break;

                    case FILE_FORMAT_UTC:

                        long curtime = dateTime.ToBinary();
                        string hex_curtime = curtime.ToString("X4");
                        filename = hex_curtime.Remove(8) + extension;

                        break;

                    default:
                        break;
                }
            }
            catch (Exception ex)
            {
                Crashes.TrackError(ex);
                Debug.WriteLine("File name generation failed with exception: " + ex.Message);
            }

            return filename;
        }

        public string FormattedFileSize(long len)
        {
            string filesize;
            if (len < 1000)
            {
                filesize = string.Format("{0} Bytes", len);
            }
            else if (len < 1000000)
            {
                filesize = string.Format("{0:0.00} KB", len / 1000.0);
            }
            else
            {
                filesize = string.Format("{0:0.00} MB", len / 1000000.0);
            }

            return filesize;
        }

        public string GetPreviewDataString(byte[] rawRata)
        {
            if (rawRata.Length > 6)
            {
                if (rawRata.Length < 100)
                {
                    return BitConverter.ToString(rawRata);
                }
                else
                {
                    // Create 100 char string of data and append "..." 
                    return BitConverter.ToString(rawRata).Substring(0, 100).Insert(100, "...");
                }
            }
            else
            {
                Debug.WriteLine("Unable to get data string: data not downloaded.");
                return "RawData string null";
            }
        }

        public string FormattedPercentageDifference(double value, double global)
        {
            try
            {
                double diff = (100 * value / global) - 100;
                
                if (diff < 0)
                    return string.Format("{0:0.00}%", diff);

                else
                    return string.Format("+{0:0.00}%", diff);
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
                return "format % err";
            }
        }

        public void PrintInvalidFileChars()
        {
            Debug.WriteLine("All invalid filename chars:");
            var invalid_name_chars = Path.GetInvalidFileNameChars();
            foreach (var invalid_char in invalid_name_chars)
            {
                if (Char.IsWhiteSpace(invalid_char))
                {
                    Debug.WriteLine(",\t{0:X4}", (int)invalid_char);
                }
                else
                {
                    Debug.WriteLine("{0:c},\t{1:X4}", invalid_char, (int)invalid_char);
                }
            }

            Debug.WriteLine("All invalid path chars:");
            var invalid_path_chars = Path.GetInvalidPathChars();
            foreach (var invalid_char in invalid_path_chars)
            {
                if (Char.IsWhiteSpace(invalid_char))
                {
                    Debug.WriteLine(",\t{0:X4}", (int)invalid_char);
                }
                else
                {
                    Debug.WriteLine("{0:c},\t{1:X4}", invalid_char, (int)invalid_char);
                }
            }
        }

        public string[] RetrieveShareFileDetails(DataObject dataObj, bool tare)
        {
            string[] details = new string[2];

            if (tare)
            {
                try
                {
                    details[1] = Path.Combine(App.FolderPath, dataObj.DirectoryCSV);
                    details[0] = dataObj.FilenameCSV;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                    CrossToastPopUp.Current.ShowToastMessage("Unable to share CSV file");

                    // If CSV unavailable, default to raw data
                    details[1] = Path.Combine(App.FolderPath, dataObj.Directory);
                    details[0] = dataObj.Filename;
                }
            }
            else
            {
                details[1] = Path.Combine(App.FolderPath, dataObj.Directory);
                details[0] = dataObj.Filename;
            }

            return details;
        }

        public static string RandomString(int length)
        {
            // Taken from :
            // https://stackoverflow.com/a/1344242/12383548

            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        public string GetSafeFilename(string filename)
        {
            return string.Join("_", filename.Split(Path.GetInvalidFileNameChars()));
        }
    }
}
