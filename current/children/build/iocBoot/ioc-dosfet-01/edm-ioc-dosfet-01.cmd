#! /bin/bash

# Setup the common directory env variables
if [ -e /reg/g/pcds/pyps/config/common_dirs.sh ]; then
	source /reg/g/pcds/pyps/config/common_dirs.sh
else
	source /afs/slac/g/pcds/config/common_dirs.sh
fi

export IOC_PV=IOC:DOSFET:01

# Setup edm environment
source $SETUP_SITE_TOP/epicsenv-cur.sh
pushd /reg/g/pcds/epics-dev/nrw/iocs/dosfet/current

export TOP_SCREEN=dosfetScreens/dosfet.edl
edm -x -eolc	\
	-m "device=DOSFET:01"	\
	${TOP_SCREEN}  &
