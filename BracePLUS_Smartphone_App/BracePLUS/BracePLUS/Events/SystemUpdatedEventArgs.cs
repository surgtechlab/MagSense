using BracePLUS.Models;
using Plugin.BLE.Abstractions.Contracts;
using System;
using System.Collections.Generic;
using System.Text;

namespace BracePLUS.Events
{
    public class SystemUpdatedEventArgs : EventArgs
    {
        public int Status { get; set; }
        public string Filename { get; set; }
        public string Message { get; set; }
        public IDevice Device { get; set; }
        public string ServiceId { get; set; }
        public string UartTxId { get; set; }
        public string UartRxId { get; set; }
    }
}
