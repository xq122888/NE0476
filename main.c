/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
/* Includes ------------------------------------------------------------------*/
#include "main.h"//

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "usbpd_sm_setting.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

TIM_HandleTypeDef htim4;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_COMP1_Init(void);
static void MX_DAC_Init(void);
static void MX_ADC2_Init(void);
static void MX_ADC3_Init(void);
static void MX_COMP2_Init(void);
static void MX_TIM3_Init(void);
static void MX_CRC_Init(void);
static void MX_TIM4_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
#define ITM_Port8(n)    (*((volatile unsigned char *)(0xE0000000+4*n)))
#define ITM_Port16(n)   (*((volatile unsigned short*)(0xE0000000+4*n)))
#define ITM_Port32(n)   (*((volatile unsigned long *)(0xE0000000+4*n)))

#define DEMCR           (*((volatile unsigned long *)(0xE000EDFC)))
#define TRCENA          0x01000000

struct __FILE { int handle; /* Add whatever needed */ };
FILE __stdout;
FILE __stdin;

int fputc(int ch, FILE *f) {
  if (DEMCR & TRCENA) {
    while (ITM_Port32(0) == 0);
    ITM_Port8(0) = ch;
  }
  return(ch);
}


/* global parameteres */ 
bool  gNewMsgFlag;        
uint8_t  gBit[500];
uint32_t gBitNum;
uint8_t  gData5b[5];

USBPD_PHY_Msg_TypeDef gPhyRcvMsg;
USBPD_PHY_Msg_TypeDef gPhyTransMsg;
USBPD_Msg_TypeDef gPrlRcvMsg;
USBPD_Msg_TypeDef gPrlTransMsg;
uint32_t gSRCFixedPDONum;
USBPD_PDO_TypeDef gSRCFixedPDOList[7];
USBPD_PDO_TypeDef gSNKFixedPDOList[SNK_FIXED_PDO_NUM] = {0x19096, 0x1003C096};
USBPD_SNKRDO_TypeDef gRdo;
uint8_t  gTransMsgID;
uint8_t  gRcvMsgID;
uint8_t  gHardRstCnt;
uint8_t  gSoftRstCnt;
bool     gExplicitFlag;
bool     gWaitFlag;
bool     gNewReqFlag;
bool     gPDEn;
bool     gQcAdapter;

uint32_t voltage, allowablepower;
uint32_t srcFixPDOValue[7] = {0x0A01912C, 0x0002D12C, 0x0003C12C, 0x0004B12C, 0x00064145};
uint32_t sinkFixRDOValue[7] = {0x1305B12C};
USBPD_SRCFixedSupplyPDO_TypeDef srcFixPDO[7];
uint32_t gVbus;
USBPD_RcvMsgType_TypeDef gRcvMsgType;


StateId gPreviousState;
StateId gCurrentState;
static bool GetEvent(StateId currentState, EventInfo* pEventInfo);

static bool GetEvent(StateId currentState, EventInfo* pEventInfo)
{
	bool ret = false;
	
	if((*(SM_Table[currentState].hStateAction))(pEventInfo))
	{
	 	ret = true;
	}	
	return ret;
}

uint32_t adctest;
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
	EventInfo eventInfo;
	StateId nextState;
	StateTransit*	pStateTransit;
	uint8_t i;
	
	gPDEn = true;
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_COMP1_Init();
  MX_DAC_Init();
  MX_ADC2_Init();
  MX_ADC3_Init();
  MX_COMP2_Init();
  MX_TIM3_Init();
  MX_CRC_Init();
  MX_TIM4_Init();
  /* USER CODE BEGIN 2 */
	LL_GPIO_SetOutputPin(LED0_GPIO_Port, LED0_Pin);
	LL_GPIO_SetOutputPin(CC1_ENCODE_OUT_GPIO_Port, CC1_ENCODE_OUT_Pin);
		
