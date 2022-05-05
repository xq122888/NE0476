#include "usbpd_sm.h"
#include "timer.h"
#include "usbpd_prl.h"
#include "usbpd_phy_decode.h"
#include "usbpd_msgrcv.h"
#include "usbpd_msgtrans.h"
#include "usbpd_dpm_user.h"
#include "measure.h"
#include "global.h"

static uint32_t msgType;
static uint32_t timeoutCnt;
static uint32_t sinkpdoValue[2] = {0x19096, 0x1003C096};//根据当前Sink能力确定PDO数量和值
	
/* StateStartup */
void USBPD_StateStartup_Entry(EventId eventId, uint8_t eventParam)
{
	gSoftRstCnt = 0;
}

void USBPD_StateStartup_Exit(void)
{  
  StopAllTimers();
}

bool USBPD_StateStartup_Aciton(EventInfo* pEvtInfo)
{	
	if (USBPD_OK == USBPD_ProtocolLayerReset())
	{	
		pEvtInfo->eventId = EvtPrlReset;
		USBPD_DisableDecoder();
	  return true;
	}
	return false;
}

/* StateDiscovery */
void USBPD_StateDiscovery_Entry(EventId eventId, uint8_t eventParam)
{
	
}

void USBPD_StateDiscovery_Exit(void)
{
	
}

bool USBPD_StateDiscovery_Action(EventInfo* pEvtInfo)
{
	if (GetInstantVBUSVoltage() > 4000)
	{
		pEvtInfo->eventId = EvtVbusPresent;
		USBPD_EnableDecoder();
		return true;
	}
	return false;
}

/* StateWaitCap */
void USBPD_StateWaitCap_Entry(EventId eventId, uint8_t eventParam)
{	
	StartTimer1(USBPD_T_TYPECSINKWAITCAP);
}

void USBPD_StateWaitCap_Exit(void)
{
  StopAllTimers();
}

bool USBPD_StateWaitCap_Aciton(EventInfo* pEvtInfo)
{
  /* Check the timing for USBPD_T_TYPECSINKWAITCAP */
	if(IsTimer1Expired())
	{
		pEvtInfo->eventId = EvtTimeout;
		return true;
	}
	
	if (gNewMsgFlag)
	{
		gNewMsgFlag = false;
		if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
		{
			USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
			msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);			
			if (msgType == USBPD_MSG_HARD_RST)
			{
				pEvtInfo->eventId = EvtHardRstReceived;
			}
			else if (msgType == USBPD_MSG_SRC_CAP)					
			{
				gRcvMsgID = gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId;
				USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GOODCRC);
				pEvtInfo->eventId = EvtSrcCapReceived;
			}
			else
			{
				pEvtInfo->eventId = EvtProtocolError;
			}
		}
		USBPD_EnableDecoder();
		return true;
	}	
  return false;
}

/* State SelectCap */
void USBPD_StateSelectCap_Entry(EventId eventId, uint8_t eventParam)
{
	uint32_t pdoIndex;
	USBPD_DPM_SNKPowerRequestDetails_TypeDef reqDetails;

	gHardRstCnt = 0;
	
	pdoIndex = DPM_FindVoltageIndex(&reqDetails);
	DPM_SNK_BuildRDOfromSelectedFixedPDO(pdoIndex, &reqDetails, &gRdo);
  USBPD_Send_Request(gRdo.d32);
	StartTimer1(USBPD_T_RECEIVE);
}

void USBPD_StateSelectCap_Exit(void)
{
	StopAllTimers();
}

