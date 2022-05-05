#include "usbpd_msgtrans.h"
#include "usbpd_phy_encode.h"
#include "usbpd_prl.h"
#include "global.h"

/**
  * @brief   设置 HardReset Message
  * @param   msg  消息结构体  @ref USBPD_Msg_TypeDef
  * @retval  状态  @ref USBPD_StatusTypeDef 
  */
void USBPD_SetMessage_HardReset(USBPD_Msg_TypeDef *msg)
{
	msg->SOPType = USBPD_SOPTYPE_HARD_RESET;
}

/**
  * @brief   设置 Control Message
  * @param   msg  消息结构体  @ref USBPD_Msg_TypeDef
  * @retval  状态  @ref USBPD_StatusTypeDef 
  */
void USBPD_SetMessage_Control(USBPD_ControlMsg_TypeDef CtrlMsg, uint8_t MsgID, USBPD_Msg_TypeDef *msg)
{
	msg->SOPType                              = USBPD_SOPTYPE_SOP;
	msg->MsgHeader.d16                        = 0;
	msg->MsgHeader.MsgHeaderStruct.MsgType    = CtrlMsg;
	msg->MsgHeader.MsgHeaderStruct.SpecRev    = USBPD_SPECIFICATION_REV2;
	msg->MsgHeader.MsgHeaderStruct.MsgId      = MsgID;
}

/**
  * @brief   设置 Data Message
  * @param   msg  消息结构体  @ref USBPD_Msg_TypeDef
  * @retval  状态  @ref USBPD_StatusTypeDef 
  */
void USBPD_SetMessage_Data(USBPD_DataMsg_TypeDef DataMsg, uint8_t MsgID, uint32_t *pData, uint8_t Size, USBPD_Msg_TypeDef *msg)
{
	msg->SOPType                              = USBPD_SOPTYPE_SOP;
	msg->MsgHeader.d16                        = 0;
	msg->MsgHeader.MsgHeaderStruct.MsgType    = DataMsg;
	msg->MsgHeader.MsgHeaderStruct.SpecRev    = USBPD_SPECIFICATION_REV2;
	msg->MsgHeader.MsgHeaderStruct.MsgId      = MsgID;
	msg->MsgHeader.MsgHeaderStruct.DataObjNum = Size;
	for (uint32_t i = 0; i < Size; i++)
	{
	  msg->DataObjectValue[i] = pData[i];
	}
}

/**
  * @brief  This generic function to send a control message
  * @param  CtrlMsg   Control message id @ref USBPD_ControlMsg_TypeDef
  * @retval status    @ref USBPD_OK, @ref USBPD_BUSY, @ref USBPD_ERROR or @ref USBPD_FAIL
  */
USBPD_StatusTypeDef USBPD_Send_ControlMessage(USBPD_ControlMsg_TypeDef CtrlMsg)
{
	if (CtrlMsg == USBPD_CONTROLMSG_GOODCRC)
	{
		gTransMsgID = gRcvMsgID;
	}
	else 
	{
		USBPD_IncreaseTransMsgID();
	}
  USBPD_SetMessage_Control(CtrlMsg, gTransMsgID, &gPrlTransMsg);
	USBPD_PHY_SetMessage(&gPrlTransMsg, &gPhyTransMsg);	
	USBPD_PHY_EncodeMessage(&gPhyTransMsg, gBit);
	USBPD_PHY_SendBit(gBit, gBitNum);
	
	return USBPD_OK;
}

/**
  * @brief  This function request PE to send a request message
  * @param  Rdo       Requested data object
  * @retval status    @ref USBPD_OK, @ref USBPD_BUSY, @ref USBPD_ERROR or @ref USBPD_FAIL
  */
USBPD_StatusTypeDef USBPD_Send_Request(uint32_t Rdo)
{
	USBPD_IncreaseTransMsgID();
	USBPD_SetMessage_Data(USBPD_DATAMSG_REQUEST, gTransMsgID, &Rdo, 1, &gPrlTransMsg);
	USBPD_PHY_SetMessage(&gPrlTransMsg, &gPhyTransMsg);	
	USBPD_PHY_EncodeMessage(&gPhyTransMsg, gBit);
	USBPD_PHY_SendBit(gBit, gBitNum);
	
	return USBPD_OK;
}

/**
  * @brief  This function is used to force PE to perform an Hard Reset.
  * @param  PortNum Index of current used port
  * @retval status  @ref USBPD_OK
  */
USBPD_StatusTypeDef USBPD_Send_HardReset(void)
{
	USBPD_SetMessage_HardReset(&gPrlTransMsg);
	USBPD_PHY_SetMessage(&gPrlTransMsg, &gPhyTransMsg);		
	USBPD_PHY_EncodeMessage(&gPhyTransMsg, gBit);
	USBPD_PHY_SendBit(gBit, gBitNum);

	return USBPD_OK;
}

/**
  * @brief  This function is used to force PE to perform an Sink Capapilities Message.
  * @param  PortNum Index of current used port
  * @retval status  @ref USBPD_OK
  */
USBPD_StatusTypeDef USBPD_Send_SinkCap(uint32_t *Pdo, uint32_t Size) 
{
	USBPD_IncreaseTransMsgID();
  USBPD_SetMessage_Data(USBPD_DATAMSG_SNK_CAPABILITIES, gTransMsgID, Pdo, Size, &gPrlTransMsg);
	USBPD_PHY_SetMessage(&gPrlTransMsg, &gPhyTransMsg);	
	USBPD_PHY_EncodeMessage(&gPhyTransMsg, gBit);
	USBPD_PHY_SendBit(gBit, gBitNum);

	return USBPD_OK;
}
