#!/bin/bash
# Quick system info script
# Displays useful system information at a glance

echo "=== System Information ==="
echo "Hostname: $(hostname)"
echo "OS: $(uname -s)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p 2>/dev/null || uptime)"
echo "CPU: $(grep 'model name' /proc/cpuinfo 2>/dev/null | head -1 | cut -d: -f2 | xargs || echo 'N/A')"
echo "Memory: $(free -h 2>/dev/null | grep Mem: | awk '{print $3 " / " $2}' || echo 'N/A')"
echo "Disk: $(df -h / | tail -1 | awk '{print $3 " / " $2 " (" $5 " used)"}')"
echo "Current User: $USER"
echo "Shell: $SHELL"
