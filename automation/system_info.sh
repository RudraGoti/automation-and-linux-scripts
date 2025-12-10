#!/bin/bash

outfile="system_info_$(date +%Y-%m-%d_%H-%M-%S).txt"

echo "Collecting System Information..."
{
    echo " SYSTEM INFORMATION "
    uname -a
    echo

    echo " CPU INFO "
    lscpu
    echo

    echo " MEMORY INFO "
    free -h
    echo

    echo " DISK INFO "
    df -h
    echo

    echo " NETWORK INFO "
    ip a
    echo

    echo " RUNNING PROCESSES "
    ps aux --sort=-%mem | head
    echo
} > "$outfile"

echo "System info saved to $outfile"
