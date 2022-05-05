#ifndef USBPD_DEF_H
#define USBPD_DEF_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>
#define USBPD_REV30_SUPPORT

/* Exported macro ------------------------------------------------------------*/
/** @defgroup USBPD_CORE_DEF_Exported_Macros USBPD CORE DEF Exported Macros
  * @{
  */
/**
  * @brief  Compare two variables and return the smallest
  * @param  __VAR1__ First variable to be compared
  * @param  __VAR2__ Second variable to be compared
  * @retval Returns the smallest variable
  */
#define USBPD_MIN(__VAR1__, __VAR2__) (((__VAR1__) > (__VAR2__))?(__VAR2__):(__VAR1__))

/**
  * @brief  Compare two variables and return the biggest
  * @param  __VAR1__ First variable to be compared
  * @param  __VAR2__ Second variable to be compared
  * @retval Returns the biggest variable
  */
#define USBPD_MAX(__VAR1__, __VAR2__) (((__VAR1__) < (__VAR2__))?(__VAR2__):(__VAR1__))

/**
  * @brief  Check if the requested voltage is valid
  * @param  __MV__    Requested voltage in mV units
  * @param  __MAXMV__ Max Requested voltage in mV units
  * @param  __MINMV__ Min Requested voltage in mV units
  * @retval 1 if valid voltage else 0
  */
#define USBPD_IS_VALID_VOLTAGE(__MV__, __MAXMV__, __MINMV__) ((((__MV__) <= (__MAXMV__))\
                                                               && ((__MV__) >= (__MINMV__)))? 1U: 0U)

#define DIV_ROUND_UP(x, y) (((x) + ((y) - 1u)) / (y))
#define MV2ADC(__X__)           ( (__X__*4095) / 3300 )
#define ADC2MV(__X__)           ( (__X__*3300) / 4095 )

/* Macros for integer division with various rounding variants default integer
   division rounds down. */
#define MIN(a, b)  (((a) < (b)) ? (a) : (b))
#define MAX(a, b)  (((a) > (b)) ? (a) : (b))

#define USPBPD_WRITE32(addr,data)                                                  \
  do {                                                                             \
    uint8_t bindex;                                                                \
    for(bindex = 0u; bindex < 4u; bindex++)                                        \
    {                                                                              \
      ((uint8_t *)addr)[bindex] = ((uint8_t)(data >> (8U * bindex)) & 0x000000FFU);\
    }                                                                              \
  } while(0u);

#define USBPD_LE16(addr) (((uint16_t)(*((uint8_t *)(addr))))\
                          + (((uint16_t)(*(((uint8_t *)(addr)) + 1U))) << 8U))

#define USBPD_LE32(addr) ((((uint32_t)(*(((uint8_t *)(addr)) + 0U))) +         \
                           (((uint32_t)(*(((uint8_t *)(addr)) + 1U))) << 8U) + \
                           (((uint32_t)(*(((uint8_t *)(addr)) + 2U))) << 16U)+ \
                           (((uint32_t)(*(((uint8_t *)(addr)) + 3U))) << 24U)))

/**
  * @}
  */

/* Exported defines   --------------------------------------------------------*/
/** @defgroup USBPD_CORE_DEF_Exported_Defines USBPD CORE DEF Exported Defines
  * @{
  */
#define USBPD_TRUE  1U
#define USBPD_FALSE 0U

/* Exported constants --------------------------------------------------------*/
#define USBPD_MAX_NB_PDO       (7U)    /*!< Maximum number of supported Power Data Objects: fix by the Specification */
#define BIST_CARRIER_MODE_MS   (50U)   /*!< Time in ms of the BIST signal*/

/*
  @brief Maximum size of the RX buffer allocated in the stack to receive a PD frame
  @note TX buffer size is used internally in the stack (size if available in @ref USBPD_PHY_SendMessage)
   */
#if defined(USBPDCORE_UNCHUNCKED_MODE)
#define USBPD_MAX_RX_BUFFER_SIZE (264U) /*!< Maximum size of Rx buffer used when unchuncked is supported by the stack */
#else
#define USBPD_MAX_RX_BUFFER_SIZE (30U) /*!< Maximum size of Rx buffer used when unchuncked
                                            is NOT supported by the stack */
#endif /* USBPDCORE_UNCHUNCKED_MODE */

/*
 * Maximum size of a Power Delivery packet (in bits on the wire) :
 *    16-bit header + 0..7 32-bit data objects  (+ 4b5b encoding)
 *    64-bit preamble + SOP (4x 5b) + header (16-bit) + message in 4b5b + 32-bit CRC  + EOP (1x 5b)
 * =  64bit           + 4*5bit      + 16bit * 5/4 + 7 * 32bit * 5/4 + 32bit * 5/4 + 5
 */
#define PHY_BIT_LEN             ((uint16_t)429U)
#define PHY_MAX_RAW_SIZE        ((uint16_t)((PHY_BIT_LEN*2u) + 3U))
#define PHY_MAX_RAW_BYTE_SIZE   ((uint8_t)60U) /*!<PHY_BIT_LEN / 8 + SAFE Bytes */

/** @defgroup USBPD_PDO_Index_And_Mask_Constants Index and Mask constants used in PDO bits handling
  * @{
  */
#define USBPD_PDO_TYPE_Pos       (30U)                                                         /*!< PDO Type bits position                          */
#define USBPD_PDO_TYPE_Msk       (0x3U << USBPD_PDO_TYPE_Pos)                                  /*!< PDO Type bits mask : 0xC0000000                 */
#define USBPD_PDO_TYPE_FIXED     (uint32_t)(USBPD_CORE_PDO_TYPE_FIXED << USBPD_PDO_TYPE_Pos)   /*!< PDO Type = FIXED                                */
#define USBPD_PDO_TYPE_BATTERY   (uint32_t)(USBPD_CORE_PDO_TYPE_BATTERY << USBPD_PDO_TYPE_Pos) /*!< PDO Type = BATTERY                              */
#define USBPD_PDO_TYPE_VARIABLE  (uint32_t)(USBPD_CORE_PDO_TYPE_VARIABLE << USBPD_PDO_TYPE_Pos)/*!< PDO Type = VARIABLE                             */
#if defined(USBPD_REV30_SUPPORT)
#define USBPD_PDO_TYPE_APDO      (uint32_t)(USBPD_CORE_PDO_TYPE_APDO<< USBPD_PDO_TYPE_Pos)     /*!< PDO Type = APDO                                 */
#endif /* USBPD_REV30_SUPPORT */

/* Source Fixed type PDO elements */
#define USBPD_PDO_SRC_FIXED_DRP_SUPPORT_Pos          (29U)                                         /*!< DRP Support bit position                        */
#define USBPD_PDO_SRC_FIXED_DRP_SUPPORT_Msk          (0x1U << USBPD_PDO_SRC_FIXED_DRP_SUPPORT_Pos) /*!< DRP Support bit mask : 0x20000000               */
#define USBPD_PDO_SRC_FIXED_DRP_NOT_SUPPORTED        (0U)                                          /*!< DRP not supported                               */
#define USBPD_PDO_SRC_FIXED_DRP_SUPPORTED            USBPD_PDO_SRC_FIXED_DRP_SUPPORT_Msk           /*!< DRP supported                                   */

#define USBPD_PDO_SRC_FIXED_USBSUSPEND_Pos           (28U)                                         /*!< USB Suspend Support bit position                */
#define USBPD_PDO_SRC_FIXED_USBSUSPEND_Msk           (0x1U << USBPD_PDO_SRC_FIXED_USBSUSPEND_Pos)  /*!< USB Suspend Support bit mask : 0x10000000       */
#define USBPD_PDO_SRC_FIXED_USBSUSPEND_NOT_SUPPORTED (0U)                                          /*!< USB Suspend not supported                       */
#define USBPD_PDO_SRC_FIXED_USBSUSPEND_SUPPORTED     USBPD_PDO_SRC_FIXED_USBSUSPEND_Msk            /*!< USB Suspend supported                           */

