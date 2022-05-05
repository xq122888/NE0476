#ifndef MEASURE_H
#define MEASURE_H

#ifdef __cplusplus
extern "C" {
#endif

#include "stdint.h"


typedef enum
{
  Measurement_VBUS_Voltage,
  Measurement_VBUS_Current,
  Measurement_DP_Voltage,
  Measurement_DN_Voltage, 
  Measurement_CC1_Voltage,
	Measurement_CC2_Voltage,
  MeasurementCount
}MeasurementType;

uint16_t GetInstantValue(MeasurementType type);
uint16_t GetAverageValue(uint8_t loops, MeasurementType type);
uint16_t GetInstantVBUSVoltage(void);
	
#ifdef __cplusplus
}
#endif

#endif // MEASURE_H
