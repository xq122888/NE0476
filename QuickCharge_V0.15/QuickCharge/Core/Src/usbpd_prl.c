#include "usbpd_prl.h"
#include "usbpd_phy_decode.h"
#include "usbpd_msgrcv.h"
#include "usbpd_msgtrans.h"
#include "usbpd_dpm_user.h"
#include "global.h"

/**
  * @brief   MsgID ���� 
  * @retval  ��
  */
void USBPD_IncreaseTransMsgID(void)
{
	if (gTransMsgID == 7)
	{
	  gTransMsgID = 0;
	}
	else
	{
		gTransMsgID++;
	}
}

/**
  * @brief   Э��㸴λ
  * @retval  ��
  */
USBPD_StatusTypeDef USBPD_ProtocolLayerReset(void)
{
	gTransMsgID    = 0;
	gExplicitFlag = false;
	gWaitFlag     = false;
	gNewReqFlag   = false;
	gPDEn         = true;
	return USBPD_OK;
}

