using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CitFileProcess;

namespace Test
{
    public class CitWriteTest
    {

        CitFileHelper cithelper = new CitFileHelper();

        public void Test()
        {
            string citFilePath = @"H:\工作文件汇总\铁科院\程序\车载加速度\数据文件\CitData_160821175616_GJHS.cit";

            citFilePath = @"H:\工作文件汇总\铁科院\程序\离线加速度\cit文件\CitData_160612060534_CHSS_11corrugationRms.cit";

            //citFilePath = @"F:\个人文件\铁路\工程代码\轨检\data\cit\20170605133935_杭深_上.cit";
            citFilePath = @"F:\个人文件\铁路\工程代码\离线加速度\文件头乱码\20170605133935_杭深_上corrugationRms.cit";

            string citFilePathNew = @"H:\工作文件汇总\铁科院\程序\车载加速度\数据文件\CitData_160821175616_GJHS_New.cit";

            citFilePathNew = @"F:\个人文件\铁路\工程代码\temp\111.cit";

            var dataHead = cithelper.GetDataInfoHead(citFilePath);
            var channelList=cithelper.GetDataChannelInfoHead(citFilePath);
            var extrainfo = cithelper.GetExtraInfo(citFilePath);

            //double[] dd11 = cithelper.GetSingleChannelData(citFilePath, 1);
            //double[] dd12 = cithelper.GetSingleChannelData(citFilePath, 2);
            //double[] dd13 = cithelper.GetSingleChannelData(citFilePath, 3);


            cithelper.WriteDataInfoHead(citFilePathNew, dataHead);
            cithelper.WriteDataChannelInfoHead(citFilePathNew, channelList);
            cithelper.WriteDataExtraInfo(citFilePathNew, "");

            

            List<double[]> listData = new List<double[]>();
            for (int i = 0; i < 15; i++)
            {
                double[] dd = new double[10];
                for (int j = 0; j < 10; j++)
                {
                    dd[j] = i;
                }

                listData.Add(dd);
            }

            cithelper.WriteChannelData(citFilePathNew, listData);

            //cithelper.WriteCitFile(citFilePath, citFilePathNew, listData);


            var dataHeadNew = cithelper.GetDataInfoHead(citFilePathNew);
            var channelListNew = cithelper.GetDataChannelInfoHead(citFilePathNew);
            var extrainfoNew = cithelper.GetExtraInfo(citFilePathNew);

            double[] dd1 = cithelper.GetSingleChannelData(citFilePathNew, 1);
            double[] dd2 = cithelper.GetSingleChannelData(citFilePathNew, 2);
            double[] dd3 = cithelper.GetSingleChannelData(citFilePathNew, 3);

            double[] dd9 = cithelper.GetSingleChannelData(citFilePathNew, 9);

        }

    }
}
