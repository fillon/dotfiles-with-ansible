#! /bin/bash
# sourced by .bash_profile

# Alias definitions
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
	source "$(brew --prefix)/etc/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Colors for dark terminals
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '