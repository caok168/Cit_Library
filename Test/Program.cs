using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using Test.Model;
using System.IO;

namespace Test
{
    class Program
    {
        static void Main(string[] args)
        {
            CitReadTest read = new CitReadTest();
            read.Test();



            CitWriteTest obj = new CitWriteTest();
            obj.Test();




            CitFileProcess.CitFileHelper cithelper = new CitFileProcess.CitFileHelper();
            double[] dd = cithelper.GetSingleChannelData(@"H:\工作文件汇总\铁科院\程序\工具\data\gjgs-guangzhou-beijing-14082016-165410-0.geo_new.cit", "Km", 1, 100);

            double[] dd2 = cithelper.GetSingleChannelData(@"H:\工作文件汇总\铁科院\程序\工具\data\gjgs-guangzhou-beijing-14082016-165410-0.geo_new.cit", "Km", 1, 10);

            CalculationTest calctest = new CalculationTest();
            calctest.AdvancedMethodTest();


            //TestCit();

            #region 计算测试

            //CalculationTest calctest = new CalculationTest();
            ////calctest.BasicTest();
            ////calctest.AdvancedTest();
            //calctest.Result();

            //CalculationTest calctest = new CalculationTest();
            //calctest.AdvancedTest();


            #endregion

            #region 导出txt

            //ExportTxt txt = new ExportTxt();
            //txt.Test();

            #endregion


            //WriteHeaderTest();

            //WriteChannelTest();

            //WriteCitFileTest();

            //WriteHeaderForJava();


            //WriteChannelData();

            //Geo2Cit();

            //GetChannelData();
        }

        static void TestCit()
        {
            CitFileProcess.CitFileHelper helper1 = new CitFileProcess.CitFileHelper();
            string path = "H:\\工作文件汇总\\铁科院\\程序\\第一个程序\\CitData_160424063432_CNGX.cit";
            var start = helper1.GetHeadKmFrom(path);
            var end = helper1.GetHeadKmTo(path);
        }

        static void Geo2Cit()
        {
            string geoFilePath = "F:\\个人文件\\铁路\\需求\\geo文件\\轨检cit\\上行减里程\\GNHS-HANGZHOU-NANJING-14052016-175302-1.geo";
            string citFilePath = "F:\\个人文件\\铁路\\需求\\geo文件\\轨检cit\\上行减里程\\GNHS-HANGZHOU-NANJING-14052016-175302-1.cit";

            List<GeoFileProcess.GEOCITChannelMapping> listGEO2CIT = new List<GeoFileProcess.GEOCITChannelMapping>();

            StreamReader sr = new StreamReader(@"F:\个人文件\铁路\代码\2. 轨检\IntegratedDisplay - 副本-working_20160329广学交接终版代码 - 菜单重新调整\InGraph\bin\x86\Debug\GEOConfig\CIT001.csv", Encoding.Default);
            while (sr.Peek() != -1)
            {
                string[] sSplit = sr.ReadLine().Trim().Split(new char[] { '=' });
                GeoFileProcess.GEOCITChannelMapping fa = new GeoFileProcess.GEOCITChannelMapping();
                fa.sCIT = sSplit[0].Trim();
                fa.sGEO = sSplit[1].Trim();
                fa.sChinese = sSplit[2].Trim();
                listGEO2CIT.Add(fa);
            }
            sr.Close();

            CitFileProcess.DataHeadInfo dhi = new CitFileProcess.DataHeadInfo();
            dhi.iDataType = 1;
            dhi.sDataVersion = "3.0.0";
            dhi.sTrackCode = "";
            dhi.sTrackName = "京沪";
            dhi.sTrain = "CIT001";
            dhi.sDate = "2016-05-14";
            dhi.sTime = "17:53:02";
            dhi.iSmaleRate = 4;
            dhi.iRunDir = 0;
            dhi.iKmInc = 0; //liyang: 0 or 1
            if (2 == dhi.iKmInc) // liyang: 2代表减变增
                dhi.iKmInc = 0; // liyang: 2没有定义，只是这个控件的一个值，既然是增，就把dhi.iKmInc设置为0
            dhi.iDir = 1;

            GeoFileProcess.GeoFileHelper helper = new GeoFileProcess.GeoFileHelper();
            helper.ConvertData(geoFilePath, citFilePath, listGEO2CIT, 1, dhi);
            
        }

