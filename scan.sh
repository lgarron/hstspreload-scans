#!/bin/bash
set -eu

DIRNAME=$(dirname "$0")
cd "$DIRNAME"

DATE=$(date "+%Y-%m-%d-(unixtime-%s)")
HOST=$(hostname -s)
hstspreload "scan-pending" | tee "results/${HOST}/scan-pending-$DATE.json"
hstspreload "scan-preloaded" | tee "results/${HOST}/scan-preloaded-$DATE.json"
