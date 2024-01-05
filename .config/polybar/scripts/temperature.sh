#!/bin/sh



#sensors | grep Tctl | tr -d 'Tctl:+' | awk '{print $1}'
nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits | while read line; do echo "$line°C"; done
