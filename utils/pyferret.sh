#!/bin/bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/lijo/anaconda2/pkgs/libpng-1.5.13-1/lib/
source /home/lijo/local/pyferret-7.4-RHEL7-64-Python-2.7/ferret_paths
pyferret -nojnl $*
