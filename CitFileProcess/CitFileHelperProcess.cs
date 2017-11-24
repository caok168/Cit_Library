using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace CitFileProcess
{
    public partial class CitFileHelper
    {
        public long GetSamplePointStartOffset(int channelNumber, int extraInfoSize)
        {
            return DataOffset.DataHeadLength + DataOffset.DataChannelLength * channelNumber + extraInfoSize;
        }

        public long GetFileLength(string citFile)
        {
            FileStream fs = new FileStream(citFile, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
            BinaryReader br = new BinaryReader(fs, Encoding.Default);
            br.BaseStream.Position = 0;

            long length = br.BaseStream.Length;

            br.Close();
            fs.Close();

            return length;
        }


        private int BytesOfOneSamplePoint(int channelNum)
        {
            return channelNum * 2;
        }


        public List<double[]> GetAllChannelDataInRange(string citFile)
        {
            try
            {
                FileStream fs = new FileStream(citFile, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                BinaryReader br = new BinaryReader(fs, Encoding.Default);
                br.BaseStream.Position = 0;

                DataHeadInfo fi = GetDataInfoHead(br.ReadBytes(DataOffset.DataHeadLength));

                List<DataChannelInfo> cdList = GetDataChannelInfoHead(citFile);

                int iChannelNumberSize = BytesOfOneSamplePoint(fi.iChannelNumber);
                byte[] b = new byte[iChannelNumberSize];

                long[] startAndEndPostion = GetPositons(citFile);
                long startFilePos = startAndEndPostion[0];
                long endFilePos = startAndEndPostion[1];
                
                br.BaseStream.Position = startFilePos;

                long iArray = (endFilePos - br.BaseStream.Position) / iChannelNumberSize;
                double[] fReturnArray = new double[iArray];


                List<double[]> allList = new List<double[]>();
                for (int i = 0; i < fi.iChannelNumber; i++)
                {
                    double[] array = new double[iArray];
                    allList.Add(array);
                }

                for (int i = 0; i < iArray; i++)
                {
                    b = br.ReadBytes(iChannelNumberSize);

                    if (Encryption.IsEncryption(fi.sDataVersion))
                    {
                        b = Encryption.Translate(b);
                    }

                    for (int channelId = 1; channelId < fi.iChannelNumber + 1; channelId++)
                    {
                        int value = (BitConverter.ToInt16(b, (channelId - 1) * 2));
                        float fScale = cdList[channelId - 1].fScale;

                        double fGL = (BitConverter.ToInt16(b, (channelId - 1) * 2) / cdList[channelId - 1].fScale + cdList[channelId - 1].fOffset);

                        allList[channelId - 1][i] = fGL;
                    }
                }
                br.Close();
                fs.Close();

                return allList;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }

        /// <summary>
        /// 获取所有通道的数据
        /// </summary>
        /// <param name="citFile">cit文件路径</param>
        /// <param name="startFilePos">开始位置</param>
        /// <param name="endFilePos">结束位置</param>
        /// <returns>所有通道数据</returns>
        public List<double[]> GetAllChannelDataInRange(string citFile, long startFilePos, long endFilePos)
        {
            try
            {
                FileStream fs = new FileStream(citFile, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                BinaryReader br = new BinaryReader(fs, Encoding.Default);
                br.BaseStream.Position = 0;

                DataHeadInfo fi = GetDataInfoHead(br.ReadBytes(DataOffset.DataHeadLength));

                List<DataChannelInfo> cdList = GetDataChannelInfoHead(citFile);

                int iChannelNumberSize = BytesOfOneSamplePoint(fi.iChannelNumber);
                byte[] b = new byte[iChannelNumberSize];

                long[] startAndEndPostion = GetPositons(citFile);
                if (startFilePos < startAndEndPostion[0])
                {
                    startFilePos = startAndEndPostion[0];
                }
                if (endFilePos > startAndEndPostion[1])
                {
                    endFilePos = startAndEndPostion[1];
                }

                br.BaseStream.Position = startFilePos;

                long iArray = (endFilePos - br.BaseStream.Position) / iChannelNumberSize;
                double[] fReturnArray = new double[iArray];


                List<double[]> allList = new List<double[]>();
                for (int i = 0; i < fi.iChannelNumber; i++)
                {
                    double[] array = new double[iArray];
                    allList.Add(array);
                }

                for (int i = 0; i < iArray; i++)
                {
                    b = br.ReadBytes(iChannelNumberSize);

                    if (Encryption.IsEncryption(fi.sDataVersion))
                    {
                        b = Encryption.Translate(b);
                    }

                    for (int channelId = 1; channelId < fi.iChannelNumber + 1; channelId++)
                    {
                        int value = (BitConverter.ToInt16(b, (channelId - 1) * 2));
                        float fScale = cdList[channelId - 1].fScale;

                        double fGL = (BitConverter.ToInt16(b, (channelId - 1) * 2) / cdList[channelId - 1].fScale + cdList[channelId - 1].fOffset);

                        allList[channelId - 1][i] = fGL;
                    }
                }
                br.Close();
                fs.Close();

                return allList;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }


        /// <summary>
        /// 获取所有通道数据
        /// </summary>
        /// <param name="citFile">cit文件路径</param>
        /// <param name="startFilePos">开始位置</param>
        /// <param name="sampleNum">采样点个数</param>
        /// <returns>所有通道数据</returns>
        public List<double[]> GetAllChannelDataInRange(string citFile, long startFilePos, int sampleNum)
        {
            try
            {
                FileStream fs = new FileStream(citFile, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                BinaryReader br = new BinaryReader(fs, Encoding.Default);
                br.BaseStream.Position = 0;

                DataHeadInfo fi = GetDataInfoHead(br.ReadBytes(DataOffset.DataHeadLength));

                List<DataChannelInfo> cdList = GetDataChannelInfoHead(citFile);

                int iChannelNumberSize = BytesOfOneSamplePoint(fi.iChannelNumber);
                byte[] b = new byte[iChannelNumberSize];

                br.BaseStream.Position = startFilePos;
                long endFilePos = startFilePos + sampleNum * iChannelNumberSize;

                br.Close();
                fs.Close();

                var allList = GetAllChannelDataInRange(citFile, startFilePos, endFilePos);

                return allList;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }

        /// <summary>
        /// 获取所有通道数据
        /// </summary>
        /// <param name="citFile">cit文件路径</param>
        /// <param name="startFilePos">开始位置</param>
        /// <param name="sampleNum">采样点个数</param>
        /// <param name="endFilePos">采样点结束的位置</param>
        /// <returns>指定范围的所有通道数据</returns>
        public List<double[]> GetAllChannelDataInRange(string citFile, long startFilePos, int sampleNum, ref long endFilePos)
        {
            try
            {
                FileStream fs = new FileStream(citFile, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                BinaryReader br = new BinaryReader(fs, Encoding.Default);
                br.BaseStream.Position = 0;

                DataHeadInfo fi = GetDataInfoHead(br.ReadBytes(DataOffset.DataHeadLength));

                List<DataChannelInfo> cdList = GetDataChannelInfoHead(citFile);

                int iChannelNumberSize = BytesOfOneSamplePoint(fi.iChannelNumber);
                byte[] b = new byte[iChannelNumberSize];

                br.BaseStream.Position = startFilePos;
                endFilePos = startFilePos + sampleNum * iChannelNumberSize;

                br.Close();
                fs.Close();

                var allList = GetAllChannelDataInRange(citFile, startFilePos, endFilePos);

                return allList;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }




        /// <summary>
        /// 获取cit文件的数据块的开始位置、结束位置
        /// </summary>
        /// <param name="citFile">cit文件路径</param>
        /// <returns>cit文件的数据块的开始位置结束位置double数组</returns>
        public long[] GetPositons(string citFile)
        {
            try
            {
                List<DataChannelInfo> cdList = new List<DataChannelInfo>();

                FileStream fs = new FileStream(citFile, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                BinaryReader br = new BinaryReader(fs, Encoding.Default);
                br.BaseStream.Position = 0;

                DataHeadInfo fi = GetDataInfoHead(br.ReadBytes(DataOffset.DataHeadLength));

                cdList = GetDataChannelInfoHead(citFile);

                //开始位置
                //long startPosition = br.BaseStream.Position = FileDataOffset.GetSamplePointStartOffset(fi.iChannelNumber, BitConverter.ToInt32(br.ReadBytes(DataOffset.ExtraLength), 0));

                long startPosition = br.BaseStream.Position = DataOffset.DataHeadLength + DataOffset.DataChannelLength * fi.iChannelNumber + DataOffset.ExtraLength;
                //结束位置
                long endPosition = br.BaseStream.Length;

                long[] positions = new long[2];
                positions[0] = startPosition;
                positions[1] = endPosition;

                return positions;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }


        public long GetSamplePointStartOffset(int channelNumber)
        {
            return DataOffset.DataHeadLength + DataOffset.DataChannelLength * channelNumber + DataOffset.ExtraLength;
        }


        public long GetCurrentPosition(string citFile, float mile)
        {
            try
            {
                long position = 0;

                FileStream fs = new FileStream(citFile, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
                BinaryReader br = new BinaryReader(fs);

                DataHeadInfo fi = GetDataInfoHead(br.ReadBytes(DataOffset.DataHeadLength));
                br.BaseStream.Position = GetSamplePointStartOffset(fi.iChannelNumber, DataOffset.ExtraLength);

                int iChannelNumberSize = BytesOfOneSamplePoint(fi.iChannelNumber);
                byte[] b = new byte[iChannelNumberSize];
                long iArray = (br.BaseStream.Length - br.BaseStream.Position) / iChannelNumberSize;

                for (int i = 0; i < iArray; i++)
                {
                    position = br.BaseStream.Position;
                    b = br.ReadBytes(iChannelNumberSize);
                    if (Encryption.IsEncryption(fi.sDataVersion))
                    {
                        b = Encryption.Translate(b);
                    }

                    short km = BitConverter.ToInt16(b, 0);
                    short m = BitConverter.ToInt16(b, 2);

                    float currentMile = km * 1000 + m / (float)fi.iSmaleRate;

                    //增里程
                    if (fi.iKmInc == 0)
                    {
                        if (mile <= currentMile)
                        {
                            break;
                        }
                    }
                    //减里程
                    if (fi.iKmInc == 1)
                    {
                        if (mile >= currentMile)
                        {
                            break;
                        }
                    }
                }

                br.Close();
                fs.Close();

                return position;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }



        public bool WriteCitFile(string citFile, DataHeadInfo fi, List<DataChannelInfo> channelList, string extraInfo, List<double[]> arrayDone)
        {
            try
            {
                int iChannelNumberSize = fi.iChannelNumber * 2;
                byte[] dataArray = new byte[iChannelNumberSize];

                List<Byte[]> dataList = new List<Byte[]>();
                short tmpRmsData = 0;
                Byte[] tmpDataBytes = new Byte[2];

                long iArrayLen = arrayDone[0].Length;
                for (int k = 0; k < iArrayLen; k++)
                {
                    if (Encryption.IsEncryption(fi.sDataVersion))
                    {
                        for (int iTmp = 0; iTmp < channelList.Count; iTmp++)
                        {
                            tmpRmsData = (short)((arrayDone[iTmp][k] - channelList[iTmp].fOffset) * channelList[iTmp].fScale);
                            tmpDataBytes = Encryption.Translate(BitConverter.GetBytes(tmpRmsData));
                            dataList.Add(tmpDataBytes);
                        }
                    }
                    else
                    {
                        for (int iTmp = 0; iTmp < channelList.Count; iTmp++)
                        {
                            tmpRmsData = (short)((arrayDone[iTmp][k] - channelList[iTmp].fOffset) * channelList[iTmp].fScale);
                            dataList.Add(BitConverter.GetBytes(tmpRmsData));
                        }
                    }
                }

                bool isOk = WriteCitFile(citFile, fi, channelList, extraInfo, dataList);

                return isOk;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
