#!/bin/bash
H=`date +"%H"`
MORNING=9
EVENING=17

if [[ H -gt MORNING && H -lt EVENING ]]; then
  xbacklight -set 90 -d :0
else
  xbacklight -set 25 -d :0
fi
