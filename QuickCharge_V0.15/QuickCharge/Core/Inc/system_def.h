#ifndef SYSTEM_H
#define SYSTEM_H

#ifdef __cplusplus
extern "C" {
#endif


#define _QC_ADAPTER_ENABLE

/******************************************************************************
 * ADC Channel
 *****************************************************************************/
#define V_VBUS_ADC_CHANNEL      LL_ADC_CHANNEL_12
#define I_VBUS_ADC_CHANNEL    	LL_ADC_CHANNEL_2
#define V_CC1_ADC_CHANNEL 	    LL_ADC_CHANNEL_3
#define V_CC2_ADC_CHANNEL 	    LL_ADC_CHANNEL_4
#define V_DP_ADC_CHANNEL 	      LL_ADC_CHANNEL_11
#define V_DN_ADC_CHANNEL        LL_ADC_CHANNEL_5

/******************************************************************************
 * Safety Measurement
 *****************************************************************************/
#define VOLTAGE_MEASURE_INTERVAL					200		//ms
#define CURRENT_MEASURE_INTERVAL				  200		//ms

#define MEASURE_FLITER_LOOP               10
#define AVERAGE_NUM                       10

/******************************************************************************
 * Safety Measurement
 *****************************************************************************/
#define ADAPTER_SEL_5V                  	5000
#define ADAPTER_SEL_9V	                  9000
#define ADAPTER_SEL_12V	                  12000
#define USBNegativeD_2P35V	              2035 
#define USBNegativeD_0P3V	                300
#define AVERAGE_NUM                       10

#ifdef __cplusplus
}
#endif

#endif // SYSTEM_H
