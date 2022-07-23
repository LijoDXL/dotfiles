#!/bin/bash
source /home/lijo/local/Ferret-7.6.0-RHEL7/ferret_paths
if [ -d $PWD/fjnl ]; then
  echo "I found fjnl"
else
  mkdir fjnl
  echo "fjnl created"
fi
/home/lijo/local/Ferret-7.6.0-RHEL7/bin/ferret -nojnl $*
