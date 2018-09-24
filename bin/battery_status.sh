#!/bin/bash

DATE=$(/usr/local/bin/gdate --iso-8601=seconds)
CYCLES_COUNT=$(/usr/sbin/system_profiler SPPowerDataType | grep "Cycle Count" | awk '{print $3}')

echo "$DATE,$CYCLES_COUNT"

