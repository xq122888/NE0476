#include "main.h"

static uint32_t filteredMeasurements[MeasurementCount];

/******************************************************************************
 * @brief     ADC Sample 
 * @param[in] avg_num
 * @param[in] channel
 * @retval    None
 ******************************************************************************/
uint16_t HwAdcSample(uint32_t avg_num, uint32_t channel)
{
	static uint16_t Uadc;
	static uint16_t adc_Value_Single;
	uint32_t SumValue;
	uint32_t i;

	SumValue = 0;

	if (   (channel == V_CC1_ADC_CHANNEL) || (channel == V_CC2_ADC_CHANNEL)
		  || (channel == V_DN_ADC_CHANNEL) || (channel == V_DP_ADC_CHANNEL))
	{
	  LL_ADC_REG_SetSequencerRanks(ADC2, LL_ADC_REG_RANK_1, channel);
	  LL_ADC_Enable(ADC2);
	  while(LL_ADC_IsActiveFlag_ADRDY(ADC2) != SET);
	  LL_ADC_REG_StartConversion(ADC2);
			
		for(i=0; i<avg_num; i++)
		{
			/* wait conversion finish */
			while(!(LL_ADC_IsActiveFlag_EOC(ADC2)));	
			SumValue = SumValue + LL_ADC_REG_ReadConversionData12(ADC2);
		}
		
		LL_ADC_REG_StopConversion(ADC2);
		while(LL_ADC_REG_IsConversionOngoing(ADC2) != 0);
		LL_ADC_Disable(ADC2);
		ADC2->ISR = 0x1F;
	}
	else if ((channel == V_VBUS_ADC_CHANNEL) || (channel == I_VBUS_ADC_CHANNEL))
	{
		LL_ADC_REG_SetSequencerRanks(ADC3, LL_ADC_REG_RANK_1, channel);
	  LL_ADC_Enable(ADC3);
	  while(LL_ADC_IsActiveFlag_ADRDY(ADC3) != SET);
	  LL_ADC_REG_StartConversion(ADC3);
		
		for(i=0; i<avg_num; i++)
		{
			/* wait conversion finish */
			while(!(LL_ADC_IsActiveFlag_EOC(ADC3)));	
			SumValue = SumValue + LL_ADC_REG_ReadConversionData12(ADC3);
		}
		
		LL_ADC_REG_StopConversion(ADC3);
		while(LL_ADC_REG_IsConversionOngoing(ADC3) != 0);
		LL_ADC_Disable(ADC3);
		ADC3->ISR = 0x1F;
	}

	
	Uadc = (uint32_t)(SumValue / avg_num);
	adc_Value_Single = ((uint32_t)Uadc * 3000) / 4096; 

	return (uint16_t)adc_Value_Single;
}

uint16_t GetInstantVBUSCurrent(void)
{
	return HwAdcSample(20, I_VBUS_ADC_CHANNEL); 
}

uint16_t GetInstantVBUSVoltage(void)
{
	return 5000;
	//return HwAdcSample(20, V_VBUS_ADC_CHANNEL);
}

uint16_t GetInstantDPVoltage(void)
{
	return HwAdcSample(20, V_DP_ADC_CHANNEL);
}

uint16_t GetInstantDNVoltage(void)
{
	return HwAdcSample(20, V_DN_ADC_CHANNEL);
}

uint16_t GetInstantCC1Voltage(void)
{
	return HwAdcSample(20, V_CC1_ADC_CHANNEL);
}

uint16_t GetInstantCC2Voltage(void)
{
	return HwAdcSample(20, V_CC2_ADC_CHANNEL);
}

/******************************************************************************
 * @brief     Get Instant Measurement Value
 * @param[in] type @ref MeasurementType
 * @retval    None
 ******************************************************************************/
