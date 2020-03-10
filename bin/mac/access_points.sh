#!/bin/bash

if [ -z "$1" ]; then

SSID=$1
  airport -s
else
  echo "Usage: "
  echo "  access_points.sh SSID"
  echo "Where SSID = the AP you want to query"
  exit 1 
fi
