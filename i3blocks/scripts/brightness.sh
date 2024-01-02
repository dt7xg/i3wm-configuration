#!/bin/bash

precent=`brightnessctl | grep -oP 'Current brightness: \d+ \(\K\d+%'`
icon="<span color=\"yellow\">&#xf185;</span>"
echo "$icon $precent"
