#!/bin/bash
# Shows used disk space on root (/)
used=$(df -h / | awk 'NR==2{print $3}')
echo "DISK $used"

