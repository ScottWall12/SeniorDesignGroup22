
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f7xx_hal.h"
#include "fatfs.h"
#include "usb_host.h"
#include "System Initialization.h"


uint8_t gtimeslot=0;

//uint8_t Third_Byte[Data_IN[2]];
void system_Init(void);
static void MX_TIM6_Init(void);
void DataTransmit(DataIn, DataSize); // these variables will come from DataParse and it will be called in there. 
// Only problem is with the sync pulse. Maybe if gtimeslot is changed to 0, I can call Datatransmit?
//uint8_t Data_Copy[Third_Byte];



int main(void)
{
	uint8_t oldslot=0; // to be used as a latch for determining time slot change
	uint8_t newslot=0;

/* HAL_Init Required, resets of all peripherals, Initializes the Flash interface and the Systick. */
	HAL_Init();
    system_Init();

/* Delay (ms) to make sure system is initialized */
	HAL_Delay(300);

while(1)
  {
/* USB HOST Initialize */
	MX_USB_HOST_Process();
	
	if(oldslot==newslot)//if the time slot has not changed, do nothing
	{
	}
	 else // if the time slot has changed
	 {DataTransmit();
	}
oldslot=newslot; // update the previous time slot value
newslot=gtimeslot; // update the current time slot value
	
  }

}

/*
 * system_Init module description:
 * The system is initialized. This includes UART/USART 2-8 for input and output of data,
 * TIM6 for timing purposes, USB host for writing in data, and other miscellaneous items.
 */
void system_Init() {
    /* System Initialize */
    MX_GPIO_Init();
 //   MX_USART2_UART_Init();
   // MX_UART4_Init();
   // MX_USART3_UART_Init();
   // MX_TIM6_Init();
    //MX_UART5_Init();
    //MX_USART6_UART_Init();
    //MX_UART7_Init();
    MX_UART8_Init();
    MX_NVIC_Init();
    MX_USB_HOST_Init();
    MX_FATFS_Init();
}

/* DataTransmit module description:
Inputs are going to be the results data to be transmitted during the current time slot and will come in as Data_IN
The size of the data to be transmitted will come in as DataSize. 
This function passes the data and its size and the UART channel which the data should be transmitted on (UART8). This module will not check that the 
data transmitted is for the right channel for that time slot. 
The global variable gtimeslot is updated in the timer 2 interrupt, every time a 13.3ms timeslot has passed.
*/


void DataTransmit(Data_IN, DataSize)
{ uint8_t* Data_IN;
	switch(gtimeslot)
	{
	case 0:  break; //syncpulse time slot
	case 1: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break; 
	case 2: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 3: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 4: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 5: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 6: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	case 7: HAL_UART_Transmit(&huart8, Data_IN, DataSize,50); break;
	default: break;
	}
	
}


