#!/bin/bash
wifi_ssid=$(nmcli -t -f NAME,DEVICE,STATE connection show --active | grep -v ':lo:' | grep -o '^[^:]*')

if [ -n "$wifi_ssid" ]; then
	echo "<span color=\"green\">🌐</span> $wifi_ssid"
else
	echo "<span color=\"red\">Not Connected</span>"
fi
