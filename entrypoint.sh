#!/bin/bash
set -e

df -h 

echo "Hey FOOBAR, $(hostname) $(date)" >> /tmp/reports/Foo.out
ls -l /tmp/reports/Foo.out
cat /tmp/reports/Foo.out
echo

sleep 30

all_args=$@
/usr/share/dependency-check/bin/dependency-check.sh  ${all_args} 