//	HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 1024);
//	HAL_DAC_Start(&hdac, DAC_CHANNEL_1);
//	HAL_COMP_Start(&hcomp1);
//	HAL_Delay(1);
//	__HAL_TIM_SET_CAPTUREPOLARITY(&htim4, TIM_CHANNEL_1, TIM_INPUTCHANNELPOLARITY_BOTHEDGE);
//	HAL_TIM_IC_Start(&htim4, TIM_CHANNEL_1);
	
	
/*********************TEST BEGIN***********************************************/
//	gPrlRcvMsg.SOPType                              = USBPD_SOPTYPE_SOP;
//	gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgType    = USBPD_DATAMSG_SRC_CAPABILITIES;      
//	gPrlRcvMsg.MsgHeader.MsgHeaderStruct.SpecRev    = USBPD_SPECIFICATION_REV2;    
//	gPrlRcvMsg.MsgHeader.MsgHeaderStruct.MsgId      = 1;         
//	gPrlRcvMsg.MsgHeader.MsgHeaderStruct.DataObjNum = 5;   
//  gPrlRcvMsg.MsgHeader.MsgHeaderStruct.Ext        = 0; 
//	gPrlRcvMsg.DataObjectValue[0]   = 0x0A01912C;
//  gPrlRcvMsg.DataObjectValue[1]   = 0x0002D12C;
//	gPrlRcvMsg.DataObjectValue[2]   = 0x0003C12C;	
//  gPrlRcvMsg.DataObjectValue[3]   = 0x0004B12C;
//	gPrlRcvMsg.DataObjectValue[4]   = 0x00064145;	
//	gSRCFixedPDONum = USBPD_GetSRCFixedPDOList(&gPrlRcvMsg);
//	
//	pdoIndex = DPM_FindVoltageIndex(&reqDetails);
//  DPM_SNK_BuildRDOfromSelectedFixedPDO(pdoIndex, &reqDetails, &gRdo);
//	
//	USBPD_Send_HardReset();				
//	USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GOODCRC);	
//  USBPD_Send_ControlMessage(USBPD_CONTROLMSG_SOFT_RESET);	
//	USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GET_SRC_CAP);
//	USBPD_Send_Request(gRdo.d32);

  adctest = GetAverageValue(AVERAGE_NUM, Measurement_DN_Voltage);
/*********************TEST END***********************************************/
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
	
	
/********************* QC ***********************************************/
	ResetQuickChargeFlag();
	QuickChargeDetection(); 
		
  gPreviousState = StateStartup;  
	gCurrentState = StateStartup; 
	(*SM_Table[gCurrentState].hStateEntry)(eventInfo.eventId, eventInfo.param1);
	USBPD_Send_HardReset();
	while (1)
  {
		if (gPDEn)
		{
			if(GetEvent(gCurrentState, &eventInfo))
			{				
				if((gCurrentState < StateCount)&&(eventInfo.eventId < EventCount))
				{
					pStateTransit = SM_Table[gCurrentState].pStateTransit; //Get current state's transaction table 'StateTrans'
					i = 0;
					while(pStateTransit[i].eventId != EvtNull)
					{            
						if(pStateTransit[i].eventId == eventInfo.eventId)//search for the state transition for the current event
						{
							nextState = pStateTransit[i].nextState;  
							
//							if(nextState != gCurrentState) //if the state changes, call exit function of current state, and entry function of next state
							{             			          
								(*SM_Table[gCurrentState].hStateExit)();
								(*SM_Table[nextState].hStateEntry)(eventInfo.eventId, eventInfo.param1);
								gPreviousState = gCurrentState;									
								gCurrentState = nextState; 
							} 
							break;
						}
						i++;
					}
				}
			}
		}
	}
	
//  uint32_t msgType;
//	uint32_t pdoIndex;
//	USBPD_DPM_SNKPowerRequestDetails_TypeDef reqDetails;
		
