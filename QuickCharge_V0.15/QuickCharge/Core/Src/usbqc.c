	
#include "main.h"

#ifdef _QC_ADAPTER_ENABLE

//static BOOL gQcAdapter;
static uint16_t USBNegativeDValue;
static bool USBBC1V2DetectFlag;
static bool ForceDetectFlag;

static void ReleaseUsbData(void);

/******************************************************************************
 * @brief     Reset QC IO 
 * @retval    None
 ******************************************************************************/
static void ReleaseUsbData(void)
{
	//D- DIRECRTION
  LL_GPIO_SetPinMode(DN_OUT_CTRL1_GPIO_Port, DN_OUT_CTRL1_Pin, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinMode(DN_OUT_CTRL2_GPIO_Port, DN_OUT_CTRL2_Pin, LL_GPIO_MODE_INPUT);
	
	//D+ DIRECRTION
	LL_GPIO_SetPinMode(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinMode(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin, LL_GPIO_MODE_INPUT);
}


void ResetQuickChargeFlag(void)
{
  USBBC1V2DetectFlag = false;
	ForceDetectFlag 	 = false;
	gQcAdapter 			   = false;	
}

void SetQuickCharge(uint16_t voltage)
{
  switch(voltage)
  {
    case ADAPTER_SEL_5V: //D+:0.6V,D-:0V(Released)
			//PE0 is D+ with 1K OUTPUT 0V
		  LL_GPIO_SetPinMode(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin, LL_GPIO_MODE_OUTPUT);
			LL_GPIO_ResetOutputPin(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin);
		  //PE1 is D+ with 4.7K OUTPUT 3.3V
			LL_GPIO_SetPinMode(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin, LL_GPIO_MODE_OUTPUT);
		  LL_GPIO_SetOutputPin(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin);
		  //PE2 is D- with 1K INPUT
      LL_GPIO_SetPinMode(DN_OUT_CTRL1_GPIO_Port, DN_OUT_CTRL1_Pin, LL_GPIO_MODE_INPUT);
    	//PE3 is D- with 2K INPUT		
			LL_GPIO_SetPinMode(DN_OUT_CTRL2_GPIO_Port, DN_OUT_CTRL2_Pin, LL_GPIO_MODE_INPUT);
		  break;
		
		case ADAPTER_SEL_9V://D+:3.3V,D-:0.6V
			//PE0 is D+ with 1K INPUT
			LL_GPIO_SetPinMode(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin, LL_GPIO_MODE_INPUT);
			//PE1 is D+ with 4.7K OUTPUT 3.3V
		  LL_GPIO_SetPinMode(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin, LL_GPIO_MODE_OUTPUT);
		  LL_GPIO_SetOutputPin(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin);
			//PE2 is D- with 1K OUTPUT 0V
			LL_GPIO_SetPinMode(DN_OUT_CTRL1_GPIO_Port, DN_OUT_CTRL1_Pin, LL_GPIO_MODE_OUTPUT);
		  LL_GPIO_ResetOutputPin(DN_OUT_CTRL1_GPIO_Port, DN_OUT_CTRL1_Pin);
			//PE3 is D- with 2K OUTPUT 3.3V
			LL_GPIO_SetPinMode(DN_OUT_CTRL2_GPIO_Port, DN_OUT_CTRL2_Pin, LL_GPIO_MODE_OUTPUT);	
			LL_GPIO_SetOutputPin(DN_OUT_CTRL2_GPIO_Port, DN_OUT_CTRL2_Pin);		
			break;
		
    case ADAPTER_SEL_12V://D+:0.6V,D-:0.6V		
			//PE0 is D+ with 1K OUTPUT 0V
			LL_GPIO_SetPinMode(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin, LL_GPIO_MODE_OUTPUT);
			LL_GPIO_ResetOutputPin(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin);
			//PE1 is D+ with 4.7K OUTPUT 3.3V
			LL_GPIO_SetPinMode(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin, LL_GPIO_MODE_OUTPUT);
		  LL_GPIO_SetOutputPin(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin);
			//PE2 is D- with 1K OUTPUT 0V
			LL_GPIO_SetPinMode(DN_OUT_CTRL1_GPIO_Port, DN_OUT_CTRL1_Pin, LL_GPIO_MODE_OUTPUT);
		  LL_GPIO_ResetOutputPin(DN_OUT_CTRL1_GPIO_Port, DN_OUT_CTRL1_Pin);
			//PE3 is D- with 2K OUTPUT 3.3V
			LL_GPIO_SetPinMode(DN_OUT_CTRL2_GPIO_Port, DN_OUT_CTRL2_Pin, LL_GPIO_MODE_OUTPUT);	
			LL_GPIO_SetOutputPin(DN_OUT_CTRL2_GPIO_Port, DN_OUT_CTRL2_Pin);		
		  break;
	}
}

void QuickChargeDetection(void)
{
  //1:ForceDPositiveLow: D+ 3.3V, D- Released
	//PE0 is D+ with 1K INPUT
	LL_GPIO_SetPinMode(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin, LL_GPIO_MODE_INPUT);
	//PE1 is D+ with 4.7K OUTPUT 3.3V
	LL_GPIO_SetPinMode(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetOutputPin(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin);
	//PE2 is D- with 1K INPUT
  LL_GPIO_SetPinMode(DN_OUT_CTRL1_GPIO_Port, DN_OUT_CTRL1_Pin, LL_GPIO_MODE_INPUT);
  //PE3 is D- with 2K INPUT		
  LL_GPIO_SetPinMode(DN_OUT_CTRL2_GPIO_Port, DN_OUT_CTRL2_Pin, LL_GPIO_MODE_INPUT);
	
	HAL_Delay(80);//For QC Adapter Detection D+ Force High Delay
	
	USBNegativeDValue =  GetAverageValue(AVERAGE_NUM, Measurement_DN_Voltage);
	if(USBNegativeDValue > USBNegativeD_2P35V)	
	{	     //2350mV
		USBBC1V2DetectFlag = 1;
	}
  else
	{
		USBBC1V2DetectFlag = 0;
	}

	//2¡¢ForceDPositiveLow: D+ 0V, D- Released
	//PE0 is D+ with 1K OUTPUT 0V
	LL_GPIO_SetPinMode(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_ResetOutputPin(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin);
	//PE1 is D+ with 4.7K OUTPUT 0V
	LL_GPIO_SetPinMode(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_ResetOutputPin(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin);
	HAL_Delay(100);	//For QC Adapter Detection D+ Force Low Delay

	//3¡¢ForceUsbPositive: D+ 0.6V,	D- Released, Detect D- Voltage Level
	//D+ VALUE 0.6V
  //PE0 is D+ with 1K OUTPUT 0V
	LL_GPIO_SetPinMode(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_ResetOutputPin(DP_OUT_CTRL1_GPIO_Port, DP_OUT_CTRL1_Pin);
	//PE1 is D+ with 4.7K OUTPUT 3.3V
	LL_GPIO_SetPinMode(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin, LL_GPIO_MODE_OUTPUT);
	LL_GPIO_SetOutputPin(DP_OUT_CTRL2_GPIO_Port, DP_OUT_CTRL2_Pin);
	HAL_Delay(100);	//For QC Adapter Detection D+ Value Sampling Delay
	
//	USBNegativeDValue = ReadADC(ADC_CHANNEL_QC_D_NEG,ADC_SOFTAVG_ENABLE); //D- 0.6V Detection
	USBNegativeDValue = GetAverageValue(AVERAGE_NUM, Measurement_DN_Voltage);
	if(USBNegativeDValue > USBNegativeD_0P3V)
	{	     //300mV
		ForceDetectFlag = 1;
	}
    else
	{
		ForceDetectFlag = 0;
	}	
	HAL_Delay(1600);	//For QC Adapter Detection
	
	
	//CheckQuickCharge: Detect D- Voltage Level After 1500ms Delay
//	USBNegativeDValue = ReadADC(ADC_CHANNEL_QC_D_NEG,ADC_SOFTAVG_ENABLE); //D- 0V Detection
	USBNegativeDValue = GetAverageValue(AVERAGE_NUM, Measurement_DN_Voltage);

  if(USBNegativeDValue < USBNegativeD_0P3V)
	{	     //300mV
		if(USBBC1V2DetectFlag & ForceDetectFlag)
		{
			gQcAdapter = true;
		}
		else
		{
			gQcAdapter = false;
		}
	}
  else
	{
		gQcAdapter = false;
	}

	if(!gQcAdapter)	//Determine if QC 2.0 Charger existed
	{
		ReleaseUsbData();	//D+ and D- Released
	}
	gQcAdapter = true;
}

#endif
