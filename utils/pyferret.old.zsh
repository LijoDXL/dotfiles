#!/usr/bin/zsh
if [ -d $PWD/fjnl ]; then
  echo "I found fjnl"
else
  mkdir fjnl
  echo "fjnl created"
fi
if [ -z "$CONDA_DEFAULT_ENV" ]; then
  source activate FERRET
  echo "$CONDA_DEFAULT_ENV env activated"
elif [ "$CONDA_DEFAULT_ENV" = "FERRET" ]; then
  echo "env is already set as $CONDA_DEFAULT_ENV"
else
  echo "$CONDA_DEFAULT_ENV env deactivated"
  source deactivate
  source activate FERRET
  echo "FERRET env activated"
fi
pyferret -nojnl $*
