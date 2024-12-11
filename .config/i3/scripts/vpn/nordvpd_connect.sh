#!/bin/sh
NORDVPN_ON=$(ip a | grep -w nordlynx)

if [[ $NORDVPN_ON == "" ]]; then
  systemctl start nordvpnd
  nordvpn mesh peer connect home-tunnel
else 
  nordvpn disconnect
  systemctl stop nordvpnd
fi
