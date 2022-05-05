#ifndef USBQC_H
#define USBQC_H

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"

void ResetQuickChargeFlag(void);
void SetQuickCharge(uint16_t voltage);
void QuickChargeDetection(void);
	
#ifdef __cplusplus
}
#endif

#endif // USBQC_H
