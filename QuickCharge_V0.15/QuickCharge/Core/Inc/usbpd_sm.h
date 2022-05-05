#ifndef USBPD_SM_H
#define USBPD_SM_H

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"
#include "stdbool.h"
#include "usbpd_sme_def.h"

void USBPD_StateStartup_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateStartup_Exit(void);
bool USBPD_StateStartup_Aciton(EventInfo* pEvtInfo);

void USBPD_StateDiscovery_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateDiscovery_Exit(void);
bool USBPD_StateDiscovery_Action(EventInfo* pEvtInfo);

void USBPD_StateWaitCap_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateWaitCap_Exit(void);
bool USBPD_StateWaitCap_Aciton(EventInfo* pEvtInfo);

void USBPD_StateSelectCap_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateSelectCap_Exit(void);
bool USBPD_StateSelectCap_Aciton(EventInfo* pEvtInfo);

void USBPD_StateTransSink_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateTransSink_Exit(void);
bool USBPD_StateTransSink_Aciton(EventInfo* pEvtInfo);

void USBPD_StateReady_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateReady_Exit(void);
bool USBPD_StateReady_Aciton(EventInfo* pEvtInfo);

void USBPD_StateGiveSinkCap_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateGiveSinkCap_Exit(void);
bool USBPD_StateGiveSinkCap_Aciton(EventInfo* pEvtInfo);

void USBPD_StateGetSrcCap_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateGetSrcCap_Exit(void);
bool USBPD_StateGetSrcCap_Aciton(EventInfo* pEvtInfo);

void USBPD_StateHardReset_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateHardReset_Exit(void);
bool USBPD_StateHardReset_Aciton(EventInfo* pEvtInfo);

void USBPD_StateTransDefault_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateTransDefault_Exit(void);
bool USBPD_StateTransDefault_Aciton(EventInfo* pEvtInfo);

void USBPD_StateSoftReset_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateSoftReset_Exit(void);
bool USBPD_StateSoftReset_Aciton(EventInfo* pEvtInfo);

void USBPD_StateNotSupported_Entry(EventId eventId, uint8_t eventParam);
void USBPD_StateNotSupported_Exit(void);
bool USBPD_StateNotSupported_Aciton(EventInfo* pEvtInfo);


#ifdef __cplusplus
}
#endif

#endif // USBPD_SM_H
