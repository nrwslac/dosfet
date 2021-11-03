TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build an ioc application
# Use PROD_IOC_RTEMS for RTEMS only
# Use PROD_IOC_Linux for Linux only
PROD_IOC = dosfet

# dosfet.dbd will be created and installed
DBD += dosfet.dbd

# dosfet.dbd will be made up from these files:
dosfet_DBD += base.dbd
dosfet_DBD += iocAdmin.dbd
dosfet_DBD += asSupport.dbd
dosfet_DBD += asyn.dbd
dosfet_DBD += drvAsynSerialPort.dbd
dosfet_DBD += drvAsynIPPort.dbd
dosfet_DBD += stream.dbd

# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
dosfet_SRCS += dosfet_registerRecordDeviceDriver.cpp
dosfet_SRCS_DEFAULT += dosfetMain.cpp

# Add locally compiled object code
#dosfet_SRCS += dbSubExample.c

dosfet_LIBS += devIocStats
dosfet_LIBS += autosave
dosfet_LIBS += asyn
dosfet_LIBS += stream
dosfet_LIBS += $(EPICS_BASE_IOC_LIBS)

ifneq '$(T_A)' 'RTEMS-beatnik'
PROD_SYS_LIBS_DEFAULT += pcre
SHRLIB_DEPLIB_DIRS += $(PCRE_LIB)
endif

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

