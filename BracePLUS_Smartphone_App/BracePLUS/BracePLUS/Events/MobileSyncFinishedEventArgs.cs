using System;
using System.Collections.Generic;
using System.Text;

namespace BracePLUS.Events
{
    public class MobileSyncFinishedEventArgs : EventArgs
    {
        public List<string> Files;
    }
}