//  while (1)
//  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
//		if(gNewMsgFlag)
//		{	
//			HAL_GPIO_WritePin(TEST_LED1_GPIO_Port, TEST_LED1_Pin, GPIO_PIN_SET);
//			if (USBPD_OK == USBPD_PHY_DecodeMessage(&gPhyRcvMsg))
//			{
//				//1. �� MSG ������Э���
//				USBPD_GetMessage(&gPhyRcvMsg, &gPrlRcvMsg);
//				//2. ���� MSG ���ͻظ���ͬ������	
//        msgType = USBPD_GetReceivedMsgType(&gPrlRcvMsg);
////        if ((msgType != USBPD_MSG_GOODCRC))					
////				{
////			  	USBPD_Send_ControlMessage(USBPD_CONTROLMSG_GOODCRC);
////				}
//        switch (msgType) 
//				{
//					case USBPD_MSG_HARD_RST:
//						break;
//					case USBPD_MSG_SOFT_RST:
//						break;
//          case USBPD_MSG_GET_SINK_CAP:
//						break;
//          case USBPD_MSG_ACCEPT:
//						break;
//          case USBPD_MSG_PS_READY:
//						break;
//          case USBPD_MSG_SRC_CAP:		 				
//						pdoIndex = DPM_FindVoltageIndex(&reqDetails);
//						DPM_SNK_BuildRDOfromSelectedFixedPDO(pdoIndex, &reqDetails, &gRdo);
//						USBPD_Send_Request(gRdo.d32);
//					  break;
//					default:
//						break;
//				}			       				
//			}
//			gNewMsgFlag = false;
//			HAL_GPIO_WritePin(TEST_LED1_GPIO_Port, TEST_LED1_Pin, GPIO_PIN_RESET);
//			__HAL_TIM_CLEAR_IT(&htim3, TIM_IT_CC1);
//	    TIM3->DIER |= TIM_IT_CC1;
//		}
//	}
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  LL_FLASH_SetLatency(LL_FLASH_LATENCY_2);
  while(LL_FLASH_GetLatency()!= LL_FLASH_LATENCY_2)
  {
  }
  LL_RCC_HSE_Enable();

   /* Wait till HSE is ready */
  while(LL_RCC_HSE_IsReady() != 1)
  {

  }
  LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSE_DIV_1, LL_RCC_PLL_MUL_9);
  LL_RCC_PLL_Enable();

   /* Wait till PLL is ready */
  while(LL_RCC_PLL_IsReady() != 1)
  {

  }
  LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
  LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_2);
  LL_RCC_SetAPB2Prescaler(LL_RCC_APB2_DIV_1);
  LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);

   /* Wait till System clock is ready */
  while(LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
  {

  }
  LL_SetSystemCoreClock(72000000);

   /* Update the time base */
  if (HAL_InitTick (TICK_INT_PRIORITY) != HAL_OK)
  {
    Error_Handler();
  }
  LL_RCC_SetADCClockSource(LL_RCC_ADC12_CLKSRC_PLL_DIV_1);
  LL_RCC_SetADCClockSource(LL_RCC_ADC34_CLKSRC_PLL_DIV_1);
}

