#include "timer.h"

static uint32_t msGenTimeoutPeriod1;// = 0;
static uint32_t msGenStartPoint1;// = 0;
static bool bStartTimer1;// = false;

static uint32_t msGenTimeoutPeriod2;// = 0;
static uint32_t msGenStartPoint2;// = 0;
static bool bStartTimer2;// = false;


void StopAllTimers(void)
{
  bStartTimer1 = false;
  bStartTimer2 = false;
}

//==================  Timer1 ===========================

void StopTimer1(void)
{  
  bStartTimer1= false;
}

void StartTimer1(uint32_t msTimeOutPeriod)
{
  msGenTimeoutPeriod1 = msTimeOutPeriod;
  msGenStartPoint1 = HAL_GetTick();
  bStartTimer1 = true;
}

void RestartTimer1(void)
{
  msGenStartPoint1 = HAL_GetTick();
}
  

bool IsTimer1Expired(void)
{ 
  if(bStartTimer1)
  {
    if((HAL_GetTick() - msGenStartPoint1) > msGenTimeoutPeriod1)
    {
      return true;
    }
  }
  
  return false;
}


//================== Timer2 ===========================
void StopTimer2(void)
{  
  bStartTimer2= false;
}

void StartTimer2(uint32_t msTimeOutPeriod)
{
  msGenTimeoutPeriod2 = msTimeOutPeriod;
  msGenStartPoint2 = HAL_GetTick();
  bStartTimer2 = true;
}

void RestartTimer2(void)
{
  msGenStartPoint2 = HAL_GetTick();
}

bool IsTimer2Expired(void)
{  
  if(bStartTimer2)
  {
    if((HAL_GetTick() - msGenStartPoint2) > msGenTimeoutPeriod2)
    {
      return true;
    }
  }
  return false;
}


