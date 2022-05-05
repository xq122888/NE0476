#ifndef USBPD_SME_DEF_H
#define USBPD_SME_DEF_H

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"
#include "stdbool.h"

typedef enum 
{                 
  StateStartup,			       //0
  StateDiscovery,		       //1
  StateWaitCap,		         //2
  StateSelectCap,			     //3
  StateTransSink,	         //4
  StateReady,		           //5
  StateGiveSinkCap,		     //6
  StateGetSrcCap,          //7
  StateHardReset,          //9
	StateTransDefault,       //10
	StateSoftReset,          //11
	StateNotSupported,       //12
	StateCount,
	StateInvalid
}StateId;

typedef enum 
{
	EvtPrlReset,		         //0 
	EvtVbusPresent, 	   		 //1
	EvtSrcCapReceived,			 //2
	EvtAcceptReceived,			 //3
	EvtExRejWaitReceived,    //4
	EvtNoExRejWaitReceived,  //5
	EvtWaitReceived,         //6
	EvtPSReadyReceived,			 //7
	EvtProtocolError,	       //8
	EvtGetSinkCapReceived,	 //9
	EvtSinkCapSent,			     //10
	EvtGetSrcCapSent,	  		 //11
	EvtUpdateCapReqest,	  	 //12
	EvtNewPowerRequired,	   //13
	EvtHardRstCompelete,     //14
	EvtHardRstReceived,      //15
  EvtPowerDefault,         //16
	EvtSoftRstSent,          //17
	EvtNotSupportedSent,     //18
  EvtTrcvTimeout1,         //19
	EvtTrcvTimeout2,         //20
	EvtTimeout,              //21
	EventCount,
	EvtNull		               //for marking the end of a transition tabele
}EventId;

typedef struct
{
  EventId       eventId;
  uint8_t       param1;  
}EventInfo;

/* function pointer to point a state entry function. */
typedef void (*HStateEntry)(EventId id, uint8_t eventParam); 
/* function pointer to point a state exit function. */
typedef void (*HStateExit)(void); 
/* function pointer to point a state action function. */
typedef bool (*HStateAction)(EventInfo* pEvtInfo); 

typedef struct
{
  EventId       eventId;
  StateId       nextState;
}StateTransit;
  
typedef struct
{
  HStateEntry		   hStateEntry; 
  HStateExit       hStateExit; 
	HStateAction     hStateAction;
  StateTransit*    pStateTransit; 
}StateSet;

#ifdef __cplusplus
}
#endif

#endif // USBPD_SME_DEF_H
