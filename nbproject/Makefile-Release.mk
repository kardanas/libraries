#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=avr-ranlib
CC=avr-gcc
CCC=avr-g++
CXX=avr-g++
FC=gfortran
AS=avr-as
AR=avr-ar

# Macros
CND_PLATFORM=Arduino-Windows
CND_DLIB_EXT=dll
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/LiquidCrystal/LiquidCrystal.o \
	${OBJECTDIR}/Servo/avr/Servo.o \
	${OBJECTDIR}/Servo/sam/Servo.o \
	${OBJECTDIR}/Servo/samd/Servo.o


# C Compiler Flags
CFLAGS=-c -g -Os -Wall -Wextra -std=gnu11 -ffunction-sections -fdata-sections -MMD -fno-fat-lto-objects -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10610 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR

# CC Compiler Flags
CCFLAGS=-Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10610 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR
CXXFLAGS=-Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -MMD -mmcu=atmega2560 -DF_CPU=16000000L -DARDUINO=10610 -DARDUINO_AVR_MEGA2560 -DARDUINO_ARCH_AVR

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/libraries.a

${CND_DISTDIR}/${CND_CONF}/libraries.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/libraries.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/libraries.a ${OBJECTFILES} 

${OBJECTDIR}/LiquidCrystal/LiquidCrystal.o: LiquidCrystal/LiquidCrystal.cpp 
	${MKDIR} -p ${OBJECTDIR}/LiquidCrystal
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../core/core -I../core -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/LiquidCrystal/LiquidCrystal.o LiquidCrystal/LiquidCrystal.cpp

${OBJECTDIR}/Servo/avr/Servo.o: Servo/avr/Servo.cpp 
	${MKDIR} -p ${OBJECTDIR}/Servo/avr
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../core/core -I../core -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Servo/avr/Servo.o Servo/avr/Servo.cpp

${OBJECTDIR}/Servo/sam/Servo.o: Servo/sam/Servo.cpp 
	${MKDIR} -p ${OBJECTDIR}/Servo/sam
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../core/core -I../core -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Servo/sam/Servo.o Servo/sam/Servo.cpp

${OBJECTDIR}/Servo/samd/Servo.o: Servo/samd/Servo.cpp 
	${MKDIR} -p ${OBJECTDIR}/Servo/samd
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../core/core -I../core -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Servo/samd/Servo.o Servo/samd/Servo.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/libraries.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