/**
  * @brief ADC2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC2_Init(void)
{

  /* USER CODE BEGIN ADC2_Init 0 */

  /* USER CODE END ADC2_Init 0 */

  LL_ADC_InitTypeDef ADC_InitStruct = {0}; 
	
  LL_ADC_REG_InitTypeDef ADC_REG_InitStruct = {0};

  LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* Peripheral clock enable */
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_ADC12);

  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
  /**ADC2 GPIO Configuration
  PA6   ------> ADC2_IN3
  PA7   ------> ADC2_IN4
  PC4   ------> ADC2_IN5
  PC5   ------> ADC2_IN11
  */
  GPIO_InitStruct.Pin = CC1_ADC_IN_Pin|CC2_ADC_IN_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = DN_ADC_IN_Pin|DP_ADC_IN_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /* USER CODE BEGIN ADC2_Init 1 */

  /* USER CODE END ADC2_Init 1 */
  /** Common config
  */
  ADC_InitStruct.Resolution = LL_ADC_RESOLUTION_12B;
  ADC_InitStruct.DataAlignment = LL_ADC_DATA_ALIGN_RIGHT;
  ADC_InitStruct.LowPowerMode = LL_ADC_LP_MODE_NONE;
  LL_ADC_Init(ADC2, &ADC_InitStruct);
  ADC_REG_InitStruct.TriggerSource = LL_ADC_REG_TRIG_SOFTWARE;
  ADC_REG_InitStruct.SequencerLength = LL_ADC_REG_SEQ_SCAN_DISABLE;
  ADC_REG_InitStruct.SequencerDiscont = LL_ADC_REG_SEQ_DISCONT_DISABLE;
  ADC_REG_InitStruct.ContinuousMode = LL_ADC_REG_CONV_CONTINUOUS;
  ADC_REG_InitStruct.DMATransfer = LL_ADC_REG_DMA_TRANSFER_LIMITED;
  ADC_REG_InitStruct.Overrun = LL_ADC_REG_OVR_DATA_OVERWRITTEN;
  LL_ADC_REG_Init(ADC2, &ADC_REG_InitStruct);
  LL_ADC_SetCommonClock(__LL_ADC_COMMON_INSTANCE(ADC2), LL_ADC_CLOCK_ASYNC_DIV1);

  /* Enable ADC internal voltage regulator */
  LL_ADC_EnableInternalRegulator(ADC2);
  /* Delay for ADC internal voltage regulator stabilization. */
  /* Compute number of CPU cycles to wait for, from delay in us. */
  /* Note: Variable divided by 2 to compensate partially */
  /* CPU processing cycles (depends on compilation optimization). */
  /* Note: If system core clock frequency is below 200kHz, wait time */
  /* is only a few CPU processing cycles. */
  uint32_t wait_loop_index;
  wait_loop_index = ((LL_ADC_DELAY_INTERNAL_REGUL_STAB_US * (SystemCoreClock / (100000 * 2))) / 10);
  while(wait_loop_index != 0)
  {
    wait_loop_index--;
  }
  /** Configure Regular Channel
  */
  LL_ADC_REG_SetSequencerRanks(ADC2, LL_ADC_REG_RANK_1, LL_ADC_CHANNEL_3);
  LL_ADC_SetChannelSamplingTime(ADC2, LL_ADC_CHANNEL_3, LL_ADC_SAMPLINGTIME_1CYCLE_5);
  LL_ADC_SetChannelSingleDiff(ADC2, LL_ADC_CHANNEL_3, LL_ADC_SINGLE_ENDED);
  /* USER CODE BEGIN ADC2_Init 2 */

  /* USER CODE END ADC2_Init 2 */

}

/**
  * @brief ADC3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC3_Init(void)
{

  /* USER CODE BEGIN ADC3_Init 0 */

  /* USER CODE END ADC3_Init 0 */

  LL_ADC_InitTypeDef ADC_InitStruct = {0};
  LL_ADC_REG_InitTypeDef ADC_REG_InitStruct = {0};
  LL_ADC_CommonInitTypeDef ADC_CommonInitStruct = {0};

  LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* Peripheral clock enable */
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_ADC34);

  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOE);
  /**ADC3 GPIO Configuration
  PB0   ------> ADC3_IN12
  PE9   ------> ADC3_IN2
  */
  GPIO_InitStruct.Pin = VBUS_V_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(VBUS_V_GPIO_Port, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = VBUS_I_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(VBUS_I_GPIO_Port, &GPIO_InitStruct);

  /* USER CODE BEGIN ADC3_Init 1 */

  /* USER CODE END ADC3_Init 1 */
  /** Common config
  */
  ADC_InitStruct.Resolution = LL_ADC_RESOLUTION_12B;
  ADC_InitStruct.DataAlignment = LL_ADC_DATA_ALIGN_RIGHT;
  ADC_InitStruct.LowPowerMode = LL_ADC_LP_MODE_NONE;
  LL_ADC_Init(ADC3, &ADC_InitStruct);
  ADC_REG_InitStruct.TriggerSource = LL_ADC_REG_TRIG_SOFTWARE;
  ADC_REG_InitStruct.SequencerLength = LL_ADC_REG_SEQ_SCAN_DISABLE;
  ADC_REG_InitStruct.SequencerDiscont = LL_ADC_REG_SEQ_DISCONT_DISABLE;
  ADC_REG_InitStruct.ContinuousMode = LL_ADC_REG_CONV_CONTINUOUS;
  ADC_REG_InitStruct.DMATransfer = LL_ADC_REG_DMA_TRANSFER_LIMITED;
  ADC_REG_InitStruct.Overrun = LL_ADC_REG_OVR_DATA_OVERWRITTEN;
  LL_ADC_REG_Init(ADC3, &ADC_REG_InitStruct);
  ADC_CommonInitStruct.CommonClock = LL_ADC_CLOCK_ASYNC_DIV1;
  ADC_CommonInitStruct.Multimode = LL_ADC_MULTI_INDEPENDENT;
  LL_ADC_CommonInit(__LL_ADC_COMMON_INSTANCE(ADC3), &ADC_CommonInitStruct);

  /* Enable ADC internal voltage regulator */
  LL_ADC_EnableInternalRegulator(ADC3);
  /* Delay for ADC internal voltage regulator stabilization. */
  /* Compute number of CPU cycles to wait for, from delay in us. */
  /* Note: Variable divided by 2 to compensate partially */
  /* CPU processing cycles (depends on compilation optimization). */
  /* Note: If system core clock frequency is below 200kHz, wait time */
  /* is only a few CPU processing cycles. */
  uint32_t wait_loop_index;
  wait_loop_index = ((LL_ADC_DELAY_INTERNAL_REGUL_STAB_US * (SystemCoreClock / (100000 * 2))) / 10);
  while(wait_loop_index != 0)
  {
    wait_loop_index--;
  }
  /** Configure Regular Channel
  */
  LL_ADC_REG_SetSequencerRanks(ADC3, LL_ADC_REG_RANK_1, LL_ADC_CHANNEL_2);
  LL_ADC_SetChannelSamplingTime(ADC3, LL_ADC_CHANNEL_2, LL_ADC_SAMPLINGTIME_1CYCLE_5);
  LL_ADC_SetChannelSingleDiff(ADC3, LL_ADC_CHANNEL_2, LL_ADC_SINGLE_ENDED);
  /* USER CODE BEGIN ADC3_Init 2 */

  /* USER CODE END ADC3_Init 2 */

}

