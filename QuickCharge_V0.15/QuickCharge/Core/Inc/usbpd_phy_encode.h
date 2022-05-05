#ifndef USBPD_ENCODE_H
#define USBPD_ENCODE_H

#ifdef __cplusplus
extern "C" {
#endif

#include "usbpd_def.h"

void USBPD_PHY_EncodeMessage(USBPD_PHY_Msg_TypeDef *msg, uint8_t *code);
void USBPD_PHY_SendBit(uint8_t *pBuffer, uint32_t size);
void USBPD_PHY_SetMessage(USBPD_Msg_TypeDef *prlMsg, USBPD_PHY_Msg_TypeDef *phyMsg);

#ifdef __cplusplus
}
#endif

#endif // USBPD_ENCODE_H
