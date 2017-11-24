using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Model
{
    public class Request
    {

        /// <summary>
        /// 通道名称（中文）
        /// </summary>
        public string channelname { get; set; }

        /// <summary>
        /// 里程
        /// </summary>
        public double[] miledata { get; set; }

        /// <summary>
        /// 几何不平顺 通道数据
        /// </summary>
        public double[] channeldata { get; set; }

        /// <summary>
        /// 速度
        /// </summary>
        public double[] speeddata { get; set; }

        /// <summary>
        /// 轨距
        /// </summary>
        public double[] gaugedata { get; set; }

        /// <summary>
        /// 峰峰值的阈值，取8.0
        /// </summary>
        public double thresh_gauge { get; set; }

        public double[] miledata2 { get; set; }

        public double[] channeldata2 { get; set; }

        public double[] speeddata2 { get; set; }

        public double[] gaugedata2 { get; set; }
    }
}
