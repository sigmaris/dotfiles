#!/bin/bash
PATH=/Users/hugh/bin:/usr/local/bin:$PATH:/usr/texbin
export PATH

export EDITOR="subl -n -w"

MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[0;32m\]"
GIT_PS1_SHOWDIRTYSTATE=true
export LS_OPTIONS='--color=auto'
export CLICOLOR=true
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export PYTHONSTARTUP="$HOME/.pystartup"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Source
source /usr/local/bin/virtualenvwrapper.sh

if [[ -n "`which brew`" && -f `brew --prefix`/etc/bash_completion ]]; then
  . `brew --prefix`/etc/bash_completion
fi

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

if [ -f /usr/share/git-core/git-completion.bash ]; then
  . /usr/share/git-core/git-completion.bash
fi

if [ -f /usr/share/git-core/git-prompt.sh ]; then
  . /usr/share/git-core/git-prompt.sh
  PS1='\[\e[G\e]0;\u@\h:\w\a\]\u@\[\e[33m\]\h\[\e[39m\]:\w$(
  if [[ $(__git_ps1) =~ \*\)$ ]]
  then echo "'$YELLOW'"$(__git_ps1 "(%s)")
  elif [[ $(__git_ps1) =~ \+\)$ ]]
  then echo "'$MAGENTA'"$(__git_ps1 "(%s)")
  else echo "'$CYAN'"$(__git_ps1 "(%s)")
  fi)\[\e[39m\]'" \$ "
else
  PS1='\[\e[G\e]0;\u@\h:\w\a\]\u@\[\e[33m\]\h\[\e[39m\]:\w \$ '
fi
export PS1

if [ -f /usr/share/source-highlight/src-hilite-lesspipe.sh ]; then
  export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
  export LESS=' -R '
elif [ -f /usr/local/bin/src-hilite-lesspipe.sh ]; then
  export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
  export LESS=' -R '
fi

if [ -x /usr/libexec/java_home ]; then
  export JAVA_HOME="$(/usr/libexec/java_home)"
fi
