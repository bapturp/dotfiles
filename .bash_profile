#!/usr/bin/env bash

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL='ignoreboth'

# Ignore some command from history
export HISTIGNORE='ls:ll:la:exit:pwd'

# History length
export HISTSIZE='32768'
export HISTFILESIZE="${HISTSIZE}"

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

#  ls aliases
alias ls='ls --color'
alias ll='ls -lhF'
alias la='ls -alhF'
alias lt='ls -lthF'
alias ltr='ls -ltrhF'

alias cd..='cd ..'
alias sudo='sudo '

alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'

# Add tab completion for many Bash commands
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Make vim the default editor.
export EDITOR='vim'

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X'

export PYTHONIOENCODING='UTF-8'

LS_COLORS=$LS_COLORS:'no=00:fi=00:di=01;35:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
export LS_COLORS
