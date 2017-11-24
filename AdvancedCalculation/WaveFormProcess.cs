using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MathWorks.MATLAB.NET.Arrays;
using DataProcessAdvance;
using System.IO;

namespace AdvancedCalculation
{
    public class WaveFormProcess
    {
        //DataProcessAdvanceClass ppmc;
        public WaveFormProcess()
        {
            //ppmc = new DataProcessAdvanceClass();
        }

        /// <summary>
        /// 波形变化识别
        /// </summary>
        /// <param name="channelName">通道名称</param>
        /// <param name="mileData1">第一组里程</param>
        /// <param name="channelData1">第一组几何不平顺</param>
        /// <param name="speedData1">第一组速度</param>
        /// <param name="gaugeData1">第一组轨距</param>
        /// <param name="mileData2">第二组里程</param>
        /// <param name="channelData2">第二组几何不平顺</param>
        /// <param name="speedData2">第二组速度</param>
        /// <param name="gaugeData2">第二组轨距</param>
        public List<Result> WaveformChangeRecognition(string channelName, double[] mileData1, double[] channelData1, double[] speedData1, double[] gaugeData1, double[] mileData2, double[] channelData2, double[] speedData2, double[] gaugeData2)
        {
            List<Result> dataList = new List<Result>();
            
            try
            {
                int oneTimeLength = 600000; //一次处理的点数,150公里
                int len1 = Math.Min(mileData1.Length, channelData1.Length);
                int len2 = Math.Min(mileData2.Length, channelData2.Length);
                int len = Math.Min(len1, len2);

                for (int i = 0; i < len; i += oneTimeLength)
                {
                    int remain = 0;
                    int index = (i / oneTimeLength) * oneTimeLength;
                    remain = len - oneTimeLength * (i / oneTimeLength + 1);
                    int ThisTimeLength = remain > 0 ? oneTimeLength : (remain += oneTimeLength);
                    double[] tmp_tt_1 = new double[ThisTimeLength];
                    double[] tmp_wx_1 = new double[ThisTimeLength];
                    double[] tmp_wvelo_1 = new double[ThisTimeLength];
                    double[] tmp_wx_gauge_1 = new double[ThisTimeLength];

                    double[] tmp_tt_2 = new double[ThisTimeLength];
                    double[] tmp_wx_2 = new double[ThisTimeLength];
                    double[] tmp_wvelo_2 = new double[ThisTimeLength];
                    double[] tmp_wx_gauge_2 = new double[ThisTimeLength];

                    for (int j = 0; j < ThisTimeLength; j++)
                    {
                        tmp_tt_1[j] = mileData1[index + j];
                        tmp_wx_1[j] = channelData1[index + j];
                        tmp_wvelo_1[j] = speedData1[index + j];
                        tmp_wx_gauge_1[j] = gaugeData1[index + j];

                        tmp_tt_2[j] = mileData2[index + j];
                        tmp_wx_2[j] = channelData2[index + j];
                        tmp_wvelo_2[j] = speedData2[index + j];
                        tmp_wx_gauge_2[j] = gaugeData2[index + j];

                    }

                    MWNumericArray d_tt_1 = new MWNumericArray(tmp_tt_1);
                    MWNumericArray d_wx_1 = new MWNumericArray(tmp_wx_1);
                    MWNumericArray d_wvelo_1 = new MWNumericArray(tmp_wvelo_1);
                    MWNumericArray d_wv_gauge_1 = new MWNumericArray(tmp_wx_gauge_1);

                    MWNumericArray d_tt_2 = new MWNumericArray(tmp_tt_2);
                    MWNumericArray d_wx_2 = new MWNumericArray(tmp_wx_2);
                    MWNumericArray d_wvelo_2 = new MWNumericArray(tmp_wvelo_2);
                    MWNumericArray d_wv_gauge_2 = new MWNumericArray(tmp_wx_gauge_2);

                    DataProcessAdvanceClass ppmc = new DataProcessAdvanceClass();
                    //调用算法
                    MWNumericArray resultArrayAB = (MWNumericArray)ppmc.sub_abrupt_change_detection(d_tt_1, d_wx_1, d_wvelo_1, d_wv_gauge_1, d_tt_2, d_wx_2, d_wvelo_2, d_wv_gauge_2);
                    double[,] tmpArray = (double[,])resultArrayAB.ToArray();

                    for (int j = 0; j < tmpArray.GetLength(0); j++)
                    {
                        tmpArray[j, 0] = tmp_tt_2[(long)(tmpArray[j, 0])];
                        tmpArray[j, 1] = tmp_tt_2[(long)(tmpArray[j, 1])];
                        //dataStr = String.Format("{0},{1},{2},{3}", channelName, tmpArray[j, 0], tmpArray[j, 1], tmpArray[j, 2]);

                        Result result = new Result();
                        result.channelname = channelName;
                        result.startpos = tmpArray[j, 0];
                        result.endpos = tmpArray[j, 1];
                        result.absvalue = tmpArray[j, 2];
                        dataList.Add(result);
                    }
                }
            }
            catch (System.Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return dataList;
        }

        /// <summary>
        /// 峰峰值偏差
        /// </summary>
        /// <param name="channelName">通道名称</param>
        /// <param name="milesData">里程</param>
        /// <param name="channelData">具体通道的数据</param>
        /// <param name="speedData">速度</param>
        /// <param name="gaugeData">轨距</param>
        /// <param name="thresh_gauge">峰峰值的阈值，取8.0</param>
        public List<Result> WaveformPeakDeviation(string channelName, double[] milesData, double[] channelData, double[] speedData, double[] gaugeData, double thresh_gauge=8.0)
        {
            List<Result> dataList = new List<Result>();
            
            try
            {
                int oneTimeLength = 1000000; //一次处理的点数

                for (int i = 0; i < milesData.Length; i += oneTimeLength)
                {
                    int remain = 0;
                    int index = (i / oneTimeLength) * oneTimeLength;
                    remain = milesData.Length - oneTimeLength * (i / oneTimeLength + 1);
                    int ThisTimeLength = remain > 0 ? oneTimeLength : (remain += oneTimeLength);
                    double[] tmp_tt = new double[ThisTimeLength];
                    double[] tmp_wx = new double[ThisTimeLength];
                    double[] tmp_wvelo = new double[ThisTimeLength];
                    double[] tmp_wx_gauge = new double[ThisTimeLength];

                    for (int j = 0; j < ThisTimeLength; j++)
                    {
                        tmp_tt[j] = milesData[index + j];
                        tmp_wx[j] = channelData[index + j];
                        tmp_wvelo[j] = speedData[index + j];
                        tmp_wx_gauge[j] = gaugeData[index + j];
                    }

                    MWNumericArray d_tt = new MWNumericArray(tmp_tt);
                    MWNumericArray d_wx = new MWNumericArray(tmp_wx);
                    MWNumericArray d_wvelo = new MWNumericArray(tmp_wvelo);
                    MWNumericArray d_wx_gauge = new MWNumericArray(tmp_wx_gauge);
                    MWNumericArray d_thresh_gauge = new MWNumericArray(thresh_gauge);

                    DataProcessAdvanceClass ppmc = new DataProcessAdvanceClass();
                    //调用算法
                    MWNumericArray resultArrayAB = (MWNumericArray)ppmc.sub_preprocessing_deviation_by_p2p(d_tt, d_wx, d_wvelo, d_wx_gauge, d_thresh_gauge);
                    double[,] tmpArray = (double[,])resultArrayAB.ToArray();

                    for (int j = 0; j < tmpArray.GetLength(0); j++)
                    {
                        tmpArray[j, 0] = tmp_tt[(long)(tmpArray[j, 0])];
                        tmpArray[j, 1] = tmp_tt[(long)(tmpArray[j, 1])];
                        //dataStr = String.Format("{0},{1},{2},{3}", channelName, tmpArray[j, 0], tmpArray[j, 1], tmpArray[j, 2]);

                        Result result = new Result();
                        result.channelname = channelName;
                        result.startpos = tmpArray[j, 0];
                        result.endpos = tmpArray[j, 1];
                        result.absvalue = tmpArray[j, 2];

                        dataList.Add(result);
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }


            return dataList;
        }


        /// <summary>
        /// 保存到txt文件
        /// </summary>
        /// <param name="filePathTxt"></param>
        /// <param name="list"></param>
        public void SaveToTxt(string filePathTxt,List<Result> list)
        {
            try
            {
                StreamWriter sw = new StreamWriter(filePathTxt);


                for (int i = 0; i < list.Count; i++)
                {
                    string strText = "通道名称：" + list[i].channelname + "，" + "起点位置：" + list[i].startpos + "，终点位置：" + list[i].endpos + "，绝对值差：" + list[i].absvalue;
                    sw.WriteLine(strText);
                }
                sw.Close();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