#define USBPD_PDO_SRC_FIXED_EXT_POWER_Pos            (27U)                                         /*!< External Power available bit position           */
#define USBPD_PDO_SRC_FIXED_EXT_POWER_Msk            (0x1U << USBPD_PDO_SRC_FIXED_EXT_POWER_Pos)   /*!< External Power available bit mask : 0x08000000  */
#define USBPD_PDO_SRC_FIXED_EXT_POWER_NOT_AVAILABLE  (0U)                                          /*!< External Power not available                    */
#define USBPD_PDO_SRC_FIXED_EXT_POWER_AVAILABLE      USBPD_PDO_SRC_FIXED_EXT_POWER_Msk             /*!< External Power available                        */

#define USBPD_PDO_SRC_FIXED_USBCOMM_Pos              (26U)                                         /*!< USB Communication Support bit position          */
#define USBPD_PDO_SRC_FIXED_USBCOMM_Msk              (0x1U << USBPD_PDO_SRC_FIXED_USBCOMM_Pos)     /*!< USB Communication Support bit mask : 0x04000000 */
#define USBPD_PDO_SRC_FIXED_USBCOMM_NOT_SUPPORTED    (0U)                                          /*!< USB Communication not supported                 */
#define USBPD_PDO_SRC_FIXED_USBCOMM_SUPPORTED        USBPD_PDO_SRC_FIXED_USBCOMM_Msk               /*!< USB Communication supported                     */

#define USBPD_PDO_SRC_FIXED_DRD_SUPPORT_Pos          (25U)                                         /*!< Dual Role Data Support bit position             */
#define USBPD_PDO_SRC_FIXED_DRD_SUPPORT_Msk          (0x1U << USBPD_PDO_SRC_FIXED_DRD_SUPPORT_Pos) /*!< Dual Role Data Support bit mask : 0x02000000    */
#define USBPD_PDO_SRC_FIXED_DRD_NOT_SUPPORTED        (0U)                                          /*!< Dual Role Data not supported                    */
#define USBPD_PDO_SRC_FIXED_DRD_SUPPORTED            USBPD_PDO_SRC_FIXED_DRD_SUPPORT_Msk           /*!< Dual Role Data supported                        */

#if defined(USBPD_REV30_SUPPORT)
#define USBPD_PDO_SRC_FIXED_UNCHUNK_SUPPORT_Pos      (24U)                                            /*!< Unchunked Extended Messages Support bit position             */
#define USBPD_PDO_SRC_FIXED_UNCHUNK_SUPPORT_Msk      (0x1U << USBPD_PDO_SRC_FIXED_UNCHUNK_SUPPORT_Pos)/*!< Unchunked Extended Messages Support bit mask : 0x01000000    */
#define USBPD_PDO_SRC_FIXED_UNCHUNK_NOT_SUPPORTED    (0U)                                             /*!< Unchunked Extended Messages not supported                    */
#define USBPD_PDO_SRC_FIXED_UNCHUNK_SUPPORTED        USBPD_PDO_SRC_FIXED_UNCHUNK_SUPPORT_Msk          /*!< Unchunked Extended Messages supported                        */
#endif /* USBPD_REV30_SUPPORT */

#define USBPD_PDO_SRC_FIXED_PEAKCURRENT_Pos          (20U)                                                             /*!< Peak Current info bits position            */
#define USBPD_PDO_SRC_FIXED_PEAKCURRENT_Msk          (0x3U << USBPD_PDO_SRC_FIXED_PEAKCURRENT_Pos)                     /*!< Peak Current info bits mask : 0x00300000   */
#define USBPD_PDO_SRC_FIXED_PEAKCURRENT_EQUAL        (USBPD_CORE_PDO_PEAKEQUAL << USBPD_PDO_SRC_FIXED_PEAKCURRENT_Pos) /*!< Peak Current info : Equal to Ioc           */
#define USBPD_PDO_SRC_FIXED_PEAKCURRENT_OVER1        (USBPD_CORE_PDO_PEAKOVER1 << USBPD_PDO_SRC_FIXED_PEAKCURRENT_Pos) /*!< Peak Current info : Overload Cap 1         */
#define USBPD_PDO_SRC_FIXED_PEAKCURRENT_OVER2        (USBPD_CORE_PDO_PEAKOVER2 << USBPD_PDO_SRC_FIXED_PEAKCURRENT_Pos) /*!< Peak Current info : Overload Cap 2         */
#define USBPD_PDO_SRC_FIXED_PEAKCURRENT_OVER3        (USBPD_CORE_PDO_PEAKOVER3 << USBPD_PDO_SRC_FIXED_PEAKCURRENT_Pos) /*!< Peak Current info : Overload Cap 3         */

#define USBPD_PDO_SRC_FIXED_VOLTAGE_Pos              (10U)                                            /*!< Voltage in 50 mV units bits position               */
#define USBPD_PDO_SRC_FIXED_VOLTAGE_Msk              (0x3FFU << USBPD_PDO_SRC_FIXED_VOLTAGE_Pos)      /*!< Voltage in 50 mV units bits mask : 0x000FFC00      */

#define USBPD_PDO_SRC_FIXED_MAX_CURRENT_Pos          (0U)                                             /*!< Max current in 10 mA units bits position           */
#define USBPD_PDO_SRC_FIXED_MAX_CURRENT_Msk          (0x3FFU << USBPD_PDO_SRC_FIXED_MAX_CURRENT_Pos)  /*!< Max current in 10 mA units bits mask : 0x000003FF  */

/* Source Variable type PDO elements */
#define USBPD_PDO_SRC_VARIABLE_MAX_VOLTAGE_Pos       (20U)                                              /*!< Max Voltage in 50 mV units bits position           */
#define USBPD_PDO_SRC_VARIABLE_MAX_VOLTAGE_Msk       (0x3FFU << USBPD_PDO_SRC_VARIABLE_MAX_VOLTAGE_Pos) /*!< Max Voltage in 50 mV units bits mask : 0x3FF00000  */

#define USBPD_PDO_SRC_VARIABLE_MIN_VOLTAGE_Pos       (10U)                                              /*!< Max Voltage in 50 mV units bits position           */
#define USBPD_PDO_SRC_VARIABLE_MIN_VOLTAGE_Msk       (0x3FFU << USBPD_PDO_SRC_VARIABLE_MIN_VOLTAGE_Pos) /*!< Max Voltage in 50 mV units bits mask : 0x000FFC00  */

#define USBPD_PDO_SRC_VARIABLE_MAX_CURRENT_Pos       (0U)                                               /*!< Max current in 10 mA units bits position           */
#define USBPD_PDO_SRC_VARIABLE_MAX_CURRENT_Msk       (0x3FFU << USBPD_PDO_SRC_VARIABLE_MAX_CURRENT_Pos) /*!< Max current in 10 mA units bits mask : 0x000003FF  */

/* Source Battery type PDO elements */
#define USBPD_PDO_SRC_BATTERY_MAX_VOLTAGE_Pos        (20U)                                              /*!< Max Voltage in 50 mV units bits position           */
#define USBPD_PDO_SRC_BATTERY_MAX_VOLTAGE_Msk        (0x3FFU << USBPD_PDO_SRC_BATTERY_MAX_VOLTAGE_Pos)  /*!< Max Voltage in 50 mV units bits mask : 0x3FF00000  */

#define USBPD_PDO_SRC_BATTERY_MIN_VOLTAGE_Pos        (10U)                                              /*!< Max Voltage in 50 mV units bits position           */
#define USBPD_PDO_SRC_BATTERY_MIN_VOLTAGE_Msk        (0x3FFU << USBPD_PDO_SRC_BATTERY_MIN_VOLTAGE_Pos)  /*!< Max Voltage in 50 mV units bits mask : 0x000FFC00  */

