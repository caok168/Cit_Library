using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using Newtonsoft.Json;
using System.IO;

namespace AdvancedCalculationCommon
{
    public class WaveFormProcess
    {
        AdvancedCalculation.WaveFormProcess waveProcess = new AdvancedCalculation.WaveFormProcess();

        [DispId(1)]
        public string WaveformChangeRecognition(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request obj = JsonConvert.DeserializeObject<Request>(json);
                double[] miledata = obj.miledata;
                double[] channeldata = obj.channeldata;
                double[] speeddata = obj.speeddata;
                double[] gaugedata = obj.gaugedata;

                double[] miledata2 = obj.miledata2;
                double[] channeldata2 = obj.channeldata2;
                double[] speeddata2 = obj.speeddata2;
                double[] gaugedata2 = obj.gaugedata2;

                string result = JsonConvert.SerializeObject(waveProcess.WaveformChangeRecognition(obj.channelname,
                    miledata, channeldata, speeddata, gaugedata,
                    miledata2, channeldata2, speeddata2, gaugedata2));

                //List<AdvancedCalculation.Result> list = new List<AdvancedCalculation.Result>();
                //list.Add(new AdvancedCalculation.Result { channelname = "通道1", startpos = 0, endpos = 1000, absvalue = 10 });
                //list.Add(new AdvancedCalculation.Result { channelname = "通道2", startpos = 0, endpos = 1000, absvalue = 10 });
                //list.Add(new AdvancedCalculation.Result { channelname = "通道3", startpos = 0, endpos = 1000, absvalue = 10 });
                //list.Add(new AdvancedCalculation.Result { channelname = "通道4", startpos = 0, endpos = 1000, absvalue = 10 });

                //string result = JsonConvert.SerializeObject(list);

                resultInfo.flag = 1;
                resultInfo.msg = "";
                resultInfo.data = result;
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(2)]
        public string WaveformPeakDeviation(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request obj = JsonConvert.DeserializeObject<Request>(json);
                double[] miledata = obj.miledata;
                double[] channeldata = obj.channeldata;
                double[] speeddata = obj.speeddata;
                double[] gaugedata = obj.gaugedata;


                string result = JsonConvert.SerializeObject(waveProcess.WaveformPeakDeviation(obj.channelname,
                    miledata, channeldata, speeddata, gaugedata, obj.thresh_gauge));

                //List<AdvancedCalculation.Result> list = new List<AdvancedCalculation.Result>();
                //list.Add(new AdvancedCalculation.Result { channelname = "通道1", startpos = 0, endpos = 1000, absvalue = 10 });
                //list.Add(new AdvancedCalculation.Result { channelname = "通道2", startpos = 0, endpos = 1000, absvalue = 10 });
                //list.Add(new AdvancedCalculation.Result { channelname = "通道3", startpos = 0, endpos = 1000, absvalue = 10 });
                //list.Add(new AdvancedCalculation.Result { channelname = "通道4", startpos = 0, endpos = 1000, absvalue = 10 });

                //string result = JsonConvert.SerializeObject(list);

                resultInfo.flag = 1;
                resultInfo.msg = "";
                resultInfo.data = result;
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(3)]
        public string SaveToTxt(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                FileResultItem obj = JsonConvert.DeserializeObject<FileResultItem>(json);

                List<AdvancedCalculation.Result> list = JsonConvert.DeserializeObject<List<AdvancedCalculation.Result>>(obj.list);

                waveProcess.SaveToTxt(obj.filepath, list);

                resultInfo.flag = 1;
                resultInfo.msg = "";
                resultInfo.data = "";
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

    }
}
