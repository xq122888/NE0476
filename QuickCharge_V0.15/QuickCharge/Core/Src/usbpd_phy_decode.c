#include "main.h"

static uint32_t capCnt;        //捕获次数
static uint32_t gapCnt;        //电平个数
static uint32_t gap[750];      //电平长度（计数值/时间）
static uint8_t  longCnt;       //长电平个数
static uint32_t recgBitNum;
static uint32_t premblBitNum;
static USBPD_SOPType_TypeDef SOPType;
static uint8_t  msgByte[34];

static USBPD_GapType_TypeDef USBPD_PHY_GapClassify(uint32_t gapTime);
static USBPD_StatusTypeDef USBPD_PHY_BitRecognize(USBPD_GapType_TypeDef *gapType, uint32_t gapSize, uint8_t *bitType);
static USBPD_StatusTypeDef USBPD_PHY_PreambleDetect(uint8_t* pBuffer, uint32_t size);
static USBPD_StatusTypeDef USBPD_PHY_SOPDetect(uint8_t* pBuffer);
static USBPD_StatusTypeDef USBPD_PHY_EOPDetect(uint8_t* pBuffer);
static USBPD_StatusTypeDef USBPD_PHY_DecodeMsgByte(uint8_t *input, uint32_t size, uint8_t *output);
static void USBPD_PHY_Reset(void);


/**
  * @brief  Input Capture callback in non-blocking mode
  * @param  htim TIM IC handle
  * @retval None
  */
void LL_TIM_IC_CaptureCallback()
{
	LL_GPIO_TogglePin(LED0_GPIO_Port, LED0_Pin);
	gap[capCnt] = TIM4->CCR1;//获取当前的捕获值.	
	
  //计算捕获脉宽	
  if(capCnt >= 1)//第二个边沿后开始计算间隔电平时间
	{
		if(gap[capCnt] < gap[capCnt-1])//计数溢出
		{
			gap[capCnt-1] = 0xffff - gap[capCnt-1] + gap[capCnt];
		}
		else //计数未溢出
		{
		  gap[capCnt-1] = gap[capCnt] - gap[capCnt-1];
		}

		if(gap[capCnt-1] > 260)
		{
			//正常情况，第一个长电平位于preamble起始，第二个位于EOP结束
		  longCnt++;
			if(longCnt > 1)//检测到第二个长电平，即认为包结束，停止捕获
			{
				CLEAR_BIT(TIM4->DIER, TIM_DIER_CC1IE);
				TIM4->DIER &= ~TIM_IT_CC1;
				gNewMsgFlag = true;
				gapCnt = capCnt;
			}
		}
	}
	capCnt++;
}

/**
  * @brief  开启解码功能 
  * @retval 无
  */
void USBPD_EnableDecoder(void)
{
	LL_TIM_ClearFlag_CC1(TIM3);
	LL_TIM_EnableIT_CC1(TIM3);
}

/**
  * @brief  关闭解码功能 
  * @retval 无
  */
void USBPD_DisableDecoder(void)
{
	LL_TIM_DisableIT_CC1(TIM4);
	LL_TIM_ClearFlag_CC1(TIM4);
}

/**
  * @brief  电平状态分类
  * @param  gapTime   电平长度 
  * @retval 电平类型  @ref USBPD_GapType_TypeDef
  */
static USBPD_GapType_TypeDef USBPD_PHY_GapClassify(uint32_t gapTime)
{
	USBPD_GapType_TypeDef gapType;

	if (gapTime < USBPD_DECODE_TIME1)
	{
		gapType = USBPD_GAPTYPE_SHARK;//shark
	}
	else if (gapTime >= USBPD_DECODE_TIME1 && gapTime < USBPD_DECODE_TIME2)
	{
		gapType = USBPD_GAPTYPE_NULL;//null
	}
	else if (gapTime >= USBPD_DECODE_TIME2 && gapTime < USBPD_DECODE_TIME3)
	{
		gapType = USBPD_GAPTYPE_HALF;//half
	}
	else if (gapTime >= USBPD_DECODE_TIME3 && gapTime < USBPD_DECODE_TIME4)
	{
		gapType = USBPD_GAPTYPE_ZERO;//zero
	}
	else
	{
		gapType = USBPD_GAPTYPE_LONG;//long
	}
	return gapType;
}

/**
  * @brief  比特识别
  * @param  gapType  电平类型 @ref USBPD_GapType_TypeDef
  * @param  gapSize  电平个数 
  * @param  bitType  比特类型 0/1
  * @retval 状态     @ref USBPD_StatusTypeDef 
  */
