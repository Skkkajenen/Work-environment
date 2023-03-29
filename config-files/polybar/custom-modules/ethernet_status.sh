#!/bin/sh

echo "%{T9}%{F#2495e7}󰈀 %{T1}%{F#ffffff}$(/usr/sbin/ifconfig ens33 | grep "inet " | awk '{print $2}')%{u-}"
