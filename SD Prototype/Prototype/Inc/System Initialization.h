/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "stm32f7xx_hal.h"
#include "fatfs.h"
#include "usb_host.h"



/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */
UART_HandleTypeDef huart2;
UART_HandleTypeDef huart3;
UART_HandleTypeDef huart4;
UART_HandleTypeDef huart5;
UART_HandleTypeDef huart6;
UART_HandleTypeDef huart7;
UART_HandleTypeDef huart8;
/* USER CODE END PV */
/* Private variables ---------------------------------------------------------*/



/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
void Error_Handler(void);
void MX_GPIO_Init(void);
void MX_USART2_UART_Init(void);
void MX_USART3_UART_Init(void);
void MX_UART4_Init(void);
void MX_UART5_Init(void);
void MX_USART6_UART_Init(void);
void MX_UART7_Init(void);
void MX_UART8_Init(void);
void MX_NVIC_Init(void);
void Toggle_LEDs(void);
void StopToggle_LEDs(void);
/* USER CODE END PFP */
/* Private function prototypes -----------------------------------------------*/


