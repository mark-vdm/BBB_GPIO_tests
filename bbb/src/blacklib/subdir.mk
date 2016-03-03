################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/blacklib/BlackADC.cpp \
../src/blacklib/BlackCore.cpp \
../src/blacklib/BlackDirectory.cpp \
../src/blacklib/BlackGPIO.cpp \
../src/blacklib/BlackI2C.cpp \
../src/blacklib/BlackMutex.cpp \
../src/blacklib/BlackPWM.cpp \
../src/blacklib/BlackSPI.cpp \
../src/blacklib/BlackThread.cpp \
../src/blacklib/BlackTime.cpp \
../src/blacklib/BlackUART.cpp 

OBJS += \
./src/blacklib/BlackADC.o \
./src/blacklib/BlackCore.o \
./src/blacklib/BlackDirectory.o \
./src/blacklib/BlackGPIO.o \
./src/blacklib/BlackI2C.o \
./src/blacklib/BlackMutex.o \
./src/blacklib/BlackPWM.o \
./src/blacklib/BlackSPI.o \
./src/blacklib/BlackThread.o \
./src/blacklib/BlackTime.o \
./src/blacklib/BlackUART.o 

CPP_DEPS += \
./src/blacklib/BlackADC.d \
./src/blacklib/BlackCore.d \
./src/blacklib/BlackDirectory.d \
./src/blacklib/BlackGPIO.d \
./src/blacklib/BlackI2C.d \
./src/blacklib/BlackMutex.d \
./src/blacklib/BlackPWM.d \
./src/blacklib/BlackSPI.d \
./src/blacklib/BlackThread.d \
./src/blacklib/BlackTime.d \
./src/blacklib/BlackUART.d 


# Each subdirectory must supply rules for building sources it contributes
src/blacklib/%.o: ../src/blacklib/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	arm-linux-gnueabihf-g++ -D__GXX_EXPERIMENTAL_CXX0X__ -I/usr/arm-linux-gnueabihf/include/c++/4.8.2 -O0 -g3 -Wall -c -fmessage-length=0 -std=c++0x -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