bool USBPD_StateSelectCap_Aciton(EventInfo* pEvtInfo)
{ 
	if (IsTimer1Expired()) //USBPD_T_RECEIVE
	{
		timeoutCnt++;
		if (timeoutCnt == 1)
		{
		  pEvtInfo->eventId = EvtTrcvTimeout1;
			USBPD_Send_Request(gRdo.d32);
			RestartTimer1();
		}
		else
		{
			timeoutCnt = 0;
			pEvtInfo->eventId = EvtTrcvTimeout2;
		}
		return true;
	}
	
	if (IsTimer2Expired())
	{
		pEvtInfo->eventId = EvtTimeout;
		return true;
	}
	
	if (gNewMsgFlag)
	{
		gNewMsgFlag = false;
		if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
		{
			gWaitFlag = false;
			USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
			msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);
			switch (msgType)
			{
				case USBPD_MSG_HARD_RST:
					pEvtInfo->eventId = EvtHardRstReceived;
					USBPD_EnableDecoder();
					return true;
			  case USBPD_MSG_GOODCRC:	
          if (gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId == gTransMsgID)
					{						
					  StopTimer1();
					  StartTimer2(USBPD_T_SENDERRESPONSE);
					  USBPD_EnableDecoder();
					}
					break;
			  case USBPD_MSG_ACCEPT:
          gRcvMsgID = gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId;					
					pEvtInfo->eventId = EvtAcceptReceived;
					USBPD_EnableDecoder();
					return true;
				case USBPD_MSG_REJECT:	
					gRcvMsgID = gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId;
					if (gExplicitFlag)	
					{						
					  pEvtInfo->eventId = EvtExRejWaitReceived;
					}
					else
					{
						pEvtInfo->eventId = EvtNoExRejWaitReceived;					  
					}
					USBPD_EnableDecoder();
					return true;
        case USBPD_MSG_WAIT:
					gRcvMsgID = gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId;
          if (gExplicitFlag)	
					{						
					  pEvtInfo->eventId = EvtExRejWaitReceived;
						gWaitFlag = true;
					}
					else
					{
						pEvtInfo->eventId = EvtNoExRejWaitReceived;					  
					}
					USBPD_EnableDecoder();
					return true;
			  default:
				  pEvtInfo->eventId = EvtProtocolError;
				  USBPD_EnableDecoder();
				  return true;
			}
		}
	}
  return false;
}

/* State TransSink */
void USBPD_StateTransSink_Entry(EventId eventId, uint8_t eventParam)
{
  StartTimer1(USBPD_T_PSTRANSITION);
}

void USBPD_StateTransSink_Exit(void)
{
	StopAllTimers();
}

bool USBPD_StateTransSink_Aciton(EventInfo* pEvtInfo)
{
  //切换 Sink 负载
	//...
	
	if (IsTimer1Expired())
	{
		pEvtInfo->eventId = EvtTimeout;
		return true;
	}
	
	if (gNewMsgFlag)
	{
		gNewMsgFlag = 0;
		if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
		{
			USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
			msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);
			if (msgType == USBPD_MSG_HARD_RST)
			{
				pEvtInfo->eventId = EvtHardRstReceived;
			}
			else if (msgType == USBPD_MSG_PS_READY)					
			{
				gRcvMsgID = gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId;
				USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GOODCRC);
				pEvtInfo->eventId = EvtPSReadyReceived;
			}
			else
			{
				pEvtInfo->eventId = EvtProtocolError;
			}
		}
		USBPD_EnableDecoder();
		return true;
	}
  return false;
}

/* State Ready */
void USBPD_StateReady_Entry(EventId eventId, uint8_t eventParam)
{
  if (gWaitFlag)
	{
		StartTimer1(USBPD_T_SINKREQUEST);
	}
}

void USBPD_StateReady_Exit(void)
{
	StopAllTimers();
}

bool USBPD_StateReady_Aciton(EventInfo* pEvtInfo)
{
  if (IsTimer1Expired())
	{
		pEvtInfo->eventId = EvtTrcvTimeout1;
		return true;
	}
	
	if (gNewReqFlag)
	{
		pEvtInfo->eventId = EvtUpdateCapReqest;
		return true;
	}
	
	if (gNewMsgFlag)
	{
		gNewMsgFlag = 0;
		if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
		{
			USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
			msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);
			switch (msgType)
			{
			  case USBPD_MSG_HARD_RST:
				  pEvtInfo->eventId = EvtHardRstReceived;
			    break;
			  case USBPD_MSG_GET_SINK_CAP:			
          gRcvMsgID = gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId;					
				  USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GOODCRC);
				  pEvtInfo->eventId = EvtGetSinkCapReceived;
          break;
			  case USBPD_MSG_SRC_CAP:
          gRcvMsgID = gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId;					
				  USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GOODCRC);
				  pEvtInfo->eventId = EvtSrcCapReceived;
          break;				
        default:
				  pEvtInfo->eventId = EvtNotSupportedSent;
				  break;
			}
		}
		USBPD_EnableDecoder();
		return true;
	}
  return false;
}

