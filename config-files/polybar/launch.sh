#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar log -c ~/.config/polybar/current.ini &			# Logo
polybar my_ip -c ~/.config/polybar/current.ini &		# Current IP
polybar htb_ip -c ~/.config/polybar/current.ini &		# HTB VPN IP

## Right bar
# polybar top -c ~/.config/polybar/current.ini &
#polybar primary -c ~/.config/polybar/current.ini &		# System menu
polybar secondary -c ~/.config/polybar/current.ini &	# Date Time
polybar target_ip -c ~/.config/polybar/current.ini &	# Target IP
#polybar cpu_status -c ~/.config/polybar/current.ini &	# CPU Status

## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &
