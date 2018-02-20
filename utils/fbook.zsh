#!/usr/bin/zsh
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
source ~/anaconda2/envs/PYF/ferret_paths.sh
jupyter notebook
