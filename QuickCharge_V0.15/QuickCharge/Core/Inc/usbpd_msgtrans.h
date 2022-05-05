#ifndef USBPD_MSGTRANS_H
#define USBPD_MSGTRANS_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include "usbpd_def.h"

void USBPD_SetMessage_HardReset(USBPD_Msg_TypeDef *msg);
void USBPD_SetMessage_Control(USBPD_ControlMsg_TypeDef CtrlMsg, USBPD_SOPType_TypeDef SOPType, USBPD_Msg_TypeDef *msg);
void USBPD_SetMessage_Data(USBPD_DataMsg_TypeDef DataMsg, uint8_t MsgID, uint32_t *pData, uint8_t Size, USBPD_Msg_TypeDef *msg);
USBPD_StatusTypeDef USBPD_Send_ControlMessage(USBPD_ControlMsg_TypeDef CtrlMsg);
USBPD_StatusTypeDef USBPD_Send_Request(uint32_t Rdo);
USBPD_StatusTypeDef USBPD_Send_HardReset(void);
USBPD_StatusTypeDef USBPD_Send_SinkCap(uint32_t *Pdo, uint32_t Size);

#ifdef __cplusplus
}
#endif

#endif // USBPD_MSGTRANS_H