static USBPD_StatusTypeDef USBPD_PHY_BitRecognize(USBPD_GapType_TypeDef *gapType, uint32_t gapSize, uint8_t *bitType)
{
	uint8_t process = 0;
	
	for(uint32_t i=0; i<gapSize; i++)
	{
		if (process == 0)
		{
			// 上一个 bit 已解完
			if (gapType[i] == 2) //half
			{
				// half1
				process = 1;
			}
			else if (gapType[i] == 3) //zero
			{
				// 0
				bitType[recgBitNum++] = 0;
			}
			else
			{
        process = 0;
			}
		}
		else
		{
			// 当前已检测到一个 half1
			if (gapType[i] == 2) //half
			{
				// half1
				bitType[recgBitNum++] = 1;
				process = 0;
			}
			else
			{
				process = 0;
			}
		}
	}
	
	if (recgBitNum < 149)//其他异常情况待补充
	{
		return USBPD_ERROR;
	}
	else
	{
		return USBPD_OK;
	}
}

/**
  * @brief  Preamble 检测
  * @param  pBuffer  比特数据
  * @param  size     比特个数 
  * @retval 状态     @ref USBPD_StatusTypeDef 
  */
static USBPD_StatusTypeDef USBPD_PHY_PreambleDetect(uint8_t *pBuffer, uint32_t size)
{
  uint32_t startBit = 0;
	
	//若第一个bit为1，则认为前面丢失一个bit0	
	if(pBuffer[0] == 1)
	{
		startBit = 1;
		premblBitNum = 2;
	}

	//从第一个bit0开始检测preamble（01010...01），直到检测到非01，认为preamble结束
	for (uint32_t i=startBit; i<size; i++)
	{
		if ((pBuffer[i] == 0) && (pBuffer[i+1] == 1))
		{
			i++;
			premblBitNum += 2;
		}	
    else
		{
			break;	
		}
	}
	
	if ((premblBitNum > 32 ) || (premblBitNum < 66))
	{
		return USBPD_OK;
	}
	else 
	{
		return USBPD_ERROR;
	}
}

/**
  * @brief  SOP 检测
  * @param  pBuffer  比特数据 20bit
  * @retval 状态     @ref USBPD_StatusTypeDef 
  */
static USBPD_StatusTypeDef USBPD_PHY_SOPDetect(uint8_t *pBuffer)
{	
	uint8_t kcode[4];
	
	kcode[0] = USBPD_PHY_Cov5BCodeTo5BValue(pBuffer);
	kcode[1] = USBPD_PHY_Cov5BCodeTo5BValue(pBuffer+5);
	kcode[2] = USBPD_PHY_Cov5BCodeTo5BValue(pBuffer+10);
	kcode[3] = USBPD_PHY_Cov5BCodeTo5BValue(pBuffer+15);
//	printf("kcode: 0x%x,0x%x,0x%x,0x%x\r\n",kcode[0],kcode[1],kcode[2],kcode[3]);
	
	if((kcode[0] == KCODE_SYNC1) && (kcode[1] == KCODE_SYNC1) &&
		 (kcode[2] == KCODE_SYNC1) && (kcode[3] == KCODE_SYNC2))
	{
		SOPType = USBPD_SOPTYPE_SOP;
		return USBPD_OK;
	}
	else if((kcode[0] == KCODE_RST1) && (kcode[1] == KCODE_RST1) &&
		      (kcode[2] == KCODE_RST1) && (kcode[3] == KCODE_RST2))
	{
		SOPType = USBPD_SOPTYPE_HARD_RESET;
		return USBPD_OK;
	}
	else
	{
		return USBPD_ERROR;
	}
}

/**
  * @brief  EOP 检测
  * @param  pBuffer  比特数据
  * @retval 状态     @ref USBPD_StatusTypeDef 
  */
static USBPD_StatusTypeDef USBPD_PHY_EOPDetect(uint8_t *pBuffer)
{	
	uint8_t kcode;
	
	kcode = USBPD_PHY_Cov5BCodeTo5BValue(pBuffer);
//	printf("kcode: 0x%x\r\n",kcode);
	
	if(kcode == KCODE_EOP)
	{
		return USBPD_OK;
	}
	else
	{
		return USBPD_ERROR;
	}
}

/**
  * @brief  数据解码
  * @param  input  待解码的比特数据
  * @param  size   待解码的比特数据长度
  * @param  output 解码结果 (Byte)
  * @retval 状态     @ref USBPD_StatusTypeDef
  */