/**
  * @brief COMP1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_COMP1_Init(void)
{

  /* USER CODE BEGIN COMP1_Init 0 */

  /* USER CODE END COMP1_Init 0 */

  LL_COMP_InitTypeDef COMP_InitStruct = {0};

  LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
  /**COMP1 GPIO Configuration
  PA1   ------> COMP1_INP
  PA11   ------> COMP1_OUT
  */
  GPIO_InitStruct.Pin = CC1_DECODE_IN_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(CC1_DECODE_IN_GPIO_Port, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = CC1_COMP1_OUT_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ALTERNATE;
  GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  GPIO_InitStruct.Alternate = LL_GPIO_AF_8;
  LL_GPIO_Init(CC1_COMP1_OUT_GPIO_Port, &GPIO_InitStruct);

  /* USER CODE BEGIN COMP1_Init 1 */

  /* USER CODE END COMP1_Init 1 */
  COMP_InitStruct.PowerMode = LL_COMP_POWERMODE_HIGHSPEED;
  COMP_InitStruct.InputPlus = LL_COMP_INPUT_PLUS_IO1;
  COMP_InitStruct.InputMinus = LL_COMP_INPUT_MINUS_DAC1_CH1;
  COMP_InitStruct.InputHysteresis = LL_COMP_HYSTERESIS_NONE;
  COMP_InitStruct.OutputSelection = LL_COMP_OUTPUT_TIM3_IC1;
  COMP_InitStruct.OutputPolarity = LL_COMP_OUTPUTPOL_NONINVERTED;
  COMP_InitStruct.OutputBlankingSource = LL_COMP_BLANKINGSRC_NONE;
  LL_COMP_Init(COMP1, &COMP_InitStruct);
  /* USER CODE BEGIN COMP1_Init 2 */

  /* USER CODE END COMP1_Init 2 */

}

