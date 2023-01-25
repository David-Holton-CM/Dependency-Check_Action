#!/bin/bash
set -e

df -h 

pause 30

all_args=$@
/usr/share/dependency-check/bin/dependency-check.sh  ${all_args} 
