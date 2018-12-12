#!/bin/bash
. /home/lijo/miniconda3/etc/profile.d/conda.sh
if [ "$CONDA_DEFAULT_ENV" = "PYF" ]; then
  echo "env is already set as $CONDA_DEFAULT_ENV"
else
  conda activate PYF
  echo "PYF env activated"
fi
jupyter-lab
