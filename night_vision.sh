#!/bin/sh

# redshift only provide three temperature according to the current time, 
# - NIGHT
# - TRANSITION
# - DAYTIME
# But I need more flexible temperature, so I write this scripts to adjust temp manually.
#
# remember to disable auto start redshift.

killall -q redshift

if [ "$1" = "h" ];then # high temp -> blue
    args="-O 9999"
elif [ "$1" = "m" ];then # middle temp
    args="-O 5500"
elif [ "$1" = "l" ];then # low temp -> red
    args="-O 1000"
elif [ "$1" = "x" ];then # reset temp -> 6500
    args="-x"
else
    args="-O $1"
fi

redshift -v -l 40:116 -m randr "$args"
