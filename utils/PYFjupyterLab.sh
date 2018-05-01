#!/bin/bash
if [ -z "$CONDA_DEFAULT_ENV" ]; then
  source activate PYF
  echo "$CONDA_DEFAULT_ENV env activated"
elif [ "$CONDA_DEFAULT_ENV" = "PYF" ]; then
  echo "env is already set as $CONDA_DEFAULT_ENV"
else
  echo "$CONDA_DEFAULT_ENV env deactivated"
  source deactivate
  source activate PYF
  echo "PYF env activated"
fi
source ~/local/pyferret-7.4-RHEL7-64-Python-2.7/ferret_paths
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/lijo/anaconda2/pkgs/libpng-1.5.13-1/lib/
jupyter lab