static USBPD_StatusTypeDef USBPD_PHY_DecodeMsgByte(uint8_t *input, uint32_t size, uint8_t *output)
{
	uint8_t byteSize;
	
	byteSize = size / 5 / 2;

  if ((byteSize > 0) && (byteSize < 31))
	{		
		for(uint32_t i = 0; i < byteSize; i++)
		{
			output[i] = (USBPD_PHY_5B4BDecode(USBPD_PHY_Cov5BCodeTo5BValue(input+i*2*5))) |
									(USBPD_PHY_5B4BDecode(USBPD_PHY_Cov5BCodeTo5BValue(input+(i*2+1)*5)) << 4);
		}
		return USBPD_OK;
	}
	else
	{
		return USBPD_ERROR;
	}
}

/**
  * @brief   Message 解析
  * @param   msg  消息结构体  @ref USBPD_Msg_TypeDef
  * @retval  状态 @ref USBPD_StatusTypeDef 
  */
USBPD_StatusTypeDef USBPD_PHY_DecodeMessage(USBPD_PHY_Msg_TypeDef *msg)
{
	uint8_t *addr; 	
  uint32_t msgDataBitSize;

//	printf("//********************START*******************//\r\n");
//	printf("Received Message\r\n");
	USBPD_PHY_Reset();
  
	
	//电平状态识别
	for(uint32_t i=0; i<gapCnt; i++)
	{
		//gap: cnt -> time
	  gap[i] = gap[i] * 1000 / 72;//ns
		//gap: time - > type   
		gap[i] = USBPD_PHY_GapClassify(gap[i]);//shark->0, null->1, half1->2, zero->3, long->4
	}
	
	//bit识别
	if (USBPD_OK == USBPD_PHY_BitRecognize(gap, gapCnt, gBit))
  {
		msg->BitNum = recgBitNum;
//		printf("  gBitNum:%d\r\n",msg->BitSize);
	}
	else
	{
	  return USBPD_ERROR;
	}
	
	//preamble检测
	if (USBPD_OK == USBPD_PHY_PreambleDetect(gBit, recgBitNum))
	{
		msg->PremblBitNum = premblBitNum;
//		printf("  PremblBitNum: %d\r\n",msg->PremblBitSize);
	}
	else
	{
		return USBPD_ERROR;
	}
	
	//SOP检测
	addr = gBit + msg->PremblBitNum;
	if (USBPD_OK == USBPD_PHY_SOPDetect(addr))
	{
		msg->SOPType = SOPType;
//		printf("  SOPType: %d\r\n",msg->SOPType);
	}
	else
	{
		return USBPD_ERROR;
	}
	
	//若检测到Hard Reset,
	if (msg->SOPType == USBPD_SOPTYPE_HARD_RESET)	
	{
		USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GOODCRC);
	}	
	//若检测到SOP，则读取Payload
	else if (msg->SOPType == USBPD_SOPTYPE_SOP)	
	{		
		USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GOODCRC);
		msgDataBitSize = msg->BitNum - 64 - 20 - 5;
		msg->PayloadSize = msgDataBitSize / 10 - 4;
		addr += 20;		
		if (USBPD_OK == USBPD_PHY_DecodeMsgByte(addr, msgDataBitSize, msgByte))
		{			
			memcpy(msg->Payload, msgByte, msg->PayloadSize);
//			for (uint32_t i = 0; i < payloadSize; i++)
//			{
//				printf("  Payload[%d]: 0x%x\r\n",i,msg->Payload[i]);
//			}
			msg->CRCValue = msgByte[msg->PayloadSize] | (msgByte[msg->PayloadSize + 1] << 8) | 
			                (msgByte[msg->PayloadSize + 2] << 16) | (msgByte[msg->PayloadSize + 3] << 24);
//			printf("  CRCValue: 0x%x\r\n",msg->CRCValue);
		}
		else
		{
			return USBPD_ERROR;
		}
	}
  else
	{
		return USBPD_ERROR;
	}
	
	//检测EOP
	addr += msg->PayloadSize * 10 + 40;
	if (USBPD_OK == USBPD_PHY_EOPDetect(addr))
	{
	  msg->EOPFlag = 1;
//		printf("EOP Detect OK!\r\n");
	}
	else
	{
		return USBPD_ERROR;
	}

	//CRC校验		
	if (USBPD_OK == USBPD_PHY_CRC32Check(msg->Payload, msg->PayloadSize, msg->CRCValue))//校验通过
	{
//		printf("CRC Check OK!\r\n");
//		printf("Received Message OK!\r\n");
//		printf("//*********************END********************//\r\n");
		return USBPD_OK;
	}
	else //校验错误
	{  
//		printf("Received Message Error!\r\n");
//    printf("//*********************END********************//\r\n");	
		return USBPD_ERROR;
	}	
}

static void USBPD_PHY_Reset(void)
{		
	capCnt   = 0;   
  longCnt  = 0;
	recgBitNum = 0;
  premblBitNum = 0;
}
