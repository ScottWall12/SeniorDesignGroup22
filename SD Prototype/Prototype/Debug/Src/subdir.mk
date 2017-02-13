################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/Syscalls.c \
../Src/System\ Initialize.c \
../Src/fatfs.c \
../Src/main.c \
../Src/stm32f7xx_hal_msp.c \
../Src/stm32f7xx_it.c \
../Src/stm32f7xx_nucleo_144.c \
../Src/system_stm32f7xx.c \
../Src/usb_host.c \
../Src/usbh_conf.c 

OBJS += \
./Src/Syscalls.o \
./Src/System\ Initialize.o \
./Src/fatfs.o \
./Src/main.o \
./Src/stm32f7xx_hal_msp.o \
./Src/stm32f7xx_it.o \
./Src/stm32f7xx_nucleo_144.o \
./Src/system_stm32f7xx.o \
./Src/usb_host.o \
./Src/usbh_conf.o 

C_DEPS += \
./Src/Syscalls.d \
./Src/System\ Initialize.d \
./Src/fatfs.d \
./Src/main.d \
./Src/stm32f7xx_hal_msp.d \
./Src/stm32f7xx_it.d \
./Src/stm32f7xx_nucleo_144.d \
./Src/system_stm32f7xx.d \
./Src/usb_host.d \
./Src/usbh_conf.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -std=c99 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F767xx -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/STM32F7xx_HAL_Driver/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/Third_Party/FatFs/src/drivers" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/ST/STM32_USB_Host_Library/Core/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/Third_Party/FatFs/src" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Src/System\ Initialize.o: ../Src/System\ Initialize.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -std=c99 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F767xx -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/STM32F7xx_HAL_Driver/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/Third_Party/FatFs/src/drivers" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/ST/STM32_USB_Host_Library/Core/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/Third_Party/FatFs/src" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"Src/System Initialize.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


