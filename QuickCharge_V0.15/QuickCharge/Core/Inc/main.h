/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f3xx_hal.h"
#include "stm32f3xx_ll_adc.h"
#include "stm32f3xx_ll_comp.h"
#include "stm32f3xx_ll_crc.h"
#include "stm32f3xx_ll_dac.h"
#include "stm32f3xx_ll_rcc.h"
#include "stm32f3xx_ll_bus.h"
#include "stm32f3xx_ll_system.h"
#include "stm32f3xx_ll_exti.h"
#include "stm32f3xx_ll_cortex.h"
#include "stm32f3xx_ll_utils.h"
#include "stm32f3xx_ll_pwr.h"
#include "stm32f3xx_ll_dma.h"
#include "stm32f3xx_ll_tim.h"
#include "stm32f3xx_ll_gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "stdio.h"
#include "string.h"
#include "usbpd_def.h"
#include "usbpd_phy_4b5b.h"
#include "usbpd_phy_crc32.h"
#include "usbpd_phy_decode.h"
#include "usbpd_phy_encode.h"
#include "usbpd_msgrcv.h"
#include "usbpd_msgtrans.h"
#include "usbpd_dpm_user.h"
#include "usbpd_sm.h"
#include "usbqc.h"
#include "measure.h"
#include "timer.h"
#include "global.h"
#include "system_def.h"

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define DN_OUT_CTRL1_Pin LL_GPIO_PIN_2
#define DN_OUT_CTRL1_GPIO_Port GPIOE
#define DN_OUT_CTRL2_Pin LL_GPIO_PIN_3
#define DN_OUT_CTRL2_GPIO_Port GPIOE
#define CC1_ENCODE_OUT_Pin LL_GPIO_PIN_0
#define CC1_ENCODE_OUT_GPIO_Port GPIOC
#define CC2_ENCODE_OUT_Pin LL_GPIO_PIN_1
#define CC2_ENCODE_OUT_GPIO_Port GPIOC
#define CC1_DECODE_IN_Pin LL_GPIO_PIN_1
#define CC1_DECODE_IN_GPIO_Port GPIOA
#define CC2_DECODE_IN_Pin LL_GPIO_PIN_3
#define CC2_DECODE_IN_GPIO_Port GPIOA
#define CC1_ADC_IN_Pin LL_GPIO_PIN_6
#define CC1_ADC_IN_GPIO_Port GPIOA
#define CC2_ADC_IN_Pin LL_GPIO_PIN_7
#define CC2_ADC_IN_GPIO_Port GPIOA
#define DN_ADC_IN_Pin LL_GPIO_PIN_4
#define DN_ADC_IN_GPIO_Port GPIOC
#define DP_ADC_IN_Pin LL_GPIO_PIN_5
#define DP_ADC_IN_GPIO_Port GPIOC
#define VBUS_V_Pin LL_GPIO_PIN_0
#define VBUS_V_GPIO_Port GPIOB
#define VBUS_I_Pin LL_GPIO_PIN_9
#define VBUS_I_GPIO_Port GPIOE
#define Key0_Pin LL_GPIO_PIN_12
#define Key0_GPIO_Port GPIOB
#define Key1_Pin LL_GPIO_PIN_13
#define Key1_GPIO_Port GPIOB
#define Key2_Pin LL_GPIO_PIN_14
#define Key2_GPIO_Port GPIOB
#define Key3_Pin LL_GPIO_PIN_15
#define Key3_GPIO_Port GPIOB
#define LED0_Pin LL_GPIO_PIN_9
#define LED0_GPIO_Port GPIOC
#define LED4_Pin LL_GPIO_PIN_8
#define LED4_GPIO_Port GPIOA
#define LED5_Pin LL_GPIO_PIN_9
#define LED5_GPIO_Port GPIOA
#define LED6_Pin LL_GPIO_PIN_10
#define LED6_GPIO_Port GPIOA
#define CC1_COMP1_OUT_Pin LL_GPIO_PIN_11
#define CC1_COMP1_OUT_GPIO_Port GPIOA
#define CC2_COMP2_OUT_Pin LL_GPIO_PIN_12
#define CC2_COMP2_OUT_GPIO_Port GPIOA
#define SWDIO_Pin LL_GPIO_PIN_13
#define SWDIO_GPIO_Port GPIOA
#define LED7_Pin LL_GPIO_PIN_6
#define LED7_GPIO_Port GPIOF
#define SWCLK_Pin LL_GPIO_PIN_14
#define SWCLK_GPIO_Port GPIOA
#define LED1_Pin LL_GPIO_PIN_10
#define LED1_GPIO_Port GPIOC
#define LED2_Pin LL_GPIO_PIN_11
#define LED2_GPIO_Port GPIOC
#define LED3_Pin LL_GPIO_PIN_12
#define LED3_GPIO_Port GPIOC
#define SWO_Pin LL_GPIO_PIN_3
#define SWO_GPIO_Port GPIOB
#define DP_OUT_CTRL1_Pin LL_GPIO_PIN_0
#define DP_OUT_CTRL1_GPIO_Port GPIOE
#define DP_OUT_CTRL2_Pin LL_GPIO_PIN_1
#define DP_OUT_CTRL2_GPIO_Port GPIOE
/* USER CODE BEGIN Private defines */
void IncMsCount(void);
uint32_t GetMsCount(void);
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
