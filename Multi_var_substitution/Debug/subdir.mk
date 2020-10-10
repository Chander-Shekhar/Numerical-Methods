################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../My_funcs.f95 \
../main.f95 

OBJS += \
./My_funcs.o \
./main.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

My_funcs.o: ../My_funcs.f95

main.o: ../main.f95


