using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using Test.Model;

namespace Test
{
    public class CalculationTest
    {
        public void BasicTest()
        {
            double[] dd = new double[10];
            for (int i = 0; i < 10; i++)
            {
                dd[i] = i;
            }

            Request request = new Request();
            request.channeldata = dd;

            string jsonStr = JsonConvert.SerializeObject(request);

            BacisCalculationCommon.ChannelDataCalculation calc = new BacisCalculationCommon.ChannelDataCalculation();
            string maxValue = calc.GetMaxValue(jsonStr);
            string minValue = calc.GetMinValue(jsonStr);
            string avgValue = calc.GetAvgValue(jsonStr);
        }

        public void AdvancedTest()
        {
            double[] dd = new double[5];
            for (int i = 0; i < 5; i++)
            {
                dd[i] = i;
            }

            Request request = new Request();
            request.channelname = "通道中文名称";
            request.miledata = dd;
            request.channeldata = dd;
            request.speeddata = dd;
            request.gaugedata = dd;
            request.thresh_gauge = 8.0;

            Request request2 = new Request();
            request2.channelname = "通道中文名称";
            request2.miledata = dd;
            request2.channeldata = dd;
            request2.speeddata = dd;
            request2.gaugedata = dd;
            request2.miledata2 = dd;
            request2.channeldata2 = dd;
            request2.speeddata2 = dd;
            request2.gaugedata2 = dd;

            string jsonStr = JsonConvert.SerializeObject(request);
            string jsonStr2 = JsonConvert.SerializeObject(request2);

            AdvancedCalculationCommon.WaveFormProcess obj = new AdvancedCalculationCommon.WaveFormProcess();
            string result  = obj.WaveformChangeRecognition(jsonStr2);

            obj.WaveformPeakDeviation(jsonStr);
        }

        public void Result()
        {
            List<Result> dataList = new List<Model.Result>();
            for (int i = 0; i < 2; i++)
            {
                Result result = new Result();
                result.channelname = "通道名称" + i;
                result.startpos = 1;
                result.endpos = 1000;
                result.absvalue = 10;
                dataList.Add(result);
            }

            string resultStr = JsonConvert.SerializeObject(dataList);
        }

        public void AdvancedMethodTest()
        {
            string path1 = "H:\\工作文件汇总\\铁科院\\程序\\原始\\代码\\测试数据\\上行减里程\\GNHS-HANGZHOU-NANJING-14052016-175302-1原本的减里程.cit";
            string path2 = "";

            CitFileProcess.CitFileHelper citHelper = new CitFileProcess.CitFileHelper();
            List<CitFileProcess.DataChannelInfo> listChannel = citHelper.GetDataChannelInfoHead(path1);

            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < listChannel.Count; i++)
            {
                sb.AppendLine(listChannel[i].sNameEn + "  " + listChannel[i].sNameCh);
            }

            string str = sb.ToString();

            double[] d1 = citHelper.GetMilesData(path1,0,1000000);

            double[] d2 = citHelper.GetSingleChannelData(path1, citHelper.GetChannelId("Speed", path1), 0, 1000000);
            double[] d3 = citHelper.GetSingleChannelData(path1, citHelper.GetChannelId("Gage", path1), 0, 1000000);
            double[] d4 = citHelper.GetSingleChannelData(path1, citHelper.GetChannelId("L_Prof_SC", path1), 0, 1000000);

            AdvancedCalculation.WaveFormProcess waveProcess = new AdvancedCalculation.WaveFormProcess();

            var list = waveProcess.WaveformChangeRecognition("左高低_中波", d1, d4, d2, d3, d1, d4, d2, d3);

            //var list = waveProcess.WaveformPeakDeviation("左高低_中波", d1, d4, d2, d3);
            
        }
    }
}
