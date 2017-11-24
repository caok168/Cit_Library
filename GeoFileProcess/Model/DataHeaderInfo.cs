using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GeoFileProcess
{
    public class DataHeaderInfo
    {
        public short fileVersion { get; set; }

        public short dirFlag { get; set; }

        public int dataRecordLength { get; set; }

        public float sampleInterval { get; set; }

        public float postUnits { get; set; }

        public string Date { get; set; }

        public string Time { get; set; }

        public string Area { get; set; }

        public string Division { get; set; }

        public string Region { get; set; }
    }
}
