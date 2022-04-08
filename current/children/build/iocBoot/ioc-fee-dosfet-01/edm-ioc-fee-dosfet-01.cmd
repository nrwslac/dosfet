#! /bin/bash

# Setup the common directory env variables
#if [ -e /reg/g/pcds/pyps/config/common_dirs.sh ]; then
    #source /reg/g/pcds/pyps/config/common_dirs.sh
#else
    #source /afs/slac/g/pcds/config/common_dirs.sh
#fi

export IOC_PV=IOC:FEE:DOSFET:01

# Setup edm environment
#source $SETUP_SITE_TOP/epicsenv-cur.sh

# Setup pydm environment
source /reg/g/pcds/engineering_tools/latest/scripts/pcds_conda
pushd /reg/g/pcds/epics-dev/nrw/iocs/dosfet/current

export TOP_SCREEN=dosfetScreens/dosfet.edl
edm -x -eolc	\
	-m "device=FEE:DOSFET:01"	\
	${TOP_SCREEN}  &
