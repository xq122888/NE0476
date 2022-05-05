#include "usbpd_dpm_user.h"
#include "global.h"

USBPD_SNKPowerRequest_TypeDef DPM_SNKRequestedPower = 
{
	.MaxOperatingCurrentInmAunits = USBPD_CORE_PDO_SNK_FIXED_MAX_CURRENT,
	.OperatingVoltageInmVunits    = USBPD_BOARD_REQUESTED_VOLTAGE_MV,
	.MaxOperatingVoltageInmVunits = USBPD_BOARD_MAX_VOLTAGE_MV,
	.MinOperatingVoltageInmVunits = USBPD_BOARD_MIN_VOLTAGE_MV,
	.OperatingPowerInmWunits      = (USBPD_CORE_PDO_SNK_FIXED_MAX_CURRENT * USBPD_BOARD_REQUESTED_VOLTAGE_MV)/1000,
	.MaxOperatingPowerInmWunits   = (USBPD_CORE_PDO_SNK_FIXED_MAX_CURRENT * USBPD_BOARD_MAX_VOLTAGE_MV)/1000
};

/**
  * @brief  Examinate a given SRC PDO to check if matching with SNK capabilities.
  * @param  SrcPDO              Selected SRC PDO (32 bits)
  * @param  PtrRequestedVoltage Pointer on Voltage value that could be reached if SRC PDO is requested (only valid if USBPD_TRUE is returned) in mV
  * @param  PtrRequestedPower   Pointer on Power value that could be reached if SRC PDO is requested (only valid if USBPD_TRUE is returned) in mW
  * @retval USBPD_FALSE of USBPD_TRUE (USBPD_TRUE returned in SRC PDO is considered matching with SNK profile)
  */
uint32_t USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO(uint32_t SrcPDO, uint32_t* PtrRequestedVoltage, uint32_t* PtrRequestedPower)
{
	uint32_t match = USBPD_FALSE;
	USBPD_PDO_TypeDef srcpdo;
  uint16_t i, srcvoltage50mv, srcmaxcurrent10ma;
  uint16_t snkvoltage50mv, snkopcurrent10ma;
  uint32_t maxrequestedpower, currentrequestedpower;
  uint32_t maxrequestedvoltage, currentrequestedvoltage;
	
	srcpdo.d32 = SrcPDO;
	
	/* Set default output values */
  maxrequestedpower    = 0;
  maxrequestedvoltage  = 0;

  /* SRC Fixed Supply PDO */
  if (USBPD_CORE_PDO_TYPE_FIXED == srcpdo.GenericPDO.PowerObject)
  {
	  srcvoltage50mv = srcpdo.SRCFixedPDO.VoltageIn50mVunits;
		srcmaxcurrent10ma = srcpdo.SRCFixedPDO.MaxCurrentIn10mAunits;

		/* Loop through SNK PDO list */
		for (i=0; i<SNK_FIXED_PDO_NUM; i++)
		{
			currentrequestedpower = 0;
			currentrequestedvoltage = 0;

			snkvoltage50mv = gSNKFixedPDOList[i].SNKFixedPDO.VoltageIn50mVunits;
			snkopcurrent10ma = gSNKFixedPDOList[i].SNKFixedPDO.OperationalCurrentIn10mAunits;
			/* Match if :
					 SNK Voltage = SRC Voltage
					 &&
					 SNK Op Current <= SRC Max Current

				 Requested Voltage : SNK Voltage
				 Requested Op Current : SNK Op Current
				 Requested Max Current : SNK Op Current
			*/
			if ((snkvoltage50mv == srcvoltage50mv)
					&&(snkopcurrent10ma <= srcmaxcurrent10ma))
			{
				currentrequestedpower = (snkvoltage50mv * snkopcurrent10ma) / 2; /* to get value in mw */
				currentrequestedvoltage = snkvoltage50mv;
			}
			if (currentrequestedpower > maxrequestedpower)
			{
				match = USBPD_TRUE;
				maxrequestedpower   = currentrequestedpower;
				maxrequestedvoltage = currentrequestedvoltage;
			}		
		}
  }
	else 
	{
		return USBPD_FALSE;
	}
	
	if (maxrequestedpower > 0)
  {
    *PtrRequestedPower   = maxrequestedpower;
    *PtrRequestedVoltage = maxrequestedvoltage * 50; /* value in mV */
  }
  return(match);
}

/**
  * @brief  Find PDO index that offers the most amount of power and in accordance with SNK capabilities.
  * @param  PtrRequestPowerDetails  Sink requested power details structure pointer
  * @retval Index of PDO within source capabilities message (DPM_NO_SRC_PDO_FOUND indicating not found)
  */
