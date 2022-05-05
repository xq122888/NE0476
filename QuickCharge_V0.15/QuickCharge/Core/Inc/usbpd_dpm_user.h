#ifndef USBPD_DMP_USER_H
#define USBPD_DMP_USER_H

#ifdef __cplusplus
extern "C" {
#endif

#include "usbpd_def.h"

#define DPM_NO_SRC_PDO_FOUND      0xFFU        /*!< No match found between Received SRC PDO and SNK capabilities */

/* Define board operating power and max power */
/* Request 12V */
#define USBPD_BOARD_REQUESTED_VOLTAGE_MV       12000
#define USBPD_BOARD_MIN_VOLTAGE_MV             5000
#define USBPD_BOARD_MAX_VOLTAGE_MV             20000

/* Max current */
#define USBPD_CORE_PDO_SRC_FIXED_MAX_CURRENT 3
#define USBPD_CORE_PDO_SNK_FIXED_MAX_CURRENT 1500

/** @brief  Sink Request characteritics Structure definition
  *
  */
typedef struct
{
  uint32_t RequestedVoltageInmVunits;              /*!< Sink request operating voltage in mV units       */
  uint32_t MaxOperatingCurrentInmAunits;           /*!< Sink request Max operating current in mA units   */
  uint32_t OperatingCurrentInmAunits;              /*!< Sink request operating current in mA units       */
  uint32_t MaxOperatingPowerInmWunits;             /*!< Sink request Max operating power in mW units     */
  uint32_t OperatingPowerInmWunits;                /*!< Sink request operating power in mW units         */
} USBPD_DPM_SNKPowerRequestDetails_TypeDef;

USBPD_StatusTypeDef USBPD_DPM_RequestHardReset(void);
USBPD_StatusTypeDef USBPD_DPM_RequestMessageRequest(uint32_t Rdo);
USBPD_StatusTypeDef USBPD_DPM_RequestSoftReset(void);
USBPD_StatusTypeDef USBPD_DPM_RequestGetSourceCapability(void);
uint32_t USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO(uint32_t SrcPDO, uint32_t* PtrRequestedVoltage, uint32_t* PtrRequestedPower);
uint32_t DPM_FindVoltageIndex(USBPD_DPM_SNKPowerRequestDetails_TypeDef* PtrRequestPowerDetails);
void DPM_SNK_BuildRDOfromSelectedFixedPDO(uint8_t IndexSrcPDO, USBPD_DPM_SNKPowerRequestDetails_TypeDef* PtrRequestPowerDetails,
                                          USBPD_SNKRDO_TypeDef* Rdo);


#ifdef __cplusplus
}
#endif

#endif // USBPD_DMP_USER_H
