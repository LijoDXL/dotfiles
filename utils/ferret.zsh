#!/usr/bin/zsh
source /home/lijo/ferret-7.3-RHEL7-64/ferret_paths
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/lijo/anaconda2/envs/FERRET/lib
if [ -d $PWD/fjnl ]; then
  echo "I found fjnl"
else
  mkdir fjnl
  echo "fjnl created"
fi
/home/lijo/ferret-7.3-RHEL7-64/bin/ferret -nojnl $*