        static void WriteChannelData()
        {
            string filePath = "F:\\个人文件\\铁路\\testCit\\CitData_160424063432_CNGX.cit";
            string filePathNew = "F:\\个人文件\\铁路\\testCit\\CitData_160424063432_CNGX_Temp.cit";

            List<double[]> list = new List<double[]>();
            double[] ddd = new double[15];
            double[] ddd1 = new double[15];
            double[] ddd2 = new double[15];
            double[] ddd3 = new double[15];
            double[] ddd4 = new double[15];
            double[] ddd5 = new double[15];
            double[] ddd6 = new double[15];
            double[] ddd7 = new double[15];
            double[] ddd8 = new double[15];
            double[] ddd9 = new double[15];
            double[] ddd10 = new double[15];
            double[] ddd11 = new double[15];
            double[] ddd12 = new double[15];
            double[] ddd13 = new double[15];
            double[] ddd14 = new double[15];
            for (int i = 0; i < ddd.Length; i++)
            {
                ddd[i] = i;
                ddd1[i] = i;
                ddd2[i] = i;
                ddd3[i] = i;
                ddd4[i] = i;
                ddd5[i] = i;
                ddd6[i] = i;
                ddd7[i] = i;
                ddd8[i] = i;
                ddd9[i] = i;
                ddd10[i] = i;
                ddd11[i] = i;
                ddd12[i] = i;
                ddd13[i] = i;
                ddd14[i] = i;
            }
            list.Add(ddd);
            list.Add(ddd1);
            list.Add(ddd2);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);
            list.Add(ddd);

            string strdata = JsonConvert.SerializeObject(list);

            CitFileProcess.CitFileHelper helper1 = new CitFileProcess.CitFileHelper();
            //helper1.WriteCitFile(filePath, filePathNew, list);

            double[] array = helper1.GetSingleChannelData(filePathNew, 2);
        }

        static void GetChannelData()
        {
            string filePath = "F:\\个人文件\\铁路\\testCit\\CitData_160424063432_CNGX.cit";

            filePath = "F:\\个人文件\\铁路\\需求\\geo文件\\轨检cit\\上行减里程\\GNHS-HANGZHOU-NANJING-14052016-175302-1.cit";

            CitFileProcess.CitFileHelper helper1 = new CitFileProcess.CitFileHelper();
            CitFileProcess.DataHeadInfo header = helper1.GetDataInfoHead(filePath);
            List<CitFileProcess.DataChannelInfo> channelInfoList = helper1.GetDataChannelInfoHead(filePath);
            double[] ddd = helper1.GetSingleChannelData(filePath, 2);
        }

        static void WriteHeaderForJava()
        {
            string filePath = "F:\\个人文件\\铁路\\testCit\\CitData_160424063432_CNGX.cit";
            CitFileProcessCommon.CitHelper helper = new CitFileProcessCommon.CitHelper();

            CitFileProcess.CitFileHelper helper1 = new CitFileProcess.CitFileHelper();
            CitFileProcess.DataHeadInfo headInfo = helper1.GetDataInfoHead(filePath);
            List<CitFileProcess.DataChannelInfo> channelList = helper1.GetDataChannelInfoHead(filePath);

            CitFileProcessCommon.Request request = new CitFileProcessCommon.Request();
            request.filepath = filePath;
            request.dataheadinfo = JsonConvert.SerializeObject(headInfo);
            request.channellist = JsonConvert.SerializeObject(channelList);
            string strpath = JsonConvert.SerializeObject(request);

            string result = helper.WriteDataInfoHead(strpath);
            var info = JsonConvert.DeserializeObject(result);
        }


        static void WriteHeaderTest()
        {
            string filePath = "F:\\个人文件\\铁路\\testCit\\CitData_160424063432_CNGX.cit";

            CitFileProcess.CitFileHelper helper = new CitFileProcess.CitFileHelper();

            CitFileProcess.DataHeadInfo headInfo = helper.GetDataInfoHead(filePath);
            headInfo.sDate = DateTime.Now.ToString("yyyy-MM-dd");

            helper.WriteDataInfoHead(filePath, headInfo);

            CitFileProcess.DataHeadInfo headInfo2 = helper.GetDataInfoHead(filePath);
        }

