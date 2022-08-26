#!/bin/bash
sudo cpufreq-set -c 0 -g performance
sudo cpufreq-set -c 1 -g performance
sudo cpufreq-set -c 2 -g performance
sudo cpufreq-set -c 3 -g performance

/home/pi/'Pianoteq 7 STAGE'/arm-64bit/'Pianoteq 7 STAGE' --headless --multicore max
