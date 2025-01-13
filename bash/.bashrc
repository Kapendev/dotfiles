# If not running interactively, don't do anything.
case $- in
    *i*) ;;
      *) return;;
esac

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Make less more friendly for non-text input files.
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# Enable color support of ls and grep.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi
# Enable programmable completion features.
# You do not need to enable this, if it is already enabled in /etc/bash.bashrc.
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Kapendev main stuff.
export PS1="> \w\n| "
export PATH="$PATH:$HOME/dotfiles/scripts"
# Kapendev fun stuff.
alias code="flatpak run com.vscodium.codium"
alias winej="LANG=ja_JP.UTF-8 wine"
alias 7zj="LANG=ja_JP.UTF-8 wine $HOME/.wine/drive_c/Program\ Files/7-Zip/7z.exe"
