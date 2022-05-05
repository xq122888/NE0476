#ifndef USBPD_PHY_4B5B_H
#define USBPD_PHY_4B5B_H

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"
/******************************************************************************
 * 5B Code
 ******************************************************************************/
#define CODE_5B_0         0x1e //5'b11110
#define CODE_5B_1         0x09 //5'b01001
#define CODE_5B_2         0x14 //5'b10100
#define CODE_5B_3         0x15 //5'b10101
#define CODE_5B_4         0x0a //5'b01010
#define CODE_5B_5         0x0b //5'b01011
#define CODE_5B_6         0x0e //5'b01110
#define CODE_5B_7         0x0f //5'b01111
#define CODE_5B_8         0x12 //5'b10010
#define CODE_5B_9         0x13 //5'b10011
#define CODE_5B_A         0x16 //5'b10110
#define CODE_5B_B         0x17 //5'b10111
#define CODE_5B_C         0x1a //5'b11010
#define CODE_5B_D         0x1b //5'b11011
#define CODE_5B_E         0x1c //5'b11100
#define CODE_5B_F         0x1d //5'b11101

uint8_t USBPD_PHY_Cov5BCodeTo5BValue(uint8_t* input);
void USBPD_PHY_Cov5BValueTo5BCode(uint8_t input, uint8_t* output);
uint8_t USBPD_PHY_4B5BEncode(uint8_t input);
uint8_t USBPD_PHY_5B4BDecode(uint8_t input);

#ifdef __cplusplus
}
#endif

#endif // USBPD_PHY_4B5B_H
