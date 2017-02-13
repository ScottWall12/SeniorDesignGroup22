/**
  ******************************************************************************
  * File Name          : main.c
  * Description        : Main program body
  ******************************************************************************
  *
  * Copyright (c) 2017 STMicroelectronics International N.V. 
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without 
  * modification, are permitted, provided that the following conditions are met:
  *
  * 1. Redistribution of source code must retain the above copyright notice, 
  *    this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  *    this list of conditions and the following disclaimer in the documentation
  *    and/or other materials provided with the distribution.
  * 3. Neither the name of STMicroelectronics nor the names of other 
  *    contributors to this software may be used to endorse or promote products 
  *    derived from this software without specific written permission.
  * 4. This software, including modifications and/or derivative works of this 
  *    software, must execute solely and exclusively on microcontroller or
  *    microprocessor devices manufactured by or for STMicroelectronics.
  * 5. Redistribution and use of this software other than as permitted under 
  *    this license is void and will automatically terminate your rights under 
  *    this license. 
  *
  * THIS SOFTWARE IS PROVIDED BY STMICROELECTRONICS AND CONTRIBUTORS "AS IS" 
  * AND ANY EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING, BUT NOT 
  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
  * PARTICULAR PURPOSE AND NON-INFRINGEMENT OF THIRD PARTY INTELLECTUAL PROPERTY
  * RIGHTS ARE DISCLAIMED TO THE FULLEST EXTENT PERMITTED BY LAW. IN NO EVENT 
  * SHALL STMICROELECTRONICS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
  * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
  * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f7xx_hal.h"
#include "fatfs.h"
#include "usb_host.h"
#include "System Initialization.h"

uint8_t Data_IN[BufferSize] = {3,4,5,2,1,4,5,1};


//uint8_t Third_Byte[Data_IN[2]];



//uint8_t Data_Copy[Third_Byte];



int main(void)
{
/* HAL_Init Required, resets of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

/* System Initialize */
	MX_GPIO_Init();
	MX_USART2_UART_Init();
	MX_UART4_Init();

	MX_UART5_Init();
	MX_USART6_UART_Init();
	MX_UART7_Init();
	MX_UART8_Init();
	MX_NVIC_Init();
	MX_USB_HOST_Init();
	MX_FATFS_Init();

/* Delay (ms) to make sure system is initialized */
	HAL_Delay(300);


//uint8_t Data_Copy[Third_Byte];

	HAL_UART_Transmit(&huart5, Data_IN, BufferSize,50);

	//HAL_UART_Transmit(&huart4, Data_Copy,Third_Byte,32);



	//Toggle_LEDs();

	//HAL_Delay(900);
	HAL_GPIO_WritePin(GPIOB,LD1_Pin|LD2_Pin,GPIO_PIN_SET);









	//StopToggle_LEDs();


	//__HAL_UART_DISABLE(&huart4);
	//__HAL_UART_ENABLE(&huart4);

	//UART4_IRQHandler();




while(1)
  {

/* USB HOST Initialize */
	MX_USB_HOST_Process();
	//UART4_IRQHandler();



  }


}














/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
