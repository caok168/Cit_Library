using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CitFileProcess;
using Newtonsoft.Json;
using System.Runtime.InteropServices;

namespace CitFileProcessCommon
{
    public class CitHelper
    {
        CitFileHelper citHelper = new CitFileProcess.CitFileHelper();

        #region 获取文件信息、通道定义、通道数据、里程标数据

        [DispId(1)]
        public string GetDataInfoHead(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                DataHeadInfo header = citHelper.GetDataInfoHead(FilePath);
                string result = JsonConvert.SerializeObject(header);
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
        public string GetDataChannelInfoHead(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                List<DataChannelInfo> list = citHelper.GetDataChannelInfoHead(FilePath);
                string result = JsonConvert.SerializeObject(list);
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
        public string GetExtraInfo(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                byte[] bytes = citHelper.GetExtraInfo(FilePath);
                string base64 = Convert.ToBase64String(bytes);
                resultInfo.flag = 1;
                resultInfo.msg = "";
                resultInfo.data = base64;
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }
            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(4)]
        public string GetSingleChannelData(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                int channelNum = request.channelnum;
                if (request.startpos != 0 && request.endpos != 0)
                {
                    var data = citHelper.GetSingleChannelData(FilePath, channelNum, request.startpos, request.endpos);
                    string result = JsonConvert.SerializeObject(data);
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = result;
                }
                else if(!String.IsNullOrWhiteSpace(request.channelname))
                {
                    var data = citHelper.GetSingleChannelData(FilePath, request.channelname, request.startmile, request.endmile);
                    string result = JsonConvert.SerializeObject(data);
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = result;
                }
                else
                {
                    var data = citHelper.GetSingleChannelData(FilePath, channelNum);
                    string result = JsonConvert.SerializeObject(data);
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = result;
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(5)]
        public string GetMilesData(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                int channelNum = request.channelnum;
                if (request.startpos != 0 && request.endpos != 0)
                {
                    var data = citHelper.GetMilesData(FilePath, request.startpos, request.endpos);
                    string result = JsonConvert.SerializeObject(data);
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = result;
                }
                else
                {
                    var data = citHelper.GetMilesData(FilePath);
                    string result = JsonConvert.SerializeObject(data);
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = result;
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        #endregion

        #region 获取文件信息的指定字段信息

        [DispId(6)]
        public string GetHeadDataType(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadDataType(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(7)]
        public string GetHeadDataVersion(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadDataVersion(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(8)]
        public string GetHeadTrackCode(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadTrackCode(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(9)]
        public string GetHeadTrackName(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadTrackName(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(10)]
        public string GetHeadDir(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadDir(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(11)]
        public string GetHeadTrain(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadTrain(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(12)]
        public string GetHeadDate(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadDate(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(13)]
        public string GetHeadTime(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadTime(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(14)]
        public string GetHeadRunDir(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadRunDir(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(15)]
        public string GetHeadKmInc(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadKmInc(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        /// <summary>
        /// 获取cit的开始里程
        /// </summary>
        /// <param name="json"></param>
        /// <returns></returns>
        [DispId(16)]
        public string GetHeadKmFrom(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadKmFrom(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        /// <summary>
        /// 获取cit的结束里程
        /// </summary>
        /// <param name="json"></param>
        /// <returns></returns>
        [DispId(17)]
        public string GetHeadKmTo(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadKmTo(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(18)]
        public string GetHeadSmaleRate(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadSmaleRate(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(19)]
        public string GetHeadChannelNumber(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetHeadChannelNumber(FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        #endregion

        #region 获取通道定义的指定字段信息

        [DispId(20)]
        public string GetChannelNum(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetChannelId(request.channelname,FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(21)]
        public string GetChannelNameEn(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetChannelNameEn(request.channelnum,FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(22)]
        public string GetChannelNameCn(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetChannelNameCn(request.channelnum, FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(23)]
        public string GetChannelScale(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetChannelScale(request.channelnum, FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(24)]
        public string GetChannelScaleByEnName(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetChannelScale(request.channelname, FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(25)]
        public string GetChannelOffset(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetChannelOffset(request.channelnum, FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(26)]
        public string GetChannelOffsetByEnName(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetChannelOffset(request.channelname, FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(27)]
        public string GetChannelUnit(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetChannelUnit(request.channelnum, FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        [DispId(28)]
        public string GetChannelUnitByEnName(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                var item = citHelper.GetChannelUnit(request.channelname, FilePath);
                string result = JsonConvert.SerializeObject(item);
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

        #endregion

        #region 写入文件信息、通道定义信息、补充信息、通道数据

        #region 写入方法

        [DispId(29)]
        public string WriteDataInfoHead(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                DataHeadInfo dataheadinfo = JsonConvert.DeserializeObject<DataHeadInfo>(request.dataheadinfo);
                bool item = citHelper.WriteDataInfoHead(request.filepath, dataheadinfo);

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(30)]
        public string WriteDataChannelInfoHead(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                string FilePath = request.filepath;
                List<DataChannelInfo> channellist = JsonConvert.DeserializeObject<List<DataChannelInfo>>(request.channellist);

                bool item = citHelper.WriteDataChannelInfoHead(request.filepath, channellist);

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(31)]
        public string WriteDataExtraInfo(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteDataExtraInfo(request.filepath, request.extrainfo);

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(32)]
        public string WriteChannelData(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);
                List<double[]> channeldata = JsonConvert.DeserializeObject<List<double[]>>(request.channeldata);

                bool item = citHelper.WriteChannelData(request.filepath, channeldata);

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        #endregion

        #region 修改文件信息中指定字段

        [DispId(33)]
        public string WriteHeadDataType(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadDataType(request.filepath, Convert.ToInt32(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(34)]
        public string WriteHeadDataVersion(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadDataVersion(request.filepath, Convert.ToString(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(35)]
        public string WriteHeadTrackCode(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadTrackCode(request.filepath, Convert.ToString(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(36)]
        public string WriteHeadTrackName(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadTrackName(request.filepath, Convert.ToString(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(37)]
        public string WriteHeadDir(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadDir(request.filepath, Convert.ToInt32(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(38)]
        public string WriteHeadTrain(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadTrain(request.filepath, Convert.ToString(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(39)]
        public string WriteHeadDate(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadDate(request.filepath, Convert.ToString(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(40)]
        public string WriteHeadTime(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadTime(request.filepath, Convert.ToString(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(41)]
        public string WriteHeadRunDir(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadRunDir(request.filepath, Convert.ToInt32(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(42)]
        public string WriteHeadKmInc(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadKmInc(request.filepath, Convert.ToInt32(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(43)]
        public string WriteHeadKmFrom(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadKmFrom(request.filepath, Convert.ToSingle(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(44)]
        public string WriteHeadKmTo(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadKmTo(request.filepath, Convert.ToSingle(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(45)]
        public string WriteHeadSmaleRate(string json)
        {
            ResultInfo resultInfo = new ResultInfo();
            try
            {
                Request request = JsonConvert.DeserializeObject<Request>(json);

                bool item = citHelper.WriteHeadSmaleRate(request.filepath, Convert.ToInt32(request.value));

                if (item)
                {
                    resultInfo.flag = 1;
                    resultInfo.msg = "";
                    resultInfo.data = "";
                }
                else
                {
                    resultInfo.flag = 0;
                    resultInfo.msg = "更新失败";
                    resultInfo.data = "";
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        #endregion

        #endregion

        
    }
}
