#!/bin/bash

if [ -z "$1" ]; then
  echo "Gunakan: bash track-ip.sh <ip>"
  exit 1
fi

IP=$1

curl -s "https://ipinfo.io/$IP/json" | jq .