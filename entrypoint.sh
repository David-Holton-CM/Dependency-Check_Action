#!/bin/bash
set -e

all_args=$@
/usr/share/dependency-check/bin/dependency-check.sh  ${all_args}

echo;echo ======================================; echo Now Explore
sleep 300
echo;echo ======================================; echo I woke up...Bye