#include "main.h"
	
/***************************************************************************//**
 * @brief  Message 编码
 * @param  msg  数据包
 * @retval 状态 @ref USBPD_StatusTypeDef 
 ******************************************************************************/
void USBPD_PHY_EncodeMessage(USBPD_PHY_Msg_TypeDef *msg, uint8_t *pCode)
{
	uint8_t  crc5b[8];
	uint8_t  data5b[60];
	
	//Preamble bit 0~63
	for (uint32_t i=0; i<32; i++)
	{
		pCode[i*2]   = 0;
		pCode[i*2+1] = 1;
	}
	gBitNum = 64;
	
	//SOP bit 64~83
	if (msg->SOPType == USBPD_SOPTYPE_HARD_RESET)
	{
		for (uint32_t i=0; i<3; i++)
		{
			USBPD_PHY_Cov5BValueTo5BCode(KCODE_RST1, pCode+64+i*5);
		}
		USBPD_PHY_Cov5BValueTo5BCode(KCODE_RST2, pCode+79);
	  gBitNum += 20;
	  goto Tail;
	}
	else if (msg->SOPType == USBPD_SOPTYPE_SOP)
	{
		for (uint32_t i=0; i<3; i++)
		{
			USBPD_PHY_Cov5BValueTo5BCode(KCODE_SYNC1, pCode+64+i*5);
		}
		USBPD_PHY_Cov5BValueTo5BCode(KCODE_SYNC2, pCode+79);
		gBitNum += 20;
	}

	//Payload (MsgHeader + DataObj)
	for (uint32_t i = 0; i < msg->PayloadSize; i++)
	{
	  data5b[2*i] = USBPD_PHY_4B5BEncode(msg->Payload[i] & 0xF);
		data5b[2*i+1] = USBPD_PHY_4B5BEncode((msg->Payload[i] >> 4) & 0xF);		
	}
	for (uint32_t i = 0; i < (msg->PayloadSize * 2); i++)
	{
		USBPD_PHY_Cov5BValueTo5BCode(data5b[i], pCode+84+i*5);
	}
	gBitNum += msg->PayloadSize * 10;
	
	//CRC32
	for (uint32_t i = 0; i < 8; i++)
	{
	  crc5b[i] = USBPD_PHY_4B5BEncode((msg->CRCValue >> (4 * i)) & 0xF);
		USBPD_PHY_Cov5BValueTo5BCode(crc5b[i], gBit+84+msg->PayloadSize*10+i*5);
	}
	gBitNum += 40;
	
	//EOP
	USBPD_PHY_Cov5BValueTo5BCode(KCODE_EOP, pCode+gBitNum);
  gBitNum += 5;//149
	
	//尾部处理
	Tail:
	pCode[gBitNum] = 0;
	pCode[gBitNum+1] = 0;
	gBitNum += 2;
}

/**
  * @brief bit数据发送
  * @param pBuffer 比特数据
  * @param size    比特个数 
  */
void USBPD_PHY_SendBit(uint8_t *pBuffer, uint32_t size)
{
	/* bit数据传输 */
	for(uint32_t i = 0; i < size; i++)
	{
		if(pBuffer[i])
		{
			LL_GPIO_TogglePin(CC1_ENCODE_OUT_GPIO_Port, CC1_ENCODE_OUT_Pin);
			for (uint32_t j=0; j<14; j++);
			LL_GPIO_TogglePin(CC1_ENCODE_OUT_GPIO_Port, CC1_ENCODE_OUT_Pin);
			for (uint32_t j=0; j<12; j++);
		}
		else
		{
			//bit0
			LL_GPIO_TogglePin(CC1_ENCODE_OUT_GPIO_Port, CC1_ENCODE_OUT_Pin);
			for (uint32_t j=0; j<30; j++);
		}
	}
	for (uint32_t j=0; j<40; j++);
	LL_GPIO_SetOutputPin(CC1_ENCODE_OUT_GPIO_Port, CC1_ENCODE_OUT_Pin);
}

/**
  * @brief   设置 Message
  * @param   msg  消息结构体  @ref USBPD_Msg_TypeDef
  * @retval  状态  @ref USBPD_StatusTypeDef 
  */
void USBPD_PHY_SetMessage(USBPD_Msg_TypeDef *prlMsg, USBPD_PHY_Msg_TypeDef *phyMsg)
{
  uint8_t doNum = prlMsg->MsgHeader.MsgHeaderStruct.DataObjNum;
	
	switch (prlMsg->SOPType)
	{
		case USBPD_SOPTYPE_SOP:
			phyMsg->BitNum        = 151 + doNum * 40;
		  phyMsg->PremblBitNum  = 64;
      phyMsg->SOPType       = USBPD_SOPTYPE_SOP;			  
		  phyMsg->PayloadSize   = doNum * 4 + 2;
		  phyMsg->Payload[0]    = prlMsg->MsgHeader.d16 & 0xFF;
		  phyMsg->Payload[1]    = (prlMsg->MsgHeader.d16 >> 8) & 0xFF;
		  for (uint32_t i = 0; i < doNum; i++)
		  {  				
		    phyMsg->Payload[2 + i * 4]     = prlMsg->DataObjectValue[i] & 0xFF;
				phyMsg->Payload[2 + i * 4 + 1] = (prlMsg->DataObjectValue[i] >> 8 ) & 0xFF;
				phyMsg->Payload[2 + i * 4 + 2] = (prlMsg->DataObjectValue[i] >> 16 ) & 0xFF;
				phyMsg->Payload[2 + i * 4 + 3] = (prlMsg->DataObjectValue[i] >> 24 ) & 0xFF;
			}
		  phyMsg->CRCValue      = USBPD_PHY_CRC32Generate(phyMsg->Payload, phyMsg->PayloadSize);
		  phyMsg->EOPFlag       = 1;
			break;
	  case USBPD_SOPTYPE_HARD_RESET:
			phyMsg->BitNum        = 86;
		  phyMsg->PremblBitNum  = 64;
      phyMsg->SOPType       = USBPD_SOPTYPE_HARD_RESET;	
		  break;
		default:
			break;
	}
}

