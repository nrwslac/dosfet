#! /bin/bash

cd /reg/g/pcds/epics-dev/nrw/iocs/dicon_gp600/current/diconScreens
source /reg/g/pcds/engineering_tools/latest/scripts/pcds_conda
pydm -m '{"SWITCH":"HPL:FSW:01"}' dicon.ui &

