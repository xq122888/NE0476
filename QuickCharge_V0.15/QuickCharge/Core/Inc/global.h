#ifndef GLOBAL_H
#define GLOBAL_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include "usbpd_def.h"
#include "main.h"

#define SNK_FIXED_PDO_NUM  2

extern bool     gNewMsgFlag;
extern uint8_t  gBit[500];
extern uint32_t gBitNum;
extern uint8_t  gData5b[5];
extern USBPD_PHY_Msg_TypeDef gPhyRcvMsg;
extern USBPD_PHY_Msg_TypeDef gPhyTransMsg;
extern USBPD_Msg_TypeDef gPrlRcvMsg;
extern USBPD_Msg_TypeDef gPrlTransMsg;
extern uint32_t gSRCFixedPDONum;
extern USBPD_PDO_TypeDef gSRCFixedPDOList[7];
extern USBPD_PDO_TypeDef gSNKFixedPDOList[SNK_FIXED_PDO_NUM];
extern USBPD_SNKRDO_TypeDef gRdo;
extern uint8_t  gTransMsgID;
extern uint8_t  gRcvMsgID;
extern uint8_t  gHardRstCnt;
extern uint8_t  gSoftRstCnt;
extern bool     gExplicitFlag;
extern bool     gWaitFlag;
extern bool     gNewReqFlag;
extern bool     gPDEn;
extern bool     gQcAdapter;

#ifdef __cplusplus
}
#endif

#endif // GLOBAL_H