#define USBPD_PDO_SRC_BATTERY_MAX_POWER_Pos          (0U)                                               /*!< Max allowable power in 250mW units bits position          */
#define USBPD_PDO_SRC_BATTERY_MAX_POWER_Msk          (0x3FFU << USBPD_PDO_SRC_BATTERY_MAX_POWER_Pos)    /*!< Max allowable power in 250mW units bits mask : 0x000003FF */

/* Sink Fixed type PDO elements */
#define USBPD_PDO_SNK_FIXED_DRP_SUPPORT_Pos          (29U)                                              /*!< DRP Support bit position                        */
#define USBPD_PDO_SNK_FIXED_DRP_SUPPORT_Msk          (0x1U << USBPD_PDO_SNK_FIXED_DRP_SUPPORT_Pos)      /*!< DRP Support bit mask : 0x20000000               */
#define USBPD_PDO_SNK_FIXED_DRP_NOT_SUPPORTED        (0U)                                               /*!< DRP not supported                               */
#define USBPD_PDO_SNK_FIXED_DRP_SUPPORTED            USBPD_PDO_SNK_FIXED_DRP_SUPPORT_Msk                /*!< DRP supported                                   */

#define USBPD_PDO_SNK_FIXED_HIGHERCAPAB_Pos           (28U)                                             /*!< Higher capability support bit position          */
#define USBPD_PDO_SNK_FIXED_HIGHERCAPAB_Msk           (0x1U << USBPD_PDO_SNK_FIXED_HIGHERCAPAB_Pos)     /*!< Higher capability support bit mask : 0x10000000 */
#define USBPD_PDO_SNK_FIXED_HIGHERCAPAB_NOT_SUPPORTED (0U)                                              /*!< Higher capability not supported                 */
#define USBPD_PDO_SNK_FIXED_HIGHERCAPAB_SUPPORTED     USBPD_PDO_SNK_FIXED_HIGHERCAPAB_Msk               /*!< Higher capability supported                     */

#define USBPD_PDO_SNK_FIXED_EXT_POWER_Pos            (27U)                                                     /*!< External Power available bit position           */
#define USBPD_PDO_SNK_FIXED_EXT_POWER_Msk            (0x1U << USBPD_PDO_SNK_FIXED_EXT_POWER_Pos)               /*!< External Power available bit mask : 0x08000000  */
#define USBPD_PDO_SNK_FIXED_EXT_POWER_NOT_AVAILABLE  (0U)                                                      /*!< External Power not available                    */
#define USBPD_PDO_SNK_FIXED_EXT_POWER_AVAILABLE      USBPD_PDO_SNK_FIXED_EXT_POWER_Msk                         /*!< External Power available                        */

#define USBPD_PDO_SNK_FIXED_USBCOMM_Pos              (26U)                                                     /*!< USB Communication Support bit position          */
#define USBPD_PDO_SNK_FIXED_USBCOMM_Msk              (0x1U << USBPD_PDO_SNK_FIXED_USBCOMM_Pos)                 /*!< USB Communication Support bit mask : 0x04000000 */
#define USBPD_PDO_SNK_FIXED_USBCOMM_NOT_SUPPORTED    (0U)                                                      /*!< USB Communication not supported                 */
#define USBPD_PDO_SNK_FIXED_USBCOMM_SUPPORTED        USBPD_PDO_SNK_FIXED_USBCOMM_Msk                           /*!< USB Communication supported                     */

#define USBPD_PDO_SNK_FIXED_DRD_SUPPORT_Pos          (25U)                                                     /*!< Dual Role Data Support bit position             */
#define USBPD_PDO_SNK_FIXED_DRD_SUPPORT_Msk          (0x1U << USBPD_PDO_SNK_FIXED_DRD_SUPPORT_Pos)             /*!< Dual Role Data Support bit mask : 0x02000000    */
#define USBPD_PDO_SNK_FIXED_DRD_NOT_SUPPORTED        (0U)                                                      /*!< Dual Role Data not supported                    */
#define USBPD_PDO_SNK_FIXED_DRD_SUPPORTED            USBPD_PDO_SNK_FIXED_DRD_SUPPORT_Msk                       /*!< Dual Role Data supported                        */

#if defined(USBPD_REV30_SUPPORT)
#define USBPD_PDO_SNK_FIXED_FRS_SUPPORT_Pos          (23U)                                                     /*!< Fast Role Swap required Current bit position             */
#define USBPD_PDO_SNK_FIXED_FRS_SUPPORT_Msk          (0x3U << USBPD_PDO_SNK_FIXED_FRS_SUPPORT_Pos)             /*!< Fast Role Swap required Current bit mask : 0x01800000    */
#define USBPD_PDO_SNK_FIXED_FRS_NOT_SUPPORTED        (0U)                                                      /*!< Fast Role Swap not supported                             */
#define USBPD_PDO_SNK_FIXED_FRS_DEFAULT              (USBPD_CORE_PDO_FRS_DEFAULT_USB_POWER << USBPD_PDO_SNK_FIXED_FRS_SUPPORT_Pos)  /*!< Fast Role Swap required default USB power  */
#define USBPD_PDO_SNK_FIXED_FRS_1_5A                 (USBPD_CORE_PDO_FRS_1_5A_5V << USBPD_PDO_SNK_FIXED_FRS_SUPPORT_Pos)            /*!< Fast Role Swap 1.5A at 5V                  */
#define USBPD_PDO_SNK_FIXED_FRS_3A                   (USBPD_CORE_PDO_FRS_3A_5V << USBPD_PDO_SNK_FIXED_FRS_SUPPORT_Pos)              /*!< Fast Role Swap 3A at 5V                    */
#endif /* USBPD_REV30_SUPPORT */

#define USBPD_PDO_SNK_FIXED_VOLTAGE_Pos              (10U)                                                     /*!< Voltage in 50 mV units bits position               */
#define USBPD_PDO_SNK_FIXED_VOLTAGE_Msk              (0x3FFU << USBPD_PDO_SNK_FIXED_VOLTAGE_Pos)               /*!< Voltage in 50 mV units bits mask : 0x000FFC00      */

#define USBPD_PDO_SNK_FIXED_OP_CURRENT_Pos           (0U)                                                      /*!< Operational current in 10 mA units bits position           */
#define USBPD_PDO_SNK_FIXED_OP_CURRENT_Msk           (0x3FFU << USBPD_PDO_SNK_FIXED_OP_CURRENT_Pos)            /*!< Operational current in 10 mA units bits mask : 0x000003FF  */

/**
  * @}
  */

/**
  * @brief Status of VSafe
  * @{
  */
typedef enum
{
  USBPD_VSAFE_0V,           /*!< USBPD VSAFE0V   */
  USBPD_VSAFE_5V,           /*!< USBPD VSAFE5V   */
}
USBPD_VSAFE_StatusTypeDef;
/**
  * @}
  */

/**
  * @brief USB Power Delivery Status structures definition
  */
typedef enum
{
  USBPD_OK,
  USBPD_NOTSUPPORTED,
  USBPD_ERROR,
  USBPD_BUSY,
  USBPD_TIMEOUT,

  /* PRL status */
  USBPD_PRL_GOODCRC,
  USBPD_PRL_DISCARDED,
  USBPD_PRL_SOFTRESET,
  USBPD_PRL_CABLERESET,
#if defined(USBPD_REV30_SUPPORT)
  USBPD_PRL_SNKTX,
#endif /* USBPD_REV30_SUPPORT */

  /* Message repply */
  USBPD_ACCEPT,
  USBPD_GOTOMIN,
  USBPD_REJECT,
  USBPD_WAIT,
  USBPD_NAK,
  USBPD_ACK,

  USBPD_FAIL,
  USBPD_RXEVENT_SOP,
  USBPD_RXEVENT_SOP1,
  USBPD_RXEVENT_SOP2,
  USBPD_NOEVENT,
  USBPD_DISCARDRX,

  /* Stack initialization errors  */
  USBPD_MALLOCERROR,         /*<! Malloc error during CORE handles creation                                      */
  USBPD_INVALID_PORT_NUMBER, /*<! Exceed the maximum of supported ports by the stack (@ref USBPD_MAXPORT_COUNT)  */

  USPD_ERROR_CALLBACKMISSING,
}
USBPD_StatusTypeDef;

