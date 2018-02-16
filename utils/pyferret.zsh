#!/usr/bin/zsh
if [ -d $PWD/fjnl ]; then
  echo "I found fjnl"
else
  mkdir fjnl
  echo "fjnl created"
fi
if [ "$CONDA_DEFAULT_ENV" = "FERRET" ]; then
  echo "env is set as $CONDA_DEFAULT_ENV"
else
  source activate FERRET
  echo "FERRET env activated"
fi
pyferret -nojnl $*
