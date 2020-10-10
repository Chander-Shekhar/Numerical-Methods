################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../Pivoting.f95 \
../func.f95 \
../main.f95 \
../print.f95 

OBJS += \
./Pivoting.o \
./func.o \
./main.o \
./print.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Pivoting.o: ../Pivoting.f95

func.o: ../func.f95

main.o: ../main.f95

print.o: ../print.f95


