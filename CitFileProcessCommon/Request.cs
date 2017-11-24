using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CitFileProcess;

namespace CitFileProcessCommon
{
    public class Request
    {
        public string filepath { get; set; }

        public int channelnum { get; set; }

        public long startpos { get; set; }

        public long endpos { get; set; }

        public string channelname { get; set; }


        public string dataheadinfo { get; set; }

        public string channellist { get; set; }

        public string value { get; set; }

        public string extrainfo { get; set; }

        public string channeldata { get; set; }

        public double startmile { get; set; }

        public double endmile { get; set; }
    }
}
