################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
F95_SRCS += \
../Backsub.f95 \
../Pivoting.f95 \
../gauss.f95 \
../main.f95 \
../print.f95 

OBJS += \
./Backsub.o \
./Pivoting.o \
./gauss.o \
./main.o \
./print.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.f95
	@echo 'Building file: $<'
	@echo 'Invoking: GNU Fortran Compiler'
	gfortran -funderscoring -O0 -g -Wall -c -fmessage-length=0 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Backsub.o: ../Backsub.f95

Pivoting.o: ../Pivoting.f95

gauss.o: ../gauss.f95

main.o: ../main.f95

print.o: ../print.f95


