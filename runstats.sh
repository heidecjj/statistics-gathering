#!/bin/bash
./hpm_counters &
./mybenchmark
killall hpm_counters
while pgrep hpm_counters > /dev/null; do sleep 1; done
