#!/bin/bash
sudo cpufreq-set -c 0 -g performance
sudo cpufreq-set -c 1 -g performance
sudo cpufreq-set -c 2 -g performance
sudo cpufreq-set -c 3 -g performance

sudo systemctl stop pianoteq.service
/home/pi/'Pianoteq 7 STAGE'/arm-64bit/'Pianoteq 7 STAGE' --multicore max
sudo systemctl start pianoteq.service

sudo cpufreq-set -c 0 -g ondemand
sudo cpufreq-set -c 1 -g ondemand
sudo cpufreq-set -c 2 -g ondemand
sudo cpufreq-set -c 3 -g ondemand
