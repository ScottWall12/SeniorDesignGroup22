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

#define SyncSize 20 
uint8_t gtimeslot=0;

uint8_t Syncpulse[SyncSize]= {0,15,10,0,0,12,1,6,6,2,2,0,0,3,2,9,14,1,8,14};
uint8_t Data_IN[BufferSize] = {3,4,5,2,1,4,5,1};


//uint8_t Third_Byte[Data_IN[2]];



static void MX_TIM6_Init(void);
void DataTransmit(DataIn, DataSize); // these variables will come from DataParse and it will be called in there. 
// Only problem is with the sync pulse. Maybe if gtimeslot is changed to 0, I can call Datatransmit?
//uint8_t Data_Copy[Third_Byte];



int main(void)
{
/* HAL_Init Required, resets of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();

/* System Initialize */
	MX_GPIO_Init();
	MX_USART2_UART_Init();
	MX_UART4_Init();
	MX_USART3_UART_Init();
    MX_TIM6_Init();
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

	//HAL_Delay(900);
	HAL_GPIO_WritePin(GPIOB,LD1_Pin|LD2_Pin,GPIO_PIN_SET);

	//__HAL_UART_DISABLE(&huart4);
	//__HAL_UART_ENABLE(&huart4);

while(1)
  {
/* USB HOST Initialize */
	MX_USB_HOST_Process();
  }

}
/* DataTransmit module description:
Inputs, except for the sync pulse transmitted during time slot 0, are going to be the results data to be transmitted during the current time slot and will come in as Data_IN
The size of the data to be transmitted will come in as DataSize. 
This function passes the data and its size and the UART channel which the data should be transmitted on (UART8). This module will not check that the 
data transmitted is for the right channel for that time slot. 
The global variable gtimeslot is updated in the timer 6 interrupt, every time a 13.3ms timeslot has passed.
*/


void DataTransmit(Data_IN, DataSize)
{
	switch(gtimeslot)
	{
	case 0: HAL_UART_Transmit(&huart8, Syncpulse, SyncSize, 50); break;//syncpulse
	case 1: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break; 
	case 2: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 3: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 4: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 5: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 6: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 7: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	default:
	}
	
}











/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
