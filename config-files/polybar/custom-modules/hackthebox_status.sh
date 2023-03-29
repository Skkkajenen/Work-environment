#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
	echo "%{T9}%{F#1bbf3e}󰆧 %{T1}%{F#ffffff}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')%{u-}"
else
	echo "%{T9}%{F#e64d4d}󰆧%{T1}%{F#a9a9a9}%{u-} Disconnected"
fi
