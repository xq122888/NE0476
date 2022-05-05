#include "usbpd_phy_4b5b.h"

/**
  * @brief 4B5B编码：4B -> 5B 
  * @param input  4b数据
  * @param output 5b数据
  */
uint8_t USBPD_PHY_4B5BEncode(uint8_t input)
{
	uint8_t output = 0;
	
	switch (input)
	{
		case 0x0:
			output = CODE_5B_0;//5'b11110
		  break;
		case 0x1:
			output = CODE_5B_1;//5'b01001
		  break;
		case 0x2:
			output = CODE_5B_2;//5'b10100
		  break;
		case 0x3:
			output = CODE_5B_3;//5'b10101
		  break;
		case 0x4:
			output = CODE_5B_4;//5'b01010
		  break;
		case 0x5:
			output = CODE_5B_5;//5'b01011
		  break;
		case 0x6:
			output = CODE_5B_6;//5'b01110
		  break;
		case 0x7:
			output = CODE_5B_7;//5'b01111
		  break;
		case 0x8:
			output = CODE_5B_8;//5'b10010
		  break;
		case 0x9:
			output = CODE_5B_9;//5'b10011
		  break;
		case 0xA:
			output = CODE_5B_A;//5'b10110
		  break;
		case 0xB:
			output = CODE_5B_B;//5'b10111
		  break;
		case 0xC:
			output = CODE_5B_C;//5'b11010
		  break;
		case 0xD:
			output = CODE_5B_D;//5'b11011
		  break;
		case 0xE:
			output = CODE_5B_E;//5'b11100
		  break;
		case 0xF:
			output = CODE_5B_F;//5'b11101
		  break;
		default:
			output = CODE_5B_0;
		  break;
	}
	return output;
}

/**
  * @brief 5B4B解码：5B -> 4B 
  * @param input  5b数据
  * @param output 4b数据
  */
uint8_t USBPD_PHY_5B4BDecode(uint8_t input)
{
	uint8_t output = 0;
	
	switch (input)
	{
		case 0x1e:  //5'b11110
			output = 0x0;
		  break;
		case 0x09:  //5'b01001 
			output = 0x1;
		  break;
		case 0x14:  //5'b10100
			output = 0x2;
		  break;
		case 0x15:  //5'b10101
			output = 0x3;
		  break;
		case 0x0a:  //5'b01010
			output = 0x4;
		  break;
		case 0x0b:  //5'b01011
			output = 0x5;
		  break;
		case 0x0e:  //5'b01110
			output = 0x6;
		  break;
		case 0x0f:  //5'b01111
			output = 0x7;
		  break;
		case 0x12:  //5'b10010
			output = 0x8;
		  break;
		case 0x13:  //5'b10011
			output = 0x9;
		  break;
		case 0x16:  //5'b10110
			output = 0xa;
		  break;
		case 0x17:  //5'b10111
			output = 0xb;
		  break;
		case 0x1a:  //5'b11010
			output = 0xc;
		  break;
		case 0x1b:  //5'b11011
			output = 0xd;
		  break;
		case 0x1c:  //5'b11100
			output = 0xe;
		  break;
		case 0x1d:  //5'b11101
			output = 0xf;
		  break;
		default:
			output = 0;
		  break;
	}
	return output;
}

/**
  * @brief  5B数据转换：bit -> hex 
  * @param  input  比特数据
  * @retval 5b数据(十六进制)
  */
uint8_t USBPD_PHY_Cov5BCodeTo5BValue(uint8_t *input)
{     
	uint8_t data = input[0] + input[1]*2 + input[2]*4 + input[3]*8 + input[4]*16;	
	return data;
}

/**
  * @brief 5B数据转换：hex -> bit 
  * @param input  5b数据(十六进制)
  * @param output 比特数据
  */
void USBPD_PHY_Cov5BValueTo5BCode(uint8_t input, uint8_t *output)
{
	output[0] = input & 0x1;
	output[1] = (input >> 1) & (0x1);
	output[2] = (input >> 2) & (0x1);
	output[3] = (input >> 3) & (0x1);
	output[4] = (input >> 4) & (0x1);
}

