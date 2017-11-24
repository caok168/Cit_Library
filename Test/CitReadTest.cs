using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CitFileProcess;

namespace Test
{
    public class CitReadTest
    {
        CitFileHelper cithelper = new CitFileHelper();

        public void Test()
        {

            string citFile = @"F:\个人文件\铁路\工程代码\轨检\data\轨检cit\上行减里程\GNHS-HANGZHOU-NANJING-14052016-175302-1.cit";
            citFile = @"H:\工作文件汇总\铁科院\程序\离线加速度\cit文件\CitData_160606060527_GJGXcorrugationRms.cit";


            citFile = @"H:\工作文件汇总\铁科院\程序\轨检二期\任务\bny工具文档\问题反馈\new\170820162406bsx.cit";

            var data55 = cithelper.GetSingleChannelData(citFile, 3);

            //citFile = @"H:\工作文件汇总\铁科院\程序\车载加速度\数据文件\CitData_160424063432_CNGX.cit";
            //citFile = @"H:\工作文件汇总\铁科院\程序\离线加速度\cit文件\CitData_160606060527_GJGX.cit";

            var dataHead = cithelper.GetDataInfoHead(citFile);
            var channelList = cithelper.GetDataChannelInfoHead(citFile);

            string sTrackCode = dataHead.sTrackCode;

            if (sTrackCode == "\0\0\0\0")
            {
                sTrackCode = "";
            }


            citFile = @"H:\工作文件汇总\铁科院\程序\车载加速度\数据文件\CitData_160424063432_CNGXcorrugationRms.cit";

            dataHead = cithelper.GetDataInfoHead(citFile);

            long startPos=cithelper.GetSamplePointStartOffset(dataHead.iChannelNumber);
            long endPos=0;

            List<double[]> dataList = cithelper.GetAllChannelDataInRange(citFile, startPos, 1000, ref endPos);
            dataList = cithelper.GetAllChannelDataInRange(citFile);

            var data1 = cithelper.GetSingleChannelData(citFile, 1);
            var data2 = cithelper.GetSingleChannelData(citFile, 2);
            var data3 = cithelper.GetSingleChannelData(citFile, 3);

            //cithelper.GetAllChannelDataInRange(citFile,
        }
    }
}
