#ifndef USBPD_DECODE_H
#define USBPD_DECODE_H

#ifdef __cplusplus
extern "C" {
#endif

#include "usbpd_def.h"

#define USBPD_DECODE_TIME1   200
#define USBPD_DECODE_TIME2   1000
#define USBPD_DECODE_TIME3   2400
#define USBPD_DECODE_TIME4   6000
#define USBPD_DECODE_TIME5   9000 // long ×´Ì¬¼ì²âÉÏÏÞ

#define USBPD_GAPTYPE_SHARK  0u
#define USBPD_GAPTYPE_NULL   1u
#define USBPD_GAPTYPE_HALF   2u
#define USBPD_GAPTYPE_ZERO   3u
#define USBPD_GAPTYPE_LONG   4u
#define USBPD_GapType_TypeDef uint32_t

/******************************************************************************
 *  KCode
 ******************************************************************************/
#define KCODE_SYNC1       0x18 //5'b11000
#define KCODE_SYNC2       0x11 //5'b10001
#define KCODE_SYNC3       0x06 //5'b00110
#define KCODE_RST1        0x07 //5'b00111
#define KCODE_RST2        0x19 //5'b11001
#define KCODE_EOP         0x0d //5'b01101

USBPD_StatusTypeDef USBPD_PHY_DecodeMessage(USBPD_PHY_Msg_TypeDef *msg);
void USBPD_EnableDecoder(void);
void USBPD_DisableDecoder(void);

#ifdef __cplusplus
}
#endif

#endif // USBPD_DECODE_H
