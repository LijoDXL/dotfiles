# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# to use solarized theme in gnome-terminal
# and get the ls colors right
  eval `dircolors ~/dotfiles/.dir_colors/.dircolors`
# Path to your oh-my-zsh installation.
  export ZSH=/home/$USER/.oh-my-zsh
# shows virtualenv nicely
  export VIRTUAL_ENV_DISABLE_PROMPT=1
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colored-man-pages z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lrt='ls -lrt'
alias rq='rhythmbox-client --quit'
alias rp='music_ctrl --playpause'
alias rsong='music_ctrl --status'
alias rup='music_ctrl --volumeup'
alias rdown='music_ctrl --volumedown'
alias rn='music_ctrl --next'
alias rpp='music_Ctrl --previous'
alias q='exit'
alias clr='clear'
alias brew='sudo apt'
alias tm='tmux -2u'
alias sus='systemctl suspend'
export win="/mnt/c/Users/lij2l"
alias ipy='ipython --pylab'
alias jn='cd /media/lijo/ext4_common/WORK/JupyterNotebooks'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
export GEM_HOME="$HOME/learning_jekyll/gems"
export PATH="$GEM_HOME/bin:$PATH"
# no alias for ferret, they run from scripts f--->ferret7.3, ff--->pyf7.1, pyf--->pyf7.3
# Note: libpng15 conflicts with seaborn, so no seaborn in PYF env of pyf7.3

# functions for ferret jnl file management
edjnl() {
  vim fjnl/ferret.jnl.~$1~;
}
wcjnl() {
  wc fjnl/ferret.jnl.~$1~;
}
#search for a keywork inside fjnl directory
jnls() {
  grep $1 fjnl/*;
}

# added by Miniconda installer
# export PATH="/home/$USER/miniconda3/bin:$PATH" #for conda ver < 4.4.x
# . /home/lijo/miniconda3/etc/profile.d/conda.sh #for conda ver > 4.4.x  # commented out by conda initialize
source /home/lijo/.myGithubToken


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/lijo/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/lijo/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/lijo/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/lijo/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
