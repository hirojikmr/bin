#!/bin/sh

#cat ~/.bash_history| grep 80 | grep rails | grep -v history | tail -1 | awk '{print $1 }'
echo `cat ~/.bash_history| grep 80 | grep rails | grep -v history| tail -1`
eval `cat ~/.bash_history| grep 80 | grep rails | grep -v history| tail -1 `
