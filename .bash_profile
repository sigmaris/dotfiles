#!/bin/bash
PATH=/Users/hugh/bin:/usr/local/bin:$PATH:/usr/texbin
export PATH

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
  PS1='\[\e[G\e]0;\u@\h:\w\a\]\u@\[\e[33m\]\h\[\e[39m\]:\w$(__git_ps1 "(%s)") \$ '
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
