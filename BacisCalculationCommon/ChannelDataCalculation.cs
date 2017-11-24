using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.InteropServices;
using Newtonsoft.Json;

namespace BacisCalculationCommon
{
    public class ChannelDataCalculation
    {
        BacisCalculation.ChannelDataCalculation calc = new BacisCalculation.ChannelDataCalculation();

        [DispId(1)]
        public string GetMaxValue(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request data = JsonConvert.DeserializeObject<Request>(json);

                string result = JsonConvert.SerializeObject(calc.GetMaxValue(data.channeldata));

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
        public string GetMinValue(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request data = JsonConvert.DeserializeObject<Request>(json);

                string result = JsonConvert.SerializeObject(calc.GetMinValue(data.channeldata));

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
        public string GetAvgValue(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request data = JsonConvert.DeserializeObject<Request>(json);

                string result = JsonConvert.SerializeObject(calc.GetAvgValue(data.channeldata));

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

    }
}
