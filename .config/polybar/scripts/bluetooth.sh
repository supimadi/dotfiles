##!/usr/bin/env bash
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo ""
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo "%{F#FFEA13}"
  fi
  echo "%{F#287AA9}"

fi

