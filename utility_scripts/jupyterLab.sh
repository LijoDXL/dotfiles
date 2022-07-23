#!/bin/bash
. /home/lijo/miniconda3/etc/profile.d/conda.sh
if [[ "$CONDA_DEFAULT_ENV" = "XR" ]]; then
  echo "env is already set as $CONDA_DEFAULT_ENV"
else
  conda activate XR
  echo "XR env activated"
fi
if [[ "$(hostname)" = "MrGray" ]]; then
  jupyter-lab --no-browser
else
  jupyter-lab
fi
