using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CitFileProcess
{
    public class Encryption
    {
        /// <summary>
        /// 对加密的字节进行解码
        /// </summary>
        /// <param name="bTranslateData"></param>
        /// <returns></returns>
        public static byte Translate(byte bTranslateData)
        {
            bTranslateData = (byte)(bTranslateData ^ 128);

            return bTranslateData;
        }

        /// <summary>
        /// 对加密的字节数组进行解码
        /// </summary>
        /// <param name="bTranslateData"></param>
        /// <returns></returns>
        public static byte[] Translate(byte[] bTranslateData)
        {
            for (int iIndex = 0; iIndex < bTranslateData.Length; iIndex++)
            {
                bTranslateData[iIndex] = Translate(bTranslateData[iIndex]);
            }
            return bTranslateData;
        }

        /// <summary>
        /// 判断是否加密
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool IsEncryption(string str)
        {
            if (str.StartsWith("3."))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

    }
}