uint16_t GetInstantValue(MeasurementType type)
{
	uint16_t FilteredValue = 0; 
	
	switch (type)
	{
		case Measurement_VBUS_Voltage:
			FilteredValue = GetInstantVBUSVoltage();
		  break;
		case Measurement_VBUS_Current:
			FilteredValue = GetInstantVBUSCurrent();
		  break;
		case Measurement_DP_Voltage:	
			FilteredValue = GetInstantDPVoltage();
		  break;
		case Measurement_DN_Voltage:
			FilteredValue = GetInstantDNVoltage();
		  break;
		case Measurement_CC1_Voltage:
			FilteredValue = GetInstantCC1Voltage();
		  break;
		case Measurement_CC2_Voltage:	
			FilteredValue = GetInstantCC2Voltage();
		  break;
	  default:
			break;
	}
	
	return FilteredValue;
} 

/******************************************************************************
 * @brief     Get Average Measurement Value
 * @param[in] loops
 * @param[in] type @ref MeasurementType
 * @retval    None
 ******************************************************************************/
uint16_t GetAverageValue(uint8_t loops, MeasurementType type)
{
	uint8_t i;
	uint32_t SumValue;
	uint16_t AvgValue;
	
	SumValue = 0;
	for(i = 0; i < loops; i++ )
	{ 
		SumValue = SumValue + GetInstantValue(type);  
	}
	AvgValue = SumValue/loops;
	return AvgValue;
} 

/******************************************************************************
 * @brief     Filter Measurement
 * @param[in] average
 * @param[in] newValue 
 * @retval    None
 ******************************************************************************/
uint32_t FilterMeasurement(uint32_t average, uint32_t newValue)
{
	return (average + (((int32_t)newValue - (int32_t)average) >>1 ));  
}

/******************************************************************************
 * @brief     Get Measurement Filtered Value
 * @param[in] loops
 * @param[in] type @ref MeasurementType 
 * @retval    None
 ******************************************************************************/
uint16_t GetFilteredValue(uint8_t loops, MeasurementType type)
{
  uint8_t i;
  uint32_t FilteredValue = 0;
  FilteredValue = GetInstantValue(type);
  for(i=0; i<loops; i++)
  {   
    FilteredValue = FilterMeasurement(FilteredValue,GetInstantValue(type));     
  }
  return FilteredValue;
} 

/******************************************************************************
 * @brief     Measurement Init
 * @retval    None
 ******************************************************************************/
void InitMeasurement(void)
{
	filteredMeasurements[Measurement_VBUS_Voltage]	= GetInstantVBUSVoltage();
	filteredMeasurements[Measurement_VBUS_Current]	= GetInstantVBUSCurrent();
	filteredMeasurements[Measurement_DP_Voltage]	  = GetInstantDPVoltage();
	filteredMeasurements[Measurement_DN_Voltage]		= GetInstantDNVoltage();
	filteredMeasurements[Measurement_CC1_Voltage]		= GetInstantCC1Voltage();
	filteredMeasurements[Measurement_CC2_Voltage]		= GetInstantCC2Voltage();
}

/******************************************************************************
 * @brief     Measure All
 * @retval    None
 ******************************************************************************/
void MeasureAll(void)
{
	uint32_t tickLastMeasureVoltage = 0;
	uint32_t tickLastMeasureCurrent = 0;
	
	uint32_t currentTick = HAL_GetTick();
	
	if((currentTick - tickLastMeasureVoltage)> VOLTAGE_MEASURE_INTERVAL)
	{    
		filteredMeasurements[Measurement_VBUS_Voltage] = FilterMeasurement(GetInstantVBUSVoltage(), filteredMeasurements[Measurement_VBUS_Voltage]);
		tickLastMeasureVoltage = currentTick;
	}
	
	if((currentTick - tickLastMeasureCurrent)> CURRENT_MEASURE_INTERVAL)
	{ 
		filteredMeasurements[Measurement_VBUS_Current] = FilterMeasurement(GetInstantVBUSCurrent(), filteredMeasurements[Measurement_VBUS_Current]);		
		tickLastMeasureCurrent = currentTick;
	}
}

/******************************************************************************
 * @brief     Get Filtered Measurement
 * @param[in] type @ref MeasurementType
 * @retval    filteredMeasurements[type]
 ******************************************************************************/
uint16_t GetFilteredMeasurement(MeasurementType type)
{
	return filteredMeasurements[type];
}