uint32_t DPM_FindVoltageIndex(USBPD_DPM_SNKPowerRequestDetails_TypeDef* PtrRequestPowerDetails)
{
	USBPD_PDO_TypeDef  pdo;
  uint32_t voltage, reqvoltage, allowablepower, maxpower;
  uint32_t curr_index = DPM_NO_SRC_PDO_FOUND, temp_index;

  allowablepower = 0;
  maxpower       = 0;
  reqvoltage     = 0;
  voltage        = 0;

  /* search the better PDO in the list of source PDOs */
  for(temp_index = 0; temp_index < gSRCFixedPDONum; temp_index++)
  {
		pdo.d32 = gSRCFixedPDOList[temp_index].d32;
    /* check if the received source PDO is matching any of the SNK PDO */
    allowablepower = 0;
    if (USBPD_TRUE == USBPD_DPM_SNK_EvaluateMatchWithSRCFixedPDO(pdo.d32, &voltage, &allowablepower))
    {
      /* choose the "better" PDO, in this case only the distance in absolute value from the target voltage */
      if (allowablepower >= maxpower)
      {
        /* Add additional check for compatibility of this SRC PDO with port characteristics (defined in DPM_USER_Settings) */
        if (  (voltage >= DPM_SNKRequestedPower.MinOperatingVoltageInmVunits)
            &&(voltage <= DPM_SNKRequestedPower.MaxOperatingVoltageInmVunits)
            &&(allowablepower <= DPM_SNKRequestedPower.MaxOperatingPowerInmWunits))
        {
          /* consider the current PDO the better one until now */
          curr_index = temp_index;
          maxpower   = allowablepower;
          reqvoltage = voltage;
        }
      }
    }
  }

  if (curr_index != DPM_NO_SRC_PDO_FOUND)
  {
    PtrRequestPowerDetails->MaxOperatingCurrentInmAunits = DPM_SNKRequestedPower.MaxOperatingCurrentInmAunits;
    PtrRequestPowerDetails->OperatingCurrentInmAunits    = (1000 * maxpower)/voltage;
    PtrRequestPowerDetails->MaxOperatingPowerInmWunits   = DPM_SNKRequestedPower.MaxOperatingPowerInmWunits;
    PtrRequestPowerDetails->OperatingPowerInmWunits      = maxpower;
    PtrRequestPowerDetails->RequestedVoltageInmVunits    = reqvoltage;
  }
  return curr_index;
}

/**
  * @brief  Build RDO to be used in Request message according to selected PDO from received SRC Capabilities
  * @param  PortNum           Port number
  * @param  IndexSrcPDO       Index on the selected SRC PDO (value between 0 to 6)
  * @param  PtrRequestPowerDetails  Sink requested power details structure pointer
  * @param  Rdo               Pointer on the RDO
  * @param  PtrPowerObject    Pointer on the selected power object
  * @retval None
  */
void DPM_SNK_BuildRDOfromSelectedFixedPDO(uint8_t IndexSrcPDO, USBPD_DPM_SNKPowerRequestDetails_TypeDef* PtrRequestPowerDetails,
                                          USBPD_SNKRDO_TypeDef* Rdo)
{
  uint32_t mv = 0, mw = 0, ma = 0, size = SNK_FIXED_PDO_NUM;
  USBPD_PDO_TypeDef  pdo;

  /* Initialize RDO */
  Rdo->d32 = 0;

	pdo.d32 = gSRCFixedPDOList[0].d32;
  /* If no valid SNK PDO or if no SRC PDO match found (index>=nb of valid received SRC PDOs */
  if ((size < 1) || (IndexSrcPDO >= gSRCFixedPDONum))
  {
    /* USBPD_DPM_EvaluateCapabilities: Mismatch, could not find desired pdo index */
    Rdo->FixedVariableRDO.ObjectPosition = 1;
    Rdo->FixedVariableRDO.OperatingCurrentIn10mAunits  = pdo.SRCFixedPDO.MaxCurrentIn10mAunits;
    Rdo->FixedVariableRDO.MaxOperatingCurrent10mAunits = DPM_SNKRequestedPower.MaxOperatingCurrentInmAunits / 10;
    Rdo->FixedVariableRDO.CapabilityMismatch           = 1;
    Rdo->FixedVariableRDO.USBCommunicationsCapable     = 0;
    /* USBPD_DPM_EvaluateCapabilities: Mismatch, could not find desired pdo index */
    return;
  }

  /* Set the Object position */
  Rdo->GenericRDO.ObjectPosition               = IndexSrcPDO + 1;
  Rdo->GenericRDO.NoUSBSuspend                 = 1;

	/* Extract power information from Power Data Object */
	pdo.d32 = gSRCFixedPDOList[IndexSrcPDO].d32;
	
  /* Retrieve request details from SRC PDO selection */
  mv = PtrRequestPowerDetails->RequestedVoltageInmVunits;
  ma = PtrRequestPowerDetails->OperatingCurrentInmAunits;

  if (USBPD_CORE_PDO_TYPE_FIXED == pdo.GenericPDO.PowerObject)
  {
		/* USBPD_DPM_EvaluateCapabilities: Mismatch, less power offered than the operating power */
		ma = USBPD_MIN(ma, DPM_SNKRequestedPower.MaxOperatingCurrentInmAunits);
		mw = (ma * mv)/1000; /* mW */
		Rdo->FixedVariableRDO.OperatingCurrentIn10mAunits  = ma / 10;
		Rdo->FixedVariableRDO.MaxOperatingCurrent10mAunits = ma / 10;
		if(mw < DPM_SNKRequestedPower.OperatingPowerInmWunits)
		{
			/* USBPD_DPM_EvaluateCapabilities: Mismatch, less power offered than the operating power */
			Rdo->FixedVariableRDO.MaxOperatingCurrent10mAunits = DPM_SNKRequestedPower.MaxOperatingCurrentInmAunits / 10;
			Rdo->FixedVariableRDO.CapabilityMismatch = 1;
		}
	}
}

