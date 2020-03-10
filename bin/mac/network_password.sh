#!/bin/bash

if [ -n "$1" ]; then
  security find-generic-password -D "AirPort network password" -a "$1" -gw
else
  echo "Usage: "
  echo "  access_points.sh SSID"
  echo "Where SSID = the AP you want to query"
  exit 1 
fi