/**
  * @brief COMP2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_COMP2_Init(void)
{

  /* USER CODE BEGIN COMP2_Init 0 */

  /* USER CODE END COMP2_Init 0 */

  LL_COMP_InitTypeDef COMP_InitStruct = {0};

  LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
  /**COMP2 GPIO Configuration
  PA3   ------> COMP2_INP
  PA12   ------> COMP2_OUT
  */
  GPIO_InitStruct.Pin = CC2_DECODE_IN_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(CC2_DECODE_IN_GPIO_Port, &GPIO_InitStruct);

  GPIO_InitStruct.Pin = CC2_COMP2_OUT_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ALTERNATE;
  GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  GPIO_InitStruct.Alternate = LL_GPIO_AF_8;
  LL_GPIO_Init(CC2_COMP2_OUT_GPIO_Port, &GPIO_InitStruct);

  /* USER CODE BEGIN COMP2_Init 1 */

  /* USER CODE END COMP2_Init 1 */
  COMP_InitStruct.PowerMode = LL_COMP_POWERMODE_HIGHSPEED;
  COMP_InitStruct.InputPlus = LL_COMP_INPUT_PLUS_IO2;
  COMP_InitStruct.InputMinus = LL_COMP_INPUT_MINUS_DAC1_CH1;
  COMP_InitStruct.InputHysteresis = LL_COMP_HYSTERESIS_NONE;
  COMP_InitStruct.OutputSelection = LL_COMP_OUTPUT_NONE;
  COMP_InitStruct.OutputPolarity = LL_COMP_OUTPUTPOL_NONINVERTED;
  COMP_InitStruct.OutputBlankingSource = LL_COMP_BLANKINGSRC_NONE;
  LL_COMP_Init(COMP2, &COMP_InitStruct);
  LL_COMP_SetCommonWindowMode(__LL_COMP_COMMON_INSTANCE(COMP2), LL_COMP_WINDOWMODE_DISABLE);
  /* USER CODE BEGIN COMP2_Init 2 */

  /* USER CODE END COMP2_Init 2 */

}

/**
  * @brief CRC Initialization Function
  * @param None
  * @retval None
  */
static void MX_CRC_Init(void)
{

  /* USER CODE BEGIN CRC_Init 0 */

  /* USER CODE END CRC_Init 0 */

  /* Peripheral clock enable */
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_CRC);

  /* USER CODE BEGIN CRC_Init 1 */

  /* USER CODE END CRC_Init 1 */
  LL_CRC_SetInputDataReverseMode(CRC, LL_CRC_INDATA_REVERSE_BYTE);
  LL_CRC_SetOutputDataReverseMode(CRC, LL_CRC_OUTDATA_REVERSE_BIT);
  LL_CRC_SetInitialData(CRC, 0xFFFFFFFF);
  LL_CRC_SetPolynomialCoef(CRC, 79764919);
  LL_CRC_SetPolynomialSize(CRC, LL_CRC_POLYLENGTH_32B);
  /* USER CODE BEGIN CRC_Init 2 */

  /* USER CODE END CRC_Init 2 */

}

/**
  * @brief DAC Initialization Function
  * @param None
  * @retval None
  */
static void MX_DAC_Init(void)
{

  /* USER CODE BEGIN DAC_Init 0 */

  /* USER CODE END DAC_Init 0 */

  LL_DAC_InitTypeDef DAC_InitStruct = {0};

  LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* Peripheral clock enable */
  LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_DAC1);

  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
  /**DAC GPIO Configuration
  PA4   ------> DAC_OUT1
  PA5   ------> DAC_OUT2
  */
  GPIO_InitStruct.Pin = LL_GPIO_PIN_4|LL_GPIO_PIN_5;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /* USER CODE BEGIN DAC_Init 1 */

  /* USER CODE END DAC_Init 1 */
  /** DAC channel OUT1 config
  */
  DAC_InitStruct.TriggerSource = LL_DAC_TRIG_SOFTWARE;
  DAC_InitStruct.WaveAutoGeneration = LL_DAC_WAVE_AUTO_GENERATION_NONE;
  DAC_InitStruct.OutputBuffer = LL_DAC_OUTPUT_BUFFER_ENABLE;
  LL_DAC_Init(DAC, LL_DAC_CHANNEL_1, &DAC_InitStruct);
  LL_DAC_DisableTrigger(DAC, LL_DAC_CHANNEL_1);
  /** DAC channel OUT2 config
  */
  LL_DAC_Init(DAC, LL_DAC_CHANNEL_2, &DAC_InitStruct);
  LL_DAC_DisableTrigger(DAC, LL_DAC_CHANNEL_2);
  /* USER CODE BEGIN DAC_Init 2 */

  /* USER CODE END DAC_Init 2 */

}