/**
  * @brief USB PD CC lines structures definition
  */
#define CCNONE                          0x00u
#define CC1                             0x01u
#define CC2                             0x02u

typedef uint32_t CCxPin_TypeDef;


/** @defgroup USBPD_SpecRev_TypeDef USB PD Specification Revision structure definition
  * @brief  USB PD Specification Revision structure definition
  * @{
  */
#define USBPD_SPECIFICATION_REV1        0x00u  /*!< Revision 1.0      */
#define USBPD_SPECIFICATION_REV2        0x01u  /*!< Revision 2.0      */
#define USBPD_SPECIFICATION_REV3        0x02u  /*!< Revision 3.0      */

typedef uint32_t USBPD_SpecRev_TypeDef;
/**
  * @}
  */

/**
  * @brief  USB PD Control Message Types structure definition
  *
  */
typedef enum
{
  USBPD_CONTROLMSG_GOODCRC               = 0x01U,  /*!< GoodCRC Control Message         */
  USBPD_CONTROLMSG_GOTOMIN               = 0x02U,  /*!< GotoMin Control Message         */
  USBPD_CONTROLMSG_ACCEPT                = 0x03U,  /*!< Accept Control Message          */
  USBPD_CONTROLMSG_REJECT                = 0x04U,  /*!< Reject Control Message          */
  USBPD_CONTROLMSG_PING                  = 0x05U,  /*!< Ping Control Message            */
  USBPD_CONTROLMSG_PS_RDY                = 0x06U,  /*!< PS_RDY Control Message          */
  USBPD_CONTROLMSG_GET_SRC_CAP           = 0x07U,  /*!< Get_Source_Cap Control Message  */
  USBPD_CONTROLMSG_GET_SNK_CAP           = 0x08U,  /*!< Get_Sink_Cap Control Message    */
  USBPD_CONTROLMSG_DR_SWAP               = 0x09U,  /*!< DR_Swap Control Message         */
  USBPD_CONTROLMSG_PR_SWAP               = 0x0AU,  /*!< PR_Swap Control Message         */
  USBPD_CONTROLMSG_VCONN_SWAP            = 0x0BU,  /*!< VCONN_Swap Control Message      */
  USBPD_CONTROLMSG_WAIT                  = 0x0CU,  /*!< Wait Control Message            */
  USBPD_CONTROLMSG_SOFT_RESET            = 0x0DU,  /*!< Soft_Reset Control Message      */
#if defined(USBPD_REV30_SUPPORT)
  USBPD_CONTROLMSG_NOT_SUPPORTED         = 0x10U,  /*!< Not supported                   */
  USBPD_CONTROLMSG_GET_SRC_CAPEXT        = 0x11U,  /*!< Get source capability extended  */
  USBPD_CONTROLMSG_GET_STATUS            = 0x12U,  /*!< Get status                      */
  USBPD_CONTROLMSG_FR_SWAP               = 0x13U,  /*!< Fast role swap                  */
  USBPD_CONTROLMSG_GET_PPS_STATUS        = 0x14U,  /*!< Get PPS Status                  */
  USBPD_CONTROLMSG_GET_COUNTRY_CODES     = 0x15U,  /*!< Get Country codes               */
#if defined(USBPDCORE_SNK_CAPA_EXT)
  USBPD_CONTROLMSG_GET_SNK_CAPEXT        = 0x16U,  /*!< Get Sink Capability extended    */
#endif /* USBPDCORE_SNK_CAPA_EXT */
#endif /* USBPD_REV30_SUPPORT */
} USBPD_ControlMsg_TypeDef;

/**
  * @brief  USB PD Data Message Types structure definition
  *
  */
typedef enum
{
  USBPD_DATAMSG_SRC_CAPABILITIES         = 0x01U,  /*!< Source Capabilities Data Message  */
  USBPD_DATAMSG_REQUEST                  = 0x02U,  /*!< Request Data Message              */
  USBPD_DATAMSG_BIST                     = 0x03U,  /*!< BIST Data Message                 */
  USBPD_DATAMSG_SNK_CAPABILITIES         = 0x04U,  /*!< Sink_Capabilities Data Message    */
#if defined(USBPD_REV30_SUPPORT)
  USBPD_DATAMSG_BATTERY_STATUS           = 0x05U,  /*!< Battery status                    */
  USBPD_DATAMSG_ALERT                    = 0x06U,  /*!< Alert                             */
  USBPD_DATAMSG_GET_COUNTRY_INFO         = 0x07U,  /*!< Get country info                  */
#endif /* USBPD_REV30_SUPPORT */
  USBPD_DATAMSG_VENDOR_DEFINED           = 0x0Fu   /*!< Vendor_Defined Data Message       */
} USBPD_DataMsg_TypeDef;

/**
  * @brief Sink CC pins Multiple Source Current Advertisements
  */
#define vRd_Undefined     0x00u    /*!< Port Power Role Source   */
#define vRd_USB           0x01u    /*!< Default USB Power   */
#define vRd_1_5A          0x02u    /*!< USB Type-C Current @ 1.5 A   */
#define vRd_3_0A          0x03u    /*!< USB Type-C Current @ 3 A   */

typedef uint32_t CAD_SNK_Source_Current_Adv_Typedef;


/**
  * @brief Sink CC pins Multiple Source Current Advertisements
  */
#define vRp_Default             0x00u    /*!< Default USB Power   */
#define vRp_1_5A                0x01u    /*!< USB Type-C Current @ 1.5 A   */
#define vRp_3_0A                0x02u    /*!< USB Type-C Current @ 3 A   */

typedef uint32_t CAD_RP_Source_Current_Adv_Typedef;

/**
  * @brief USB PD SOP Message Types Structure definition
  */
#define USBPD_SOPTYPE_SOP            0u     /*!< SOP*  MESSAGES               */
#define USBPD_SOPTYPE_SOP1           1u     /*!< SOP'  MESSAGES               */
#define USBPD_SOPTYPE_SOP2           2u     /*!< SOP'' MESSAGES               */
#define USBPD_SOPTYPE_SOP1_DEBUG     3u     /*!< SOP'  DEBUG_MESSAGES         */
#define USBPD_SOPTYPE_SOP2_DEBUG     4u     /*!< SOP'' DEBUG_MESSAGES         */
#define USBPD_SOPTYPE_HARD_RESET     5u     /*!< HARD RESET MESSAGE           */
#define USBPD_SOPTYPE_CABLE_RESET    6u     /*!< CABLE RESET MESSAGE          */
#define USBPD_SOPTYPE_BIST_MODE_2    7u     /*!< BIST_MODE2 MESSAGE           */
#define USBPD_SOPTYPE_INVALID        0xFFu  /*!< Invalid type                 */
#define USBPD_SOPType_TypeDef uint8_t

/**
  * @brief USB funtionnal state Types enum definition
  *
  */
typedef enum
{
  USBPD_DISABLE = 0U,
  USBPD_ENABLE = !USBPD_DISABLE
} USBPD_FunctionalState;

/**
  * @brief  USB PD Extended Message Types structure definition
  *
  */
