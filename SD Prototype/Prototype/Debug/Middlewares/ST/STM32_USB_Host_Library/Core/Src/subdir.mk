################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.c \
../Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.c \
../Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.c \
../Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.c 

OBJS += \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.o \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.o \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.o \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.o 

C_DEPS += \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.d \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.d \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.d \
./Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_USB_Host_Library/Core/Src/%.o: ../Middlewares/ST/STM32_USB_Host_Library/Core/Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -std=c99 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F767xx -I"/Users/scottwall/Desktop/untitled folder/SeniorDesignGroup22/SD Prototype/Prototype/Inc" -I"/Users/scottwall/Desktop/untitled folder/SeniorDesignGroup22/SD Prototype/Prototype/Drivers/STM32F7xx_HAL_Driver/Inc" -I"/Users/scottwall/Desktop/untitled folder/SeniorDesignGroup22/SD Prototype/Prototype/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"/Users/scottwall/Desktop/untitled folder/SeniorDesignGroup22/SD Prototype/Prototype/Middlewares/Third_Party/FatFs/src/drivers" -I"/Users/scottwall/Desktop/untitled folder/SeniorDesignGroup22/SD Prototype/Prototype/Middlewares/ST/STM32_USB_Host_Library/Core/Inc" -I"/Users/scottwall/Desktop/untitled folder/SeniorDesignGroup22/SD Prototype/Prototype/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc" -I"/Users/scottwall/Desktop/untitled folder/SeniorDesignGroup22/SD Prototype/Prototype/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"/Users/scottwall/Desktop/untitled folder/SeniorDesignGroup22/SD Prototype/Prototype/Middlewares/Third_Party/FatFs/src" -I"/Users/scottwall/Desktop/untitled folder/SeniorDesignGroup22/SD Prototype/Prototype/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


