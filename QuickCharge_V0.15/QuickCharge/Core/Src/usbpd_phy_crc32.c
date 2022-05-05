#include "usbpd_phy_crc32.h"
#include "global.h"
#include "stdio.h"

/**
  * @brief  Enter 8-bit input data to the CRC calculator.
  *         Specific data handling to optimize processing time.
  * @param  pBuffer pointer to the input data buffer
  * @param  BufferLength input data buffer length
  * @retval uint32_t CRC (returned value LSBs for CRC shorter than 32 bits)
  */
static uint32_t CRC_Handle_8(uint8_t pBuffer[], uint32_t BufferLength)
{
  uint32_t i; /* input data buffer index */
  uint16_t data;
  __IO uint16_t *pReg;

  /* Processing time optimization: 4 bytes are entered in a row with a single word write,
   * last bytes must be carefully fed to the CRC calculator to ensure a correct type
   * handling by the peripheral */
  for (i = 0U; i < (BufferLength / 4U); i++)
  {
    CRC->DR = ((uint32_t)pBuffer[4U * i] << 24U) | \
                         ((uint32_t)pBuffer[(4U * i) + 1U] << 16U) | \
                         ((uint32_t)pBuffer[(4U * i) + 2U] << 8U)  | \
                         (uint32_t)pBuffer[(4U * i) + 3U];
  }
  /* last bytes specific handling */
  if ((BufferLength % 4U) != 0U)
  {
    if ((BufferLength % 4U) == 1U)
    {
      *(__IO uint8_t *)(__IO void *)(CRC->DR) = pBuffer[4U * i];         /* Derogation MisraC2012 R.11.5 */
    }
    if ((BufferLength % 4U) == 2U)
    {
      data = ((uint16_t)(pBuffer[4U * i]) << 8U) | (uint16_t)pBuffer[(4U * i) + 1U];
      pReg = (__IO uint16_t *)(__IO void *)(CRC->DR);                    /* Derogation MisraC2012 R.11.5 */
      *pReg = data;
    }
    if ((BufferLength % 4U) == 3U)
    {
      data = ((uint16_t)(pBuffer[4U * i]) << 8U) | (uint16_t)pBuffer[(4U * i) + 1U];
      pReg = (__IO uint16_t *)(__IO void *)(CRC->DR);                    /* Derogation MisraC2012 R.11.5 */
      *pReg = data;

      *(__IO uint8_t *)(__IO void *)(CRC->DR) = pBuffer[(4U * i) + 2U];  /* Derogation MisraC2012 R.11.5 */
    }
  }

  /* Return the CRC computed value */
  return CRC->DR;
}

/**
  * @brief  CRC32 生成
  * @param  msgByte  待计算数据
  * @param  size     待计算数据长度	
  * @retval crc 结果
  */
uint32_t USBPD_PHY_CRC32Generate(uint8_t *msgByte, uint32_t size)
{
  uint32_t result;
	 	
	CRC->CR |= 0x1;//Reset CRC
  result = 0xFFFFFFFF ^ CRC_Handle_8(msgByte, size);		
	return result;
}

/**
  * @brief  CRC32 校验
  * @param  msgByte  待计算数据
  * @param  size     待计算数据长度	
  * @param  ref      参考值
  * @retval crc 结果
  */
USBPD_StatusTypeDef USBPD_PHY_CRC32Check(uint8_t *msgByte, uint32_t size, uint32_t ref)
{
  uint32_t result;
	 	
	CRC->CR |= 0x1;//Reset CRC
//  result = 0xFFFFFFFF ^ CRC_Handle_8((uint32_t *)msgByte, size);	
	
	if (result == ref)
	{
	  return USBPD_OK;
	}
	else
	{
		return USBPD_ERROR;
	}
}