#define USBPD_EXT_NONE                  0x00u
#define USBPD_EXT_SOURCE_CAPABILITIES   0x01u  /*!< sent by Source or Dual-Role Power    - SOP only  */
#define USBPD_EXT_STATUS                0x02u  /*!< sent by Source                       - SOP only  */
#define USBPD_EXT_GET_BATTERY_CAP       0x03u  /*!< sent by Source or Sink               - SOP only  */
#define USBPD_EXT_GET_BATTERY_STATUS    0x04u  /*!< sent by Source or Sink               - SOP only  */
#define USBPD_EXT_BATTERY_CAPABILITIES  0x05u  /*!< sent by Source or Sink               - SOP only  */
#define USBPD_EXT_GET_MANUFACTURER_INFO 0x06u  /*!< sent by Source or Sink or Cable Plug - SOP*      */
#define USBPD_EXT_MANUFACTURER_INFO     0x07u  /*!< sent by Source or Sink or Cable Plug - SOP*      */
#define USBPD_EXT_SECURITY_REQUEST      0x08u  /*!< sent by Source or Sink               - SOP*      */
#define USBPD_EXT_SECURITY_RESPONSE     0x09u  /*!< sent by Source or Sink or Cable Plug - SOP*      */
#define USBPD_EXT_FIRM_UPDATE_REQUEST   0x0Au  /*!< sent by Source or Sink               - SOP*      */
#define USBPD_EXT_FIRM_UPDATE_RESPONSE  0x0Bu  /*!< sent by Source or Sink or Cable Plug - SOP*      */
#define USBPD_EXT_PPS_STATUS            0x0Cu  /*!< sent by Source                       - SOP only  */
#define USBPD_EXT_COUNTRY_INFO          0x0Du  /*!< sent by Source or Sink               - SOP only  */
#define USBPD_EXT_COUNTRY_CODES         0x0Eu  /*!< sent by Source or Sink               - SOP only  */
#if defined(USBPDCORE_SNK_CAPA_EXT)
#define USBPD_EXT_SINK_CAPABILITIES     0x0Fu  /*!< sent by Sink or Dual-Role Power      - SOP only  */
#endif /* USBPDCORE_SNK_CAPA_EXT */

typedef uint8_t USBPD_ExtendedMsg_TypeDef;

/** @defgroup USBPD_CORE_PDO_Type_TypeDef PDO type definition
  * @brief  PDO type values in PDO definition
  * @{
  */
#define USBPD_CORE_PDO_TYPE_FIXED       0x00u            /*!< Fixed Supply PDO                             */
#define USBPD_CORE_PDO_TYPE_BATTERY     0x01u            /*!< Battery Supply PDO                           */
#define USBPD_CORE_PDO_TYPE_VARIABLE    0x02u            /*!< Variable Supply (non-battery) PDO            */
#if defined(USBPD_REV30_SUPPORT) && defined(USBPDCORE_PPS)
#define USBPD_CORE_PDO_TYPE_APDO        0x03u            /*!< Augmented Power Data Object (APDO)           */
#endif /*_USBPD_REV30_SUPPORT && PPS*/

typedef uint32_t USBPD_CORE_PDO_Type_TypeDef;
/**
  * @}
  */

/** @defgroup USBPD_CORE_POWER_Type_TypeDef USB-PD power state
  * @brief  USB Power state
  * @{
  */
#define USBPD_POWER_NO                  0x0u /*!< No power contract                      */
#define USBPD_POWER_DEFAULT5V           0x1u /*!< Default 5V                             */
#define USBPD_POWER_IMPLICITCONTRACT    0x2u /*!< Implicit contract                      */
#define USBPD_POWER_EXPLICITCONTRACT    0x3u /*!< Explicit contract                      */
#define USBPD_POWER_TRANSITION          0x4u /*!< Power transition                       */

typedef uint32_t USBPD_POWER_StateTypedef;
/**
  * @}
  */

/** @defgroup USBPD_CORE_PDO_PeakCurr_TypeDef Peak Current Capability type
  * @brief  Fixed Power Source Peak Current Capability type structure definition (Source)
  * @{
  */
