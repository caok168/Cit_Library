using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Model
{
    public class Result
    {
        /// <summary>
        /// 通道名称
        /// </summary>
        public string channelname { get; set; }
        /// <summary>
        /// 起点位置
        /// </summary>
        public double startpos { get; set; }
        /// <summary>
        /// 结束位置
        /// </summary>
        public double endpos { get; set; }
        /// <summary>
        /// 绝对值差
        /// </summary>
        public double absvalue { get; set; }
    }
}