/* State GiveSinkCap */
void USBPD_StateGiveSinkCap_Entry(EventId eventId, uint8_t eventParam)
{
  USBPD_Send_SinkCap(sinkpdoValue, 2);
	StartTimer1(USBPD_T_RECEIVE);
}

void USBPD_StateGiveSinkCap_Exit(void)
{
	StopAllTimers();
}

bool USBPD_StateGiveSinkCap_Aciton(EventInfo* pEvtInfo)
{
	if (IsTimer1Expired()) //USBPD_T_RECEIVE
	{
		timeoutCnt++;
		if (timeoutCnt == 1)
		{
		  pEvtInfo->eventId = EvtTrcvTimeout1;
			USBPD_Send_SinkCap(sinkpdoValue, 2);
			RestartTimer1();
		}
		else
		{
			timeoutCnt = 0;
			pEvtInfo->eventId = EvtTrcvTimeout2;
		}
		return true;
	}
	
	if (gNewMsgFlag)
	{
		gNewMsgFlag = 0;
		if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
		{
			USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
			msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);
			switch (msgType)
			{
			  case USBPD_MSG_HARD_RST:
				  pEvtInfo->eventId = EvtHardRstReceived;
			    break;
			  case USBPD_MSG_GOODCRC:	
          if (gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId == gTransMsgID)
					{						
				    pEvtInfo->eventId = EvtSinkCapSent;
					}
          break;				
        default:
				  pEvtInfo->eventId = EvtProtocolError;
				  break;
			}
		}
		USBPD_EnableDecoder();
		return true;
	}
  return false;
}

/* State GetSrcCap */
void USBPD_StateGetSrcCap_Entry(EventId eventId, uint8_t eventParam)
{
  USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GET_SRC_CAP);
	StartTimer1(USBPD_T_RECEIVE);
}

void USBPD_StateGetSrcCap_Exit(void)
{
	StopAllTimers();
}

bool USBPD_StateGetSrcCap_Aciton(EventInfo* pEvtInfo)
{
	if (IsTimer1Expired()) //USBPD_T_RECEIVE
	{
		timeoutCnt++;
		if (timeoutCnt == 1)
		{
		  pEvtInfo->eventId = EvtTrcvTimeout1;
			USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GET_SRC_CAP);
			RestartTimer1();
		}
		else
		{
			timeoutCnt = 0;
			pEvtInfo->eventId = EvtTrcvTimeout2;
		}
		return true;
	}
	
	if (gNewMsgFlag)
	{
		gNewMsgFlag = 0;
		if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
		{
			USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
			msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);
			switch (msgType)
			{
			  case USBPD_MSG_HARD_RST:
				  pEvtInfo->eventId = EvtHardRstReceived;
			    break;
			  case USBPD_MSG_GOODCRC:		
          if (gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId == gTransMsgID)
					{						
				    pEvtInfo->eventId = EvtGetSrcCapSent;
					}
          break;				
        default:
				  pEvtInfo->eventId = EvtProtocolError;
				  break;
			}
		}
		USBPD_EnableDecoder();
		return true;
	}
  return false;
}

/* State HardReset */
void USBPD_StateHardReset_Entry(EventId eventId, uint8_t eventParam)
{
  if (gHardRstCnt < 2)
	{
		gHardRstCnt++;
		USBPD_Send_HardReset();
		StartTimer1(USBPD_T_RECEIVE);
	}
	else
	{
		gPDEn = false;//关闭PD
	}
}

void USBPD_StateHardReset_Exit(void)
{
	StopAllTimers();
}