#define   USBPD_CORE_PDO_PEAKEQUAL 0x00u                  /*!< Peak current equals                          */
#define   USBPD_CORE_PDO_PEAKOVER1 0x01u                  /*!< Overload Capabilities:
  1. Peak current equals 150% IOC for 1ms @ 5% duty cycle (low current equals 97% IOC for 19ms)
  2. Peak current equals 125% IOC for 2ms @ 10% duty cycle (low current equals 97% IOC for 18ms)
  3. Peak current equals 110% IOC for 10ms @ 50% duty cycle (low current equals 90% IOC for 10ms */
#define   USBPD_CORE_PDO_PEAKOVER2 0x02U                  /*!< Overload Capabilities:
  1. Peak current equals 200% IOC for 1ms @ 5% duty cycle (low current equals 95% IOC for 19ms)
  2. Peak current equals 150% IOC for 2ms @ 10% duty cycle (low current equals 94% IOC for 18ms)
  3. Peak current equals 125% IOC for 10ms @ 50% duty cycle (low current equals 75% IOC for 10ms)*/
#define   USBPD_CORE_PDO_PEAKOVER3 0x03u                  /*!< Overload Capabilities:
  1. Peak current equals 200% IOC for 1ms @ 5% duty cycle (low current equals 95% IOC for 19ms)
  2. Peak current equals 175% IOC for 2ms @ 10% duty cycle (low current equals 92% IOC for 18ms)
  3. Peak current equals 150% IOC for 10ms @ 50% duty cycle (low current equals 50% IOC for 10ms)*/

typedef uint32_t USBPD_CORE_PDO_PeakCurr_TypeDef;
/**
  * @}
  */


/** @defgroup USBPD_NotifyEventValue_TypeDef USBPD notification event type value
  * @brief notification envent used inside PE callbacks (USBPD_PE_NotifyDPM) to inform DPM
  * @{
  */
typedef enum
{
  USBPD_NOTIFY_REQUEST_ACCEPTED        = 1U,
  USBPD_NOTIFY_REQUEST_REJECTED        = 2U,
  USBPD_NOTIFY_REQUEST_WAIT            = 3U,
  USBPD_NOTIFY_REQUEST_GOTOMIN         = 4U,
  USBPD_NOTIFY_GETSNKCAP_SENT          = 5U,
  USBPD_NOTIFY_GETSNKCAP_RECEIVED      = 6U,
  USBPD_NOTIFY_GETSNKCAP_ACCEPTED      = 7U,
  USBPD_NOTIFY_GETSNKCAP_REJECTED      = 8U,
  USBPD_NOTIFY_GETSNKCAP_TIMEOUT       = 9U,
  USBPD_NOTIFY_SNKCAP_SENT             = 10U,
  USBPD_NOTIFY_GETSRCCAP_SENT          = 11U,
  USBPD_NOTIFY_GETSRCCAP_RECEIVED      = 12U,
  USBPD_NOTIFY_GETSRCCAP_ACCEPTED      = 13U,
  USBPD_NOTIFY_GETSRCCAP_REJECTED      = 14U,
  USBPD_NOTIFY_SRCCAP_SENT             = 15U,
  USBPD_NOTIFY_POWER_EXPLICIT_CONTRACT = 16U,
  USBPD_NOTIFY_POWER_SRC_READY         = 17U,
  USBPD_NOTIFY_POWER_SNK_READY         = 18U,
  USBPD_NOTIFY_POWER_SNK_STOP          = 19U,
  USBPD_NOTIFY_POWER_SWAP_TO_SNK_DONE  = 20U,
  USBPD_NOTIFY_POWER_SWAP_TO_SRC_DONE  = 21U,
  USBPD_NOTIFY_POWER_SWAP_REJ          = 22U,
  USBPD_NOTIFY_POWER_SWAP_NOT_SUPPORTED = 23U,
  USBPD_NOTIFY_RESISTOR_ASSERT_RP      = 24U,
  USBPD_NOTIFY_RESISTOR_ASSERT_RD      = 25U,
  USBPD_NOTIFY_CABLERESET_REQUESTED    = 26U,
  USBPD_NOTIFY_PROTOCOL_ERROR          = 27U,
  USBPD_NOTIFY_VCONN_SWAP_NOT_COMPLETED = 28U,
  /*USBPD_NOTIFY_SVDM_TIMEOUT            =29U,*/
  USBPD_NOTIFY_HARDRESET_RX            = 30U,
  USBPD_NOTIFY_HARDRESET_TX            = 31U,
  USBPD_NOTIFY_STATE_SNK_READY         = 32U,
  USBPD_NOTIFY_STATE_SRC_DISABLED      = 33U,
  USBPD_NOTIFY_DATAROLESWAP_SENT       = 34U,
  USBPD_NOTIFY_DATAROLESWAP_RECEIVED   = 35U,
  USBPD_NOTIFY_DATAROLESWAP_UFP        = 36U,
  USBPD_NOTIFY_DATAROLESWAP_DFP        = 37U,
  USBPD_NOTIFY_DATAROLESWAP_WAIT       = 38U,
  USBPD_NOTIFY_DATAROLESWAP_REJECTED   = 39U,
  USBPD_NOTIFY_DATAROLESWAP_NOT_SUPPORTED = 40U,
  USBPD_NOTIFY_GOTOMIN_SENT            = 41U,
  USBPD_NOTIFY_GOTOMIN_POWERREADY      = 42U,
  USBPD_NOTIFY_SNK_GOTOMIN             = 43U,
  USBPD_NOTIFY_SNK_GOTOMIN_READY       = 44U,
  USBPD_NOTIFY_REQUEST_ERROR           = 45U,
  USBPD_NOTIFY_REQUEST_COMPLETE        = 46U,
  USBPD_NOTIFY_REQUEST_CANCELED        = 47U,
  USBPD_NOTIFY_SOFTRESET_SENT          = 48U,
  USBPD_NOTIFY_SOFTRESET_ACCEPTED      = 49U,
  USBPD_NOTIFY_SOFTRESET_RECEIVED      = 50U,
  USBPD_NOTIFY_PING_RECEIVED           = 51U,
  USBPD_NOTIFY_REQUEST_ENTER_MODE      = 52U,
  USBPD_NOTIFY_REQUEST_ENTER_MODE_ACK  = 53U,
  USBPD_NOTIFY_REQUEST_ENTER_MODE_NAK  = 54U,
  USBPD_NOTIFY_REQUEST_ENTER_MODE_BUSY = 55U,
  USBPD_NOTIFY_PD_SPECIFICATION_CHANGE = 56U,
  USBPD_NOTIFY_POWER_SWAP_SENT         = 57U,
  USBPD_NOTIFY_POWER_SWAP_ACCEPTED     = 58U,
  USBPD_NOTIFY_POWER_SWAP_WAIT         = 59U,
  USBPD_NOTIFY_POWER_SWAP_RECEIVED     = 60U,
  USBPD_NOTIFY_VCONN_SWAP_RECEIVED     = 61U,
  USBPD_NOTIFY_VCONN_SWAP_SENT         = 62U,
  USBPD_NOTIFY_VCONN_SWAP_ACCEPTED     = 63U,
  USBPD_NOTIFY_VCONN_SWAP_WAIT         = 64U,
  USBPD_NOTIFY_VCONN_SWAP_REJECTED     = 65U,
  USBPD_NOTIFY_VCONN_SWAP_COMPLETE     = 66U,
  USBPD_NOTIFY_VCONN_SWAP_NOT_SUPPORTED = 67U,
  USBPD_NOTIFY_CTRL_MSG_SENT           = 68U,
  USBPD_NOTIFY_DATA_MSG_SENT           = 69U,
  USBPD_NOTIFY_GET_SRC_CAP_EXT_RECEIVED = 70U,
  USBPD_NOTIFY_SRC_CAP_EXT_RECEIVED    = 71U,
  USBPD_NOTIFY_SRC_CAP_EXT_SENT        = 72U,
  USBPD_NOTIFY_GET_PPS_STATUS_RECEIVED = 73U,
  USBPD_NOTIFY_GET_PPS_STATUS_SENT     = 74U,
  USBPD_NOTIFY_PPS_STATUS_RECEIVED     = 75U,
  USBPD_NOTIFY_PPS_STATUS_SENT         = 76U,
  USBPD_NOTIFY_GET_STATUS_RECEIVED     = 77U,
  USBPD_NOTIFY_STATUS_RECEIVED         = 78U,
  USBPD_NOTIFY_STATUS_SENT             = 79U,
  USBPD_NOTIFY_ALERT_RECEIVED          = 80U,
  USBPD_NOTIFY_VDM_IDENTIFY_RECEIVED   = 81U,
  USBPD_NOTIFY_VDM_CABLE_IDENT_RECEIVED = 82U,
  USBPD_NOTIFY_VDM_SVID_RECEIVED       = 83U,
  USBPD_NOTIFY_VDM_MODE_RECEIVED       = 84U,
  USBPD_NOTIFY_REQUEST_EXIT_MODE       = 85U,
  USBPD_NOTIFY_REQUEST_EXIT_MODE_ACK   = 86U,
  USBPD_NOTIFY_REQUEST_EXIT_MODE_NAK   = 87U,
  USBPD_NOTIFY_REQUEST_EXIT_MODE_BUSY  = 88U,
  USBPD_NOTIFY_MSG_NOT_SUPPORTED       = 89U,
  USBPD_NOTIFY_POWER_STATE_CHANGE      = 90U,
  USBPD_NOTIFY_REQUEST_DISCARDED       = 91U,
  USBPD_NOTIFY_AMS_INTERRUPTED         = 92U,
  USBPD_NOTIFY_ALERT_SENT              = 93U,
  USBPD_NOTIFY_CABLERESET_TX           = 94U,
  USBPD_NOTIFY_PE_DISABLED             = 95U,
  USBPD_NOTIFY_GET_SNK_CAP_EXT_RECEIVED = 96U,
  USBPD_NOTIFY_SNK_CAP_EXT_SENT        = 97U,
  USBPD_NOTIFY_SNK_CAP_EXT_RECEIVED    = 98U,
  USBPD_NOTIFY_DETACH                  = 99U,
  USBPD_NOTIFY_CABLERESET_RX           = 100U,
  USBPD_NOTIFY_BIST_SHARED_TEST_MODE_ENTRY = 101U,
  USBPD_NOTIFY_BIST_SHARED_TEST_MODE_EXIT  = 102U,
  USBPD_NOTIFY_STATE_SRC_READY             = 103U,
  USBPD_NOTIFY_USBSTACK_START              = 104U,
  USBPD_NOTIFY_USBSTACK_STOP               = 105U,
  USBPD_NOTIFY_ALL                     = USBPD_NOTIFY_USBSTACK_STOP + 1U,
} USBPD_NotifyEventValue_TypeDef;
/**
  * @}
  */

/** @defgroup USBPD_CORE_VDM_Exported_Defines USBPD CORE VDM Exported Defines
  * @{
  */
#define MAX_MODES_PER_SVID  6u

/** @defgroup USBPD_CORE_DataInfoType_TypeDef USB CORE Data information type
  * @brief Data Info types used in PE callbacks (USBPD_PE_GetDataInfo and USBPD_PE_SetDataInfo)
  * @{
  */
typedef enum
{
  USBPD_CORE_DATATYPE_SRC_PDO          = 0x00U,      /*!< Handling of port Source PDO (SRC or DRP configuration used only in USBPD_PE_GetDataInfo) */
  USBPD_CORE_DATATYPE_SNK_PDO          = 0x01U,      /*!< Handling of port Sink PDO, requested by get sink capa (SNK or DRP configuration used only in USBPD_PE_GetDataInfo) */
  USBPD_CORE_DATATYPE_RDO_POSITION     = 0x02U,      /*!< Reset the PDO position selected by the sink only (used only in USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_DATATYPE_REQ_VOLTAGE      = 0x03U,      /*!< Get voltage value requested for BIST tests, expect 5V (used only in USBPD_PE_GetDataInfo)                          */
  USBPD_CORE_DATATYPE_RCV_SRC_PDO      = 0x04U,      /*!< Storage of Received Source PDO values (used only in USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_DATATYPE_RCV_SNK_PDO      = 0x05U,      /*!< Storage of Received Sink PDO values (used only in USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_DATATYPE_RCV_REQ_PDO      = 0x06U,      /*!< Storage of Received Sink Request PDO value (SRC or DRP configuration used in USBPD_PE_SetDataInfo)      */
  USBPD_CORE_DATATYPE_REQUEST_DO       = 0x07U,      /*!< Not used - keep for legacy reason                           */
  USBPD_CORE_EXTENDED_CAPA             = 0x08U,      /*!< Source Extended capability message content (used in USBPD_PE_GetDataInfo and USBPD_PE_SetDataInfo) */
  USBPD_CORE_INFO_STATUS               = 0x09U,      /*!< Information status message content (used in USBPD_PE_GetDataInfo and USBPD_PE_SetDataInfo) */
  USBPD_CORE_PPS_STATUS                = 0x0AU,      /*!< PPS Status message content (used in USBPD_PE_GetDataInfo and USBPD_PE_SetDataInfo) */
  USBPD_CORE_ALERT,                       /*!< Storing of received Alert message content (used only in USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_GET_MANUFACTURER_INFO,       /*!< Storing of received Get Manufacturer info message content (used only in USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_MANUFACTURER_INFO,           /*!< Retrieve of Manufacturer info message content (used in USBPD_PE_GetDataInfo and USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_GET_BATTERY_STATUS,          /*!< Storing of received Get Battery status message content (used only in USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_BATTERY_STATUS,              /*!< Retrieve of Battery status message content (used in USBPD_PE_GetDataInfo and USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_GET_BATTERY_CAPABILITY,      /*!< Storing of received Get Battery capability message content (used only in USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_BATTERY_CAPABILITY,          /*!< Retrieve of Battery capability message content (used in USBPD_PE_GetDataInfo and USBPD_PE_SetDataInfo)                          */
  USBPD_CORE_UNSTRUCTURED_VDM,            /*!< Not used - keep for legacy reason                                 */
#if defined(USBPDCORE_SNK_CAPA_EXT)
  USBPD_CORE_SNK_EXTENDED_CAPA,           /*!< Storing and retrieve of Sink Extended capability message content (used in USBPD_PE_GetDataInfo and USBPD_PE_SetDataInfo) */
#endif /* USBPDCORE_SNK_CAPA_EXT */
#if defined(USBPDCORE_PECABLE)
  USBPD_CORE_CABLE_GETIDENTITY,       /*!< get the cable identity information (used in USBPD_PE_GetDataInfo) */
  USBPD_CORE_CABLE_GETSTATUS,         /*!< get the cable status information (used in USBPD_PE_GetDataInfo)   */
#endif /* USBPDCORE_PECABLE */
} USBPD_CORE_DataInfoType_TypeDef;
/**
  * @}
  */

/**
  * @}
  */

/**
  * @brief  USB PD Source Fixed Supply Power Data Object Structure definition
  *
  */
typedef struct
{
  uint32_t MaxCurrentIn10mAunits :                                  10u;
  uint32_t VoltageIn50mVunits :                                     10u;
  USBPD_CORE_PDO_PeakCurr_TypeDef PeakCurrent :                     2u;
#if defined(USBPD_REV30_SUPPORT)
  uint32_t Reserved22_23 :                                          2u;
  uint32_t UnchunkedExtendedMessage :                               1u;
#else
  uint32_t Reserved22_24 :                                          3u;
#endif /* USBPD_REV30_SUPPORT */
  uint32_t DataRoleSwap :                                           1u;
  uint32_t USBCommunicationsCapable :                               1u;
  uint32_t ExternallyPowered :                                      1u;
  uint32_t USBSuspendSupported :                                    1u;
  uint32_t DualRolePower :                                          1u;
  USBPD_CORE_PDO_Type_TypeDef FixedSupply :                         2u;
} USBPD_SRCFixedSupplyPDO_TypeDef;

/**
  * @brief  USB PD Sink Fixed Supply Power Data Object Structure definition
  *
  */
typedef struct
{
	uint32_t OperationalCurrentIn10mAunits :   10u;
	uint32_t VoltageIn50mVunits :            	 10u;
#if defined(USBPD_REV30_SUPPORT)
	uint32_t FastRoleSwapRequiredCurrent :     2u;
	uint32_t Reserved20_22 :                   3u;
#else
	uint32_t Reserved20_24 :                   5u;
#endif /* USBPD_REV30_SUPPORT */
	uint32_t DataRoleSwap :                    1u;
	uint32_t USBCommunicationsCapable :        1u;
	uint32_t ExternallyPowered :               1u;
	uint32_t HigherCapability :                1u;
	uint32_t DualRolePower :                   1u;
	uint32_t FixedSupply :                     2u;
} USBPD_SNKFixedSupplyPDO_TypeDef;

/**
  * @brief  USB PD Sink Generic Power Data Object Structure definition
  *
  */
typedef struct
{
  uint32_t Bits_0_10                      : 10u; /*!< Specific Power Capabilities are described by the (A)PDOs in the following sections. */
  uint32_t VoltageIn50mVunits             : 10u; /*!< Maximum Voltage in 50mV units valid for all PDO (not APDO) */
  uint32_t Bits_20_29                     : 10u; /*!< Specific Power Capabilities are described by the (A)PDOs in the following sections. */
  USBPD_CORE_PDO_Type_TypeDef PowerObject : 2u;  /*!< (A) Power Data Object  */
} USBPD_GenericPDO_TypeDef;

/**
  * @brief  USB PD Power Data Object Structure definition
  *
  */
typedef union
{
  uint32_t d32;

  USBPD_GenericPDO_TypeDef            GenericPDO;       /*!< Generic Power Data Object Structure            */

  USBPD_SRCFixedSupplyPDO_TypeDef     SRCFixedPDO;      /*!< Fixed Supply PDO - Source                      */

  USBPD_SNKFixedSupplyPDO_TypeDef     SNKFixedPDO;      /*!< Fixed Supply PDO - Sink                        */

} USBPD_PDO_TypeDef;

/**
  * @brief  USB PD Sink Fixed and Variable Request Data Object Structure definition
  *
  */
typedef struct
{
uint32_t MaxOperatingCurrent10mAunits : /*!< Corresponding to min if GiveBackFlag = 1 */
  10u;
uint32_t OperatingCurrentIn10mAunits :
  10u;
#if defined(USBPD_REV30_SUPPORT)
uint32_t Reserved20_22 :
  3u;
uint32_t UnchunkedExtendedMessage :
  1u;
#else
uint32_t Reserved20_23 :
  4u;
#endif /* USBPD_REV30_SUPPORT */
uint32_t NoUSBSuspend :
  1u;
uint32_t USBCommunicationsCapable :
  1u;
uint32_t CapabilityMismatch :
  1u;
uint32_t GiveBackFlag :
  1u;
uint32_t ObjectPosition :
  3u;
uint32_t Reserved31 :
  1u;
} USBPD_SNKFixedVariableRDO_TypeDef;

/**
  * @brief  USB PD Sink Generic Request Data Object Structure definition
  *
  */
typedef struct
{
#if defined(USBPD_REV30_SUPPORT)
  uint32_t Bits_0_22                    : 23; /*!< Bits 0 to 22 of RDO                                      */
  uint32_t UnchunkedExtendedMessage     : 1u;  /*!< Unchunked Extended Messages Supported                    */
#else
  uint32_t Bits_0_23                    : 24u;  /*!< Bits 0 to 23 of RDO                                     */
#endif /* USBPD_REV30_SUPPORT */
  uint32_t NoUSBSuspend                 : 1u;  /*!< No USB Suspend                                           */
  uint32_t USBCommunicationsCapable     : 1u;  /*!< USB Communications Capable                               */
  uint32_t CapabilityMismatch           : 1u;  /*!< Capability Mismatch                                      */
  uint32_t Bit_27                       : 1u;  /*!< Reserved  - Shall be set to zero                         */
  uint32_t ObjectPosition               : 3u;  /*!< Object position (000b is Reserved and Shall Not be used) */
  uint32_t Bit_31                       : 1u;  /*!< USB Communications Capable                               */
} USBPD_SNKGenericRDO_TypeDef;

/**
  * @brief  USB PD Sink Request Data Object Structure definition
  *
  */
typedef union
{
  uint32_t d32;

  USBPD_SNKGenericRDO_TypeDef       GenericRDO;       /*!<  Generic Request Data Object Structure           */

  USBPD_SNKFixedVariableRDO_TypeDef FixedVariableRDO; /*!< Fixed and Variable Request Data Object Structure */

} USBPD_SNKRDO_TypeDef;

/** @brief  Sink requested power profile Structure definition
  *
  */
typedef struct
{
  uint32_t MaxOperatingCurrentInmAunits;           /*!< Sink board Max operating current in mA units   */
  uint32_t OperatingVoltageInmVunits;              /*!< Sink board operating voltage in mV units       */
  uint32_t MaxOperatingVoltageInmVunits;           /*!< Sink board Max operating voltage in mV units   */
  uint32_t MinOperatingVoltageInmVunits;           /*!< Sink board Min operating voltage in mV units   */
  uint32_t OperatingPowerInmWunits;                /*!< Sink board operating power in mW units         */
  uint32_t MaxOperatingPowerInmWunits;             /*!< Sink board Max operating power in mW units     */
} USBPD_SNKPowerRequest_TypeDef;

/**
  * @}
  */

/**
  * @}
  */

/**
  * @}
  */

/* Exported variables --------------------------------------------------------*/
/* Exported functions --------------------------------------------------------*/

/* Timers */
#define USBPD_T_RECEIVE                      1u     /*!< tReceive: min 0.9ms to max 1.1ms                          */ 
#define USBPD_T_NORESPONSE                   4800u  /*!< tNoResponse: min 4.5s to max 5s                           */ 
#define USBPD_T_SOFTRESET                    15u    /*!< tSoftReset: 15ms                                          */ 
#define USBPD_T_PSHARDRESET                  27u    /*!< tPSHardReset: min 25ms to max 30ms                        */
#define USBPD_T_SINKREQUEST                  100u   /*!< tSinkRequest: min 100ms                                   */
#define USBPD_T_PSTRANSITION                 500u   /*!< tPSTransition: min 450ms to max 550ms                     */
#define USBPD_T_SENDERRESPONSE               27u    /*!< tSenderResponse: min 24ms to max 30ms                     */
#define USBPD_T_TYPECSINKWAITCAP             500u   /*!< tTypeCSinkWaitCap: min 310ms to max 620ms                 */
#define USBPD_T_SRCTRANSITION                30u    /*!< tSrcTransition: min 25ms to max 35ms                      */                          
#define USBPD_SNK_T_SRCRECOVER               2000u  /*!< tSrcRecover for SNK: 2s (less restrictive for SINK tests) */                                 */
#define USBPD_SNK_T_SAFE0V_T2                1000u  /*!< tSafe0V for SNK: 1000 ms                                  */

/* Counters */
#define USBPD_COUNT_HARDRESET               2u    
#define USBPD_COUNT_MSGID                   7u 
#define USBPD_COUNT_RETRY                   2u 

/* Message Header elements */
#define USBPD_MSGHEADER_MSGTYPE_Pos                  (0U)                                                     
#define USBPD_MSGHEADER_MSGTYPE_Msk                  (0x1FU << USBPD_MSGHEADER_MSGTYPE_Pos)                                                               

#define USBPD_MSGHEADER_PORT_DATA_ROLE_Pos           (5U)                                                     
#define USBPD_MSGHEADER_PORT_DATA_ROLE_Msk           (0x1U << USBPD_MSGHEADER_PORT_DATA_ROLE_Pos) 

#define USBPD_MSGHEADER_SPEC_REV_Pos                 (6U)                                                     
#define USBPD_MSGHEADER_SPEC_REV_Msk                 (0x3U << USBPD_MSGHEADER_SPEC_REV_Pos)

#define USBPD_MSGHEADER_PORT_POWER_ROLE_Pos          (8U)                                                     
#define USBPD_MSGHEADER_PORT_POWER_ROLE_Msk          (0x1U << USBPD_MSGHEADER_PORT_POWER_ROLE_Msk)

#define USBPD_MSGHEADER_MSGID_Pos                    (9U)                                                     
#define USBPD_MSGHEADER_MSGID_Msk                    (0x7U << USBPD_MSGHEADER_MSGID_Pos)

#define USBPD_MSGHEADER_DATA_OBJ_NUM_Pos             (12U)                                                     
#define USBPD_MSGHEADER_DATA_OBJ_NUM_Msk             (0x7U << USBPD_MSGHEADER_DATA_OBJ_NUM_Pos)

#define USBPD_MSGHEADER_EXT_Pos                      (15U)                                                     
#define USBPD_MSGHEADER_EXT_Msk                      (0x1U << USBPD_MSGHEADER_EXT_Pos)

typedef struct
{
	uint32_t                       MsgType        : 5u; 
  uint32_t                       PortDataRole   : 1u;
	USBPD_SpecRev_TypeDef          SpecRev        : 2u;
  uint32_t                       PortPowerRole  : 1u;
	uint32_t                       MsgId          : 3u;   
	uint32_t                       DataObjNum     : 3u;  
	uint32_t                       Ext            : 1u;   
}USBPD_MsgHeaderStuct_TypeDef;

typedef union
{
  uint16_t d16;
  USBPD_MsgHeaderStuct_TypeDef   MsgHeaderStruct; 
} USBPD_MsgHeader_TypeDef;

typedef struct
{
	uint32_t                       BitNum;
	uint32_t                       PremblBitNum;
	USBPD_SOPType_TypeDef          SOPType;
	uint32_t                       PayloadSize;
	uint8_t                        Payload[30];
	uint32_t                       CRCValue;
	uint8_t                        EOPFlag;
}USBPD_PHY_Msg_TypeDef;

typedef struct
{    
	USBPD_SOPType_TypeDef          SOPType;
	USBPD_MsgHeader_TypeDef        MsgHeader;	
	uint32_t                       DataObjectValue[7];
}USBPD_Msg_TypeDef;

typedef enum
{
	USBPD_MSG_NULL            = 0x0U,
	USBPD_MSG_HARD_RST        = 0x01U,
	USBPD_MSG_SOFT_RST        = 0x02U,
	USBPD_MSG_GOODCRC         = 0x03U,
	USBPD_MSG_GET_SINK_CAP    = 0x04U,
	USBPD_MSG_ACCEPT          = 0x05U,
	USBPD_MSG_REJECT          = 0x06U,
	USBPD_MSG_WAIT            = 0x07U,
	USBPD_MSG_PS_READY        = 0x08U,
	USBPD_MSG_SRC_CAP         = 0x09U
}USBPD_RcvMsgType_TypeDef;

#ifdef __cplusplus
}
#endif

#endif // USBPD_DEF_H
