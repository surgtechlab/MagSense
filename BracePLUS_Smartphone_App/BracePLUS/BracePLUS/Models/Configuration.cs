using System;
using System.Security.Cryptography.X509Certificates;

namespace BracePLUS.Models
{
    public class Configuration
    {
        public int ID { get; set; }

        public bool AutoConnect { get; set; }

        public int Baud { get; set; }
        public int Nodes { get; set; }
    }
}
