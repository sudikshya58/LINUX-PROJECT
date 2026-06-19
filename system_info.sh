#!/bin/bash

echo "=================================="
echo "      SYSTEM INFORMATION"
echo "=================================="

echo
echo "OS Version:"
grep PRETTY_NAME /etc/os-release

echo
echo "CPU Information:"
lscpu | grep "Model name"

echo
echo "RAM Usage:"
free -h

echo
echo "Disk Usage:"
df -h /

echo
echo "System Uptime:"
uptime -p