/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM3_Init(void)
{

  /* USER CODE BEGIN TIM3_Init 0 */

  /* USER CODE END TIM3_Init 0 */

  LL_TIM_InitTypeDef TIM_InitStruct = {0};

  LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* Peripheral clock enable */
  LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM3);

  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
  /**TIM3 GPIO Configuration
  PB4   ------> TIM3_CH1
  */
  GPIO_InitStruct.Pin = LL_GPIO_PIN_4;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_ALTERNATE;
  GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  GPIO_InitStruct.Alternate = LL_GPIO_AF_2;
  LL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /* TIM3 interrupt Init */
  NVIC_SetPriority(TIM3_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(),0, 0));
  NVIC_EnableIRQ(TIM3_IRQn);

  /* USER CODE BEGIN TIM3_Init 1 */

  /* USER CODE END TIM3_Init 1 */
  TIM_InitStruct.Prescaler = 0;
  TIM_InitStruct.CounterMode = LL_TIM_COUNTERMODE_UP;
  TIM_InitStruct.Autoreload = 0xffff;
  TIM_InitStruct.ClockDivision = LL_TIM_CLOCKDIVISION_DIV1;
  LL_TIM_Init(TIM3, &TIM_InitStruct);
  LL_TIM_EnableARRPreload(TIM3);
  LL_TIM_SetClockSource(TIM3, LL_TIM_CLOCKSOURCE_INTERNAL);
  LL_TIM_SetTriggerOutput(TIM3, LL_TIM_TRGO_RESET);
  LL_TIM_DisableMasterSlaveMode(TIM3);
  LL_TIM_IC_SetActiveInput(TIM3, LL_TIM_CHANNEL_CH1, LL_TIM_ACTIVEINPUT_DIRECTTI);
  LL_TIM_IC_SetPrescaler(TIM3, LL_TIM_CHANNEL_CH1, LL_TIM_ICPSC_DIV1);
  LL_TIM_IC_SetFilter(TIM3, LL_TIM_CHANNEL_CH1, LL_TIM_IC_FILTER_FDIV1);
  LL_TIM_IC_SetPolarity(TIM3, LL_TIM_CHANNEL_CH1, LL_TIM_IC_POLARITY_RISING);
  /* USER CODE BEGIN TIM3_Init 2 */

  /* USER CODE END TIM3_Init 2 */

}

