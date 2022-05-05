#ifndef USBPD_SM_SETTING_H
#define USBPD_SM_SETTING_H

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"
#include "stdbool.h"
#include "usbpd_sme_def.h"
#include "usbpd_sm.h"

StateTransit stateStartupTransit[]={
  //eventId                     nextState
  {EvtPrlReset,                 StateDiscovery},
	{EvtHardRstReceived,          StateTransDefault},
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateDiscoveryTransit[]={
  //eventId                     nextState
  {EvtVbusPresent,              StateWaitCap},
	{EvtHardRstReceived,          StateTransDefault},
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateWaitCapTransit[]={
  //eventId                     nextState
  {EvtSrcCapReceived,           StateSelectCap},
	{EvtTimeout,                  StateHardReset},
	{EvtHardRstReceived,          StateTransDefault},
	{EvtProtocolError,            StateSoftReset},
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateSelectCapTransit[]={
  //eventId                     nextState
  {EvtAcceptReceived,           StateTransSink},
	{EvtExRejWaitReceived,        StateReady},
	{EvtNoExRejWaitReceived,      StateWaitCap},
	{EvtTrcvTimeout1,             StateSelectCap},//跳转至当前状态
	{EvtTrcvTimeout2,             StateSoftReset},
	{EvtTimeout,                  StateHardReset},
	{EvtHardRstReceived,          StateTransDefault},
	{EvtProtocolError,            StateSoftReset},
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateTransSinkTransit[]={
  //eventId                     nextState
  {EvtPSReadyReceived,          StateReady},
	{EvtProtocolError,            StateSoftReset},
	{EvtTimeout,                  StateHardReset},
	{EvtHardRstReceived,          StateTransDefault},
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateReadyTransit[]={
  //eventId                     nextState
	{EvtGetSinkCapReceived,       StateGiveSinkCap},
  {EvtUpdateCapReqest,          StateGetSrcCap},
	{EvtNewPowerRequired,         StateSelectCap},
  {EvtTimeout,                  StateSelectCap},  //SinkRequestTimeout
  {EvtSrcCapReceived,           StateSelectCap},
  {EvtHardRstReceived,          StateTransDefault},	
	{EvtNotSupportedSent,         StateNotSupported},
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateGiveSinkCapTransit[]={
  //eventId                     nextState
	{EvtSinkCapSent,              StateReady},
	{EvtHardRstReceived,          StateTransDefault},
	{EvtTrcvTimeout1,             StateGiveSinkCap}, 
	{EvtTrcvTimeout2,             StateSoftReset}, 
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateGetSrcCapTransit[]={
  //eventId                     nextState
	{EvtGetSrcCapSent,            StateReady},
	{EvtHardRstReceived,          StateTransDefault},
	{EvtTrcvTimeout1,             StateGetSrcCap}, 
	{EvtTrcvTimeout2,             StateSoftReset}, 
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateHardResetTransit[]={
  //eventId                     nextState
	{EvtHardRstCompelete,         StateTransDefault},
	{EvtHardRstReceived,          StateTransDefault},
  {EvtTrcvTimeout1,             StateHardReset}, 
	{EvtTrcvTimeout2,             StateHardReset}, 
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateTransDefaultTransit[]={
  //eventId                     nextState
	{EvtPowerDefault,             StateStartup},
	{EvtHardRstReceived,          StateTransDefault},
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateSoftResetTransit[]={
  //eventId                     nextState
	{EvtSoftRstSent,              StateStartup},
	{EvtHardRstReceived,          StateTransDefault},
  {EvtTrcvTimeout1,             StateSoftReset}, 
	{EvtTrcvTimeout2,             StateHardReset}, 
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateTransit stateNotSupportedTransit[]={
  //eventId                     nextState
	{EvtNotSupportedSent,         StateReady},
	{EvtHardRstReceived,          StateTransDefault},
  {EvtTrcvTimeout1,             StateNotSupported}, 
	{EvtTrcvTimeout2,             StateSoftReset}, 
  {EvtNull,                     StateInvalid}			//EvtNull marks end of the table 
};

StateSet SM_Table[]=
{
	{USBPD_StateStartup_Entry,      USBPD_StateStartup_Exit,      USBPD_StateStartup_Aciton,      stateStartupTransit},
	{USBPD_StateDiscovery_Entry,    USBPD_StateDiscovery_Exit,    USBPD_StateDiscovery_Action,    stateDiscoveryTransit},
	{USBPD_StateWaitCap_Entry,      USBPD_StateWaitCap_Exit,      USBPD_StateWaitCap_Aciton,      stateWaitCapTransit},
	{USBPD_StateSelectCap_Entry,    USBPD_StateSelectCap_Exit,    USBPD_StateSelectCap_Aciton,    stateSelectCapTransit},
	{USBPD_StateTransSink_Entry,    USBPD_StateTransSink_Exit,    USBPD_StateTransSink_Aciton,    stateTransSinkTransit},
	{USBPD_StateReady_Entry,        USBPD_StateReady_Exit,        USBPD_StateReady_Aciton,        stateReadyTransit},
	{USBPD_StateGiveSinkCap_Entry,  USBPD_StateGiveSinkCap_Exit,  USBPD_StateGiveSinkCap_Aciton,  stateGiveSinkCapTransit},
	{USBPD_StateGetSrcCap_Entry,    USBPD_StateGetSrcCap_Exit,    USBPD_StateGetSrcCap_Aciton,    stateGetSrcCapTransit},
	{USBPD_StateHardReset_Entry,    USBPD_StateHardReset_Exit,    USBPD_StateHardReset_Aciton,    stateHardResetTransit},
	{USBPD_StateTransDefault_Entry, USBPD_StateTransDefault_Exit, USBPD_StateTransDefault_Aciton, stateTransDefaultTransit},
	{USBPD_StateSoftReset_Entry,    USBPD_StateSoftReset_Exit,    USBPD_StateSoftReset_Aciton,    stateSoftResetTransit},	
	{USBPD_StateNotSupported_Entry, USBPD_StateNotSupported_Exit, USBPD_StateNotSupported_Aciton, stateNotSupportedTransit},	
};

#ifdef __cplusplus
}
#endif

#endif // USBPD_SM_SETTING_H