        static void WriteChannelTest()
        {
            string filePath = "F:\\个人文件\\铁路\\testCit\\CitData_160424063432_CNGX.cit";

            CitFileProcess.CitFileHelper helper = new CitFileProcess.CitFileHelper();

            List<CitFileProcess.DataChannelInfo> channelList = helper.GetDataChannelInfoHead(filePath);
            channelList[0].sID = 1;

            helper.WriteDataChannelInfoHead(filePath, channelList);

            List<CitFileProcess.DataChannelInfo> channelList1 = helper.GetDataChannelInfoHead(filePath);

            CitFileProcess.DataHeadInfo headInfo2 = helper.GetDataInfoHead(filePath);
        }

        static void WriteCitFileTest()
        {
            string filePath = "F:\\个人文件\\铁路\\testCit\\CitData_160424063432_CNGX.cit";

            CitFileProcess.CitFileHelper helper = new CitFileProcess.CitFileHelper();

            List<CitFileProcess.DataChannelInfo> channelList = helper.GetDataChannelInfoHead(filePath);
            channelList[0].sID = 1000;

            CitFileProcess.DataHeadInfo headInfo = helper.GetDataInfoHead(filePath);
            headInfo.sDate = "2016-05-24";

            helper.WriteCitFileHeadInfo(filePath, headInfo, channelList);

            List<CitFileProcess.DataChannelInfo> channelList1 = helper.GetDataChannelInfoHead(filePath);

            CitFileProcess.DataHeadInfo headInfo1 = helper.GetDataInfoHead(filePath);
        }

        static void DllForJavaTest()
        {
            //string dddstr = JsonConvert.SerializeObject(ddd);

            string filePath = "F:\\个人文件\\铁路\\当前开发\\" + "CitData_160424063432_CNGX.cit";
            CitFileProcessCommon.CitHelper helper = new CitFileProcessCommon.CitHelper();

            CitFileProcessCommon.Request request = new CitFileProcessCommon.Request();
            request.filepath = filePath;
            string strpath = JsonConvert.SerializeObject(request);

            string straaa = "{\"filepath\":\"F:\\\\个人文件\\\\铁路\\\\当前开发\\\\CitData_160424063432_CNGX.cit\",\"channelnum\":5,\"startpos\":1000,\"endpos\":10000}";

            string result = helper.GetDataChannelInfoHead(straaa);

            var info = JsonConvert.DeserializeObject(result);
        }


        static void Test1()
        {
            string stuInfo = JsonConvert.SerializeObject(new Stu { ID = 1, Name = "ck" });

            var objStu = JsonConvert.DeserializeObject<Stu>(stuInfo);

            List<Stu> list = new List<Stu>();
            list.Add(new Stu { ID = 2, Name = "ck1" });
            list.Add(new Stu { ID = 3, Name = "ck2" });
            string listStr = JsonConvert.SerializeObject(list);

            var objlist = JsonConvert.DeserializeObject<List<Stu>>(listStr);

            var intobj = JsonConvert.SerializeObject(5);
            var strobj = JsonConvert.SerializeObject("123");

            double[] ddd = new double[3];
            ddd[0] = 1;
            ddd[1] = 2;
            ddd[2] = 3;
        }

        static void Method()
        {
            string str = "000000000000";

            long int10 = Convert.ToInt64(str, 16);

            string str2 = Convert.ToString(int10, 2);
            //if (str2.Length < 48)
            //{
            //    str2=str2.
            //}

            var hexString = "030000000000";
            byte[] returnBytes = new byte[hexString.Length / 2];
            for (int j = 0; j < returnBytes.Length; j++)
                returnBytes[j] = Convert.ToByte(hexString.Substring(j * 2, 2), 16);
            var strSensorState = string.Join("", returnBytes.Select(t => Convert.ToString(t, 2).PadLeft(8, '0')));


            var aaa = string.Join("", strSensorState.Reverse().ToArray());
        }
    }
}
