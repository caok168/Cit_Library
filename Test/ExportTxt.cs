using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using Test.Model;
using Newtonsoft.Json;

namespace Test
{
    public class ExportTxt
    {

        public void Test()
        {
            string filePathTxt = @"F:\txt\test1.txt";

            List<AdvancedCalculation.Result> list = new List<AdvancedCalculation.Result>();
            list.Add(new AdvancedCalculation.Result { channelname = "通道1", startpos = 0, endpos = 100, absvalue = 666 });
            list.Add(new AdvancedCalculation.Result { channelname = "通道2", startpos = 0, endpos = 100, absvalue = 666 });
            list.Add(new AdvancedCalculation.Result { channelname = "通道3", startpos = 0, endpos = 100, absvalue = 666 });
            list.Add(new AdvancedCalculation.Result { channelname = "通道4", startpos = 0, endpos = 100, absvalue = 666 });


            FileResultItem item = new FileResultItem { filepath = filePathTxt, list = JsonConvert.SerializeObject(list) };

            string strJson = JsonConvert.SerializeObject(item);

            //strJson = "{\"filepath\":\"F:\\\\txt\\\\test1.txt\",\"list\":[{\"channelname\":\"通道1\",\"startpos\":0.0,\"endpos\":100.0,\"absvalue\":666.0},{\"channelname\":\"通道2\",\"startpos\":0.0,\"endpos\":100.0,\"absvalue\":666.0},{\"channelname\":\"通道3\",\"startpos\":0.0,\"endpos\":100.0,\"absvalue\":666.0},{\"channelname\":\"通道4\",\"startpos\":0.0,\"endpos\":100.0,\"absvalue\":666.0}]}";

            AdvancedCalculationCommon.WaveFormProcess process = new AdvancedCalculationCommon.WaveFormProcess();
            string result = process.SaveToTxt(strJson);

            CreateTxt(filePathTxt, list);
        }

        private void CreateTxt(string filePathTxt, List<AdvancedCalculation.Result> list)
        {
            StreamWriter sw = new StreamWriter(filePathTxt);
            for (int i = 0; i < list.Count; i++)
            {
                string strText = "通道名称：" + list[i].channelname + "，" + "起点位置：" + list[i].startpos + "，终点位置：" + list[i].endpos + "，绝对值差：" + list[i].absvalue;
                sw.WriteLine(strText);
            }
            sw.Close();
        }
    }
}
