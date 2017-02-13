################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/FatFs/src/diskio.c \
../Middlewares/Third_Party/FatFs/src/ff.c \
../Middlewares/Third_Party/FatFs/src/ff_gen_drv.c 

OBJS += \
./Middlewares/Third_Party/FatFs/src/diskio.o \
./Middlewares/Third_Party/FatFs/src/ff.o \
./Middlewares/Third_Party/FatFs/src/ff_gen_drv.o 

C_DEPS += \
./Middlewares/Third_Party/FatFs/src/diskio.d \
./Middlewares/Third_Party/FatFs/src/ff.d \
./Middlewares/Third_Party/FatFs/src/ff_gen_drv.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/FatFs/src/%.o: ../Middlewares/Third_Party/FatFs/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -std=c99 -D__weak="__attribute__((weak))" -D__packed="__attribute__((__packed__))" -DUSE_HAL_DRIVER -DSTM32F767xx -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/STM32F7xx_HAL_Driver/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/Third_Party/FatFs/src/drivers" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/ST/STM32_USB_Host_Library/Core/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Middlewares/Third_Party/FatFs/src" -I"/Users/Abdulqadir/Documents/Senior Design/SD Prototype/Prototype/Drivers/CMSIS/Include"  -Os -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


