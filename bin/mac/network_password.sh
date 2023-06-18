#!/bin/bash

if [ -n "$1" ]; then
  security find-generic-password -D "AirPort network password" -a "$1" -gw
else
  echo "Usage: "
  echo "  $0 SSID"
  echo "Where SSID = A wireless network that you have previously been authenticated on."
	echo "             You will be prompted for an Administrator user name and password."
  exit 1 
fi
