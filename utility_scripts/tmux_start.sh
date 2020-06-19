#!/bin/bash
# creates 3 windows 'work', 'misc' and 'jupyter'
# splits window 1 in 3 panes, and window 3 in 2 panes
tmux new -s main -n work -d 'vim'
tmux split-window -p 40
tmux split-window -h -p 60
tmux select-pane -t 0
tmux split-window -h -p 45
tmux new-window -n misc
tmux new-window -n jupyter
tmux split-window -p 35
tmux select-pane -t 0
tmux select-window -t 1
tmux -2u attach-session -d
