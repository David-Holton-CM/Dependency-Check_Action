#!/bin/bash
set -e

echo;echo ======================================; echo First Explore Period
sleep 300
echo;echo ======================================; echo I woke up...Running DepCheck
echo;echo

all_args=$@
/usr/share/dependency-check/bin/dependency-check.sh  ${all_args}

echo;echo ======================================; echo Post Explore Period
sleep 300
echo;echo ======================================; echo I woke up...Bye