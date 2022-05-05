#ifndef USBPD_PRL_H
#define USBPD_PRL_H

#ifdef __cplusplus
extern "C" {
#endif

#include "usbpd_def.h"

void USBPD_IncreaseTransMsgID(void);
USBPD_StatusTypeDef USBPD_ProtocolLayerReset(void);

#ifdef __cplusplus
}
#endif

#endif // USBPD_PRL_H
