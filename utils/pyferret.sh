#!/bin/bash

. /home/lijo/miniconda3/etc/profile.d/conda.sh #for conda ver > 4.4.x
if [ "$CONDA_DEFAULT_ENV" = "XR" ]; then
  echo "env is already set as $CONDA_DEFAULT_ENV"
else
  conda activate XR
  echo "XR env activated"
fi

if [ -d $PWD/fjnl ]; then
  echo "I found fjnl"
else
  mkdir fjnl
  echo "fjnl created"
fi

pyferret -nojnl $*
