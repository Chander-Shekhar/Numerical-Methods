################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../Inverse.f95 \
../Jacobian.f95 \
../Multi.f95 \
../main.f95 \
../my_func.f95 

OBJS += \
./Inverse.o \
./Jacobian.o \
./Multi.o \
./main.o \
./my_func.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Inverse.o: ../Inverse.f95

Jacobian.o: ../Jacobian.f95

Multi.o: ../Multi.f95

main.o: ../main.f95

my_func.o: ../my_func.f95