bool USBPD_StateHardReset_Aciton(EventInfo* pEvtInfo)
{
	if (IsTimer1Expired()) //USBPD_T_RECEIVE
	{
		timeoutCnt++;
		if (timeoutCnt == 1)
		{
		  pEvtInfo->eventId = EvtTrcvTimeout1;
			RestartTimer1();
		}
		else
		{
			timeoutCnt = 0;
			pEvtInfo->eventId = EvtTrcvTimeout2;
		}
		return true;
	}
	
	if (gNewMsgFlag)
	{
		gNewMsgFlag = 0;
		if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
		{
			USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
			msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);
			switch (msgType)
			{
			  case USBPD_MSG_HARD_RST:
				  pEvtInfo->eventId = EvtHardRstReceived;
			    break;
			  case USBPD_MSG_GOODCRC:	
          if (gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId == gTransMsgID)
					{						
				    pEvtInfo->eventId = EvtGetSrcCapSent;
					}
          break;				
        default:
				  pEvtInfo->eventId = EvtProtocolError;
				  break;
			}
		}
		StopTimer1();
		USBPD_EnableDecoder();
		return true;
	}
  return false;
}

/* State TransDefault */
void USBPD_StateTransDefault_Entry(EventId eventId, uint8_t eventParam)
{
	//Sink transition to default
	//Reset HW
}

void USBPD_StateTransDefault_Exit(void)
{
	//Inform Protocol Layer Hard Reset Complete
}

bool USBPD_StateTransDefault_Aciton(EventInfo* pEvtInfo)
{
	pEvtInfo->eventId = EvtPowerDefault;
  return true;
}

/* State SoftReset */
void USBPD_StateSoftReset_Entry(EventId eventId, uint8_t eventParam)
{
	if (gSoftRstCnt < 2)
	{
		gSoftRstCnt++;
		USBPD_Send_ControlMessage(USBPD_CONTROLMSG_SOFT_RESET);
		StartTimer1(USBPD_T_RECEIVE);
	}
}

void USBPD_StateSoftReset_Exit(void)
{
	StopAllTimers();
}

bool USBPD_StateSoftReset_Aciton(EventInfo* pEvtInfo)
{
	if (IsTimer1Expired()) //USBPD_T_RECEIVE
	{
		timeoutCnt++;
		if (timeoutCnt == 1)
		{
		  pEvtInfo->eventId = EvtTrcvTimeout1;
			RestartTimer1();
		}
		else
		{
			timeoutCnt = 0;
			pEvtInfo->eventId = EvtTrcvTimeout2;
		}
		return true;
	}
	
	if (gNewMsgFlag)
	{
		gNewMsgFlag = 0;
		if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
		{
			USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
			msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);
			switch (msgType)
			{
			  case USBPD_MSG_HARD_RST:
				  pEvtInfo->eventId = EvtHardRstReceived;
			    break;
			  case USBPD_MSG_GOODCRC:
          if (gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId == gTransMsgID)
					{						
				    pEvtInfo->eventId = EvtGetSrcCapSent;
					}
          break;				
        default:
				  pEvtInfo->eventId = EvtProtocolError;
				  break;
			}
		}
		StopTimer1();
		USBPD_EnableDecoder();
		return true;
	}
  return false;
}

/* State NotSupported */
void USBPD_StateNotSupported_Entry(EventId eventId, uint8_t eventParam)
{
	USBPD_Send_ControlMessage(USBPD_CONTROLMSG_NOT_SUPPORTED);
	StartTimer1(USBPD_T_RECEIVE);
}

void USBPD_StateNotSupported_Exit(void)
{
	
}

bool USBPD_StateNotSupported_Aciton(EventInfo* pEvtInfo)
{
	if (IsTimer1Expired()) //USBPD_T_RECEIVE
	{
		timeoutCnt++;
		if (timeoutCnt == 1)
		{
		  pEvtInfo->eventId = EvtTrcvTimeout1;
			RestartTimer1();
		}
		else
		{
			timeoutCnt = 0;
			pEvtInfo->eventId = EvtTrcvTimeout2;
		}
		return true;
	}
	
	if (gNewMsgFlag)
	{
		gNewMsgFlag = 0;
		if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
		{
			USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
			msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);
			switch (msgType)
			{
			  case USBPD_MSG_HARD_RST:
				  pEvtInfo->eventId = EvtHardRstReceived;
			    break;
			  case USBPD_MSG_GOODCRC:			
          if (gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId == gTransMsgID)
					{						
				    pEvtInfo->eventId = EvtNotSupportedSent;
					}
          break;				
        default:
				  pEvtInfo->eventId = EvtProtocolError;
				  break;
			}
		}
		StopTimer1();
		USBPD_EnableDecoder();
		return true;
	}
  return false;
}

