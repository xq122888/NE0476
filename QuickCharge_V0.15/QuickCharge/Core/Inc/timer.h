#ifndef TIMER_H
#define TIMER_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>
	
void StopAllTimers(void);
//==================  Timer1 ===========================
void StopTimer1(void);
void StartTimer1(uint32_t msTimeOutPeriod);
void RestartTimer1(void);
bool IsTimer1Expired(void);
//================== Timer2 ===========================
void StopTimer2(void);
void StartTimer2(uint32_t msTimeOutPeriod);
void RestartTimer2(void);
bool IsTimer2Expired(void);

#ifdef __cplusplus
}
#endif

#endif // TIMER_H
