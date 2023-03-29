#!/bin/sh

ip_address=$(cat /home/skkkajenen/.config/bin/target | awk '{print $1}')
machine_name=$(cat /home/skkkajenen/.config/bin/target | awk '{print $2}')

if [ $ip_address ] && [ $machine_name ]; then
	echo "%{T9}%{F#ffff00}󰓾  %{T1}%{F#ffffff}$ip_address%{u-} - %{F#ffffff}$machine_name%{u-}"
else
	echo "%{T9}%{F#a9a9a9}󰓾  %{T1}%{F#a9a9a9}No Target%{u-}"
fi
