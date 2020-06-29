using System;
using System.Collections.Generic;
using System.Text;

namespace BracePLUS.Events
{
    public class DownloadProgressEventArgs : EventArgs
    {
        public float Value { get; set; }
    }
}
