#!/bin/bash
set -e
all_args=$@
sleep 3600
/usr/share/dependency-check/bin/dependency-check.sh  ${all_args} 
