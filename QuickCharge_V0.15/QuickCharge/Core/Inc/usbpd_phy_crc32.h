#ifndef USBPD_PHY_CRC32_H
#define USBPD_PHY_CRC32_H

#ifdef __cplusplus
extern "C" {
#endif

#include "usbpd_def.h"
#include "usbpd_phy_decode.h"

uint32_t USBPD_PHY_CRC32Generate(uint8_t *msgByte, uint32_t size);
USBPD_StatusTypeDef USBPD_PHY_CRC32Check(uint8_t *msgByte, uint32_t size, uint32_t ref);

#ifdef __cplusplus
}
#endif

#endif // USBPD_PHY_CRC32_H
