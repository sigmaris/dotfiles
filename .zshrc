# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias activate="source venv/bin/activate"
alias replace-as-instance="aws autoscaling terminate-instance-in-auto-scaling-group --no-should-decrement-desired-capacity --instance-id"
alias start-miredo="sudo kextload /System/Library/Extensions/tun-signed.kext && sudo /usr/local/sbin/miredo"
alias restart-miredo="sudo pkill -f miredo; sudo /usr/local/sbin/miredo"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew colored-man colorize git osx pip python rsync sublime terminalapp virtualenv)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Users/hugh/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin
export PYTHONSTARTUP=/Users/hugh/.pystartup
export EDITOR="subl -n -w"
export DEVKITPRO=/Users/hugh/devkitPro
export DEVKITPPC="${DEVKITPRO}/devkitPPC"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Source
source /usr/local/bin/virtualenvwrapper.sh