/**
  * @brief TIM4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM4_Init(void)
{

  /* USER CODE BEGIN TIM4_Init 0 */

  /* USER CODE END TIM4_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_IC_InitTypeDef sConfigIC = {0};

  /* USER CODE BEGIN TIM4_Init 1 */

  /* USER CODE END TIM4_Init 1 */
  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 0;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 0xffff;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_IC_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigIC.ICPolarity = TIM_INPUTCHANNELPOLARITY_RISING;
  sConfigIC.ICSelection = TIM_ICSELECTION_DIRECTTI;
  sConfigIC.ICPrescaler = TIM_ICPSC_DIV1;
  sConfigIC.ICFilter = 0;
  if (HAL_TIM_IC_ConfigChannel(&htim4, &sConfigIC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_IC_ConfigChannel(&htim4, &sConfigIC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM4_Init 2 */

  /* USER CODE END TIM4_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  LL_EXTI_InitTypeDef EXTI_InitStruct = {0};
  LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOE);
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOF);
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
  LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOD);

  /**/
  LL_GPIO_ResetOutputPin(GPIOC, CC1_ENCODE_OUT_Pin|CC2_ENCODE_OUT_Pin|LED0_Pin|LED1_Pin
                          |LED2_Pin|LED3_Pin);

  /**/
  LL_GPIO_ResetOutputPin(GPIOA, LED4_Pin|LED5_Pin|LED6_Pin);

  /**/
  LL_GPIO_ResetOutputPin(LED7_GPIO_Port, LED7_Pin);

  /**/
  GPIO_InitStruct.Pin = DN_OUT_CTRL1_Pin|DN_OUT_CTRL2_Pin|DP_OUT_CTRL1_Pin|DP_OUT_CTRL2_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(GPIOE, &GPIO_InitStruct);

  /**/
  GPIO_InitStruct.Pin = CC1_ENCODE_OUT_Pin|CC2_ENCODE_OUT_Pin|LED0_Pin|LED1_Pin
                          |LED2_Pin|LED3_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
  GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /**/
  GPIO_InitStruct.Pin = LED4_Pin|LED5_Pin|LED6_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
  GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /**/
  GPIO_InitStruct.Pin = LED7_Pin;
  GPIO_InitStruct.Mode = LL_GPIO_MODE_OUTPUT;
  GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_LOW;
  GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
  GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;
  LL_GPIO_Init(LED7_GPIO_Port, &GPIO_InitStruct);

  /**/
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTB, LL_SYSCFG_EXTI_LINE12);

  /**/
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTB, LL_SYSCFG_EXTI_LINE13);

  /**/
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTB, LL_SYSCFG_EXTI_LINE14);

  /**/
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTB, LL_SYSCFG_EXTI_LINE15);

  /**/
  LL_GPIO_SetPinPull(Key0_GPIO_Port, Key0_Pin, LL_GPIO_PULL_NO);

  /**/
  LL_GPIO_SetPinPull(Key1_GPIO_Port, Key1_Pin, LL_GPIO_PULL_NO);

  /**/
  LL_GPIO_SetPinPull(Key2_GPIO_Port, Key2_Pin, LL_GPIO_PULL_NO);

  /**/
  LL_GPIO_SetPinPull(Key3_GPIO_Port, Key3_Pin, LL_GPIO_PULL_NO);

  /**/
  LL_GPIO_SetPinMode(Key0_GPIO_Port, Key0_Pin, LL_GPIO_MODE_INPUT);

  /**/
  LL_GPIO_SetPinMode(Key1_GPIO_Port, Key1_Pin, LL_GPIO_MODE_INPUT);

  /**/
  LL_GPIO_SetPinMode(Key2_GPIO_Port, Key2_Pin, LL_GPIO_MODE_INPUT);

  /**/
  LL_GPIO_SetPinMode(Key3_GPIO_Port, Key3_Pin, LL_GPIO_MODE_INPUT);

  /**/
  EXTI_InitStruct.Line_0_31 = LL_EXTI_LINE_12;
  EXTI_InitStruct.Line_32_63 = LL_EXTI_LINE_NONE;
  EXTI_InitStruct.LineCommand = ENABLE;
  EXTI_InitStruct.Mode = LL_EXTI_MODE_IT;
  EXTI_InitStruct.Trigger = LL_EXTI_TRIGGER_FALLING;
  LL_EXTI_Init(&EXTI_InitStruct);

  /**/
  EXTI_InitStruct.Line_0_31 = LL_EXTI_LINE_13;
  EXTI_InitStruct.Line_32_63 = LL_EXTI_LINE_NONE;
  EXTI_InitStruct.LineCommand = ENABLE;
  EXTI_InitStruct.Mode = LL_EXTI_MODE_IT;
  EXTI_InitStruct.Trigger = LL_EXTI_TRIGGER_FALLING;
  LL_EXTI_Init(&EXTI_InitStruct);

  /**/
  EXTI_InitStruct.Line_0_31 = LL_EXTI_LINE_14;
  EXTI_InitStruct.Line_32_63 = LL_EXTI_LINE_NONE;
  EXTI_InitStruct.LineCommand = ENABLE;
  EXTI_InitStruct.Mode = LL_EXTI_MODE_IT;
  EXTI_InitStruct.Trigger = LL_EXTI_TRIGGER_FALLING;
  LL_EXTI_Init(&EXTI_InitStruct);

  /**/
  EXTI_InitStruct.Line_0_31 = LL_EXTI_LINE_15;
  EXTI_InitStruct.Line_32_63 = LL_EXTI_LINE_NONE;
  EXTI_InitStruct.LineCommand = ENABLE;
  EXTI_InitStruct.Mode = LL_EXTI_MODE_IT;
  EXTI_InitStruct.Trigger = LL_EXTI_TRIGGER_FALLING;
  LL_EXTI_Init(&EXTI_InitStruct);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

static uint32_t msCount;

void IncMsCount(void)
{
  msCount++;
}

uint32_t GetMsCount(void)
{
  return msCount;
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

