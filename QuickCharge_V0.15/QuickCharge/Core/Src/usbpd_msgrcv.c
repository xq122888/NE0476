#include "usbpd_msgrcv.h"
#include "global.h"

/**
  * @brief   获取协议层 Message
  * @param   物理层 Msg 结构体  @ref USBPD_PHY_Msg_TypeDef 	
  * @retval  协议层 Msg 结构体  @ref USBPD_Msg_TypeDef 
  */
void USBPD_GetMessage(USBPD_PHY_Msg_TypeDef *phyMsg, USBPD_Msg_TypeDef *prlMsg)
{
	prlMsg->SOPType = phyMsg->SOPType;
	if (prlMsg->SOPType == USBPD_SOPTYPE_SOP)
	{		
		prlMsg->MsgHeader.d16 = phyMsg->Payload[0] | (phyMsg->Payload[1] << 8);;
		for (uint32_t i = 0; i < prlMsg->MsgHeader.MsgHeaderStruct.DataObjNum; i++)
		{
			prlMsg->DataObjectValue[i] = phyMsg->Payload[i*4+2] | (phyMsg->Payload[i*4+3] << 8) |
                        		       (phyMsg->Payload[i*4+3] << 16) | (phyMsg->Payload[i*4+3] << 24);
		}	
	}		
}

/**
  * @brief   获取 Source Fixed PDO 列表
  * @param   协议层 Msg 结构体  @ref USBPD_Msg_TypeDef 	
  * @retval  SRC Fixed PDO 个数
  */
uint32_t USBPD_GetSRCFixedPDOList(USBPD_Msg_TypeDef *prlMsg)
{
  USBPD_CORE_PDO_Type_TypeDef pdoType[7] = {0};
  uint32_t cnt = 0;
	
	for (uint32_t i = 0; i < prlMsg->MsgHeader.MsgHeaderStruct.DataObjNum; i++)
	{
	  pdoType[i] = (prlMsg->DataObjectValue[i] >> 30) & 0x3;
		if (pdoType[i] == USBPD_CORE_PDO_TYPE_FIXED)
		{
			cnt++;
			gSRCFixedPDOList[i].d32 = prlMsg->DataObjectValue[i];
		}
	}
	return cnt;
}

/**
  * @brief   获取接收到的 Msg 类型
  * @param   协议层 Msg 结构体  @ref USBPD_Msg_TypeDef 	
  * @retval  SRC Fixed PDO 个数
  */
USBPD_RcvMsgType_TypeDef USBPD_GetReceivedMsgType(USBPD_Msg_TypeDef *msg)
{
	USBPD_SOPType_TypeDef SOPType = msg->SOPType; 
	uint8_t doNum   = msg->MsgHeader.MsgHeaderStruct.DataObjNum;
	uint8_t msgType = msg->MsgHeader.MsgHeaderStruct.MsgType;
	
	if (SOPType == USBPD_SOPTYPE_HARD_RESET)
	{
		return USBPD_MSG_HARD_RST;
	}
	else if (SOPType == USBPD_SOPTYPE_SOP)
	{
		if (doNum == 0)
		{
			switch (msgType)
			{
				case USBPD_CONTROLMSG_GOODCRC:
					return USBPD_MSG_GOODCRC;
				case USBPD_CONTROLMSG_SOFT_RESET:
					return USBPD_MSG_SOFT_RST;
				case USBPD_CONTROLMSG_GET_SNK_CAP:
				  return USBPD_MSG_GET_SINK_CAP;
				case USBPD_CONTROLMSG_PS_RDY:
				  return USBPD_MSG_PS_READY;
			  case USBPD_CONTROLMSG_ACCEPT:
				  return USBPD_MSG_ACCEPT;
				default:
					break;
			}
		}
		else 
		{
			switch (msgType)
			{
				case USBPD_DATAMSG_SRC_CAPABILITIES:
					return USBPD_MSG_SRC_CAP;
				default:
					break;
			}
		}
  }
	return USBPD_MSG_NULL;
}
