using System;
using System.Collections.Generic;
using System.Text;

namespace BracePLUS.Events
{
    public class PressureUpdatedEventArgs : EventArgs
    {
        public double[] Values { get; set; }
    }
}
