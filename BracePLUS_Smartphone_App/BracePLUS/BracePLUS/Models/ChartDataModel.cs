using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace BracePLUS.Models
{
    public class ChartDataModel
    {
        public string Name { get; set; }
        public double Value { get; set; }

        public ChartDataModel(string name, double value)
        {
            Name = name;
            Value = value;
        }
    }

}
