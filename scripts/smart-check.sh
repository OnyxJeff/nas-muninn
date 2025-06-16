#!/bin/bash
# Simple SMART health check on all WD Ultrastar drives

set -euo pipefail

DRIVES=(/dev/sd{b,c,d,e,f,g,h,i})  # Adjust as necessary

for DRIVE in "${DRIVES[@]}"; do
    echo "Checking SMART status for $DRIVE"
    sudo smartctl -H $DRIVE | grep "SMART overall-health"
done