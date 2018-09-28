#!/usr/bin/zsh
source /home/lijo/local/ferret-7.4.2-RHEL7-64/ferret_paths
if [ -d $PWD/fjnl ]; then
  echo "I found fjnl"
else
  mkdir fjnl
  echo "fjnl created"
fi
/home/lijo/local/ferret-7.4.2-RHEL7-64/bin/ferret -nojnl $*
