#ifndef USBPD_MSGRCV_H
#define USBPD_MSGRCV_H

#ifdef __cplusplus
extern "C" {
#endif

#include "usbpd_def.h"

void USBPD_GetMessage(USBPD_PHY_Msg_TypeDef *phyMsg, USBPD_Msg_TypeDef *prlMsg);
uint32_t USBPD_GetSRCFixedPDOList(USBPD_Msg_TypeDef *prlMsg);
USBPD_RcvMsgType_TypeDef USBPD_GetReceivedMsgType(USBPD_Msg_TypeDef *msg);

#ifdef __cplusplus
}
#endif

#endif // USBPD_MSGRCV_H
