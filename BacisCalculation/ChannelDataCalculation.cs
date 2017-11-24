using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BacisCalculation
{
    public class ChannelDataCalculation
    {
        /// <summary>
        /// 计算一段通道数据的绝对值的最大值
        /// </summary>
        /// <param name="data"></param>
        /// <returns>通道数据的绝对值的最大值</returns>
        public double GetMaxValue(double[] data)
        {
            try
            {
                double result = 0.0;

                for (int i = 0; i < data.Length; i++)
                {
                    if (Math.Abs(data[i]) > result)
                    {
                        result = Math.Abs(data[i]);
                    }
                }
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// 计算一段通道数据的最小值
        /// </summary>
        /// <param name="data"></param>
        /// <returns>通道数据的的最小值（不是绝对值的最小值，绝对值的最小值估计都是0）</returns>
        public double GetMinValue(double[] data)
        {
            try
            {
                double result = data.Min();
                
                return result;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        /// <summary>
        /// 计算一段通道数据的平均值
        /// </summary>
        /// <param name="data"></param>
        /// <returns>通道数据的平均值(采样点的值加起来除以采样点个数)</returns>
        public double GetAvgValue(double[] data)
        {
            try
            {
                double result = 0.0;
                result = data.Average();

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
