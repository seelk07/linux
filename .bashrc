# Add to the end of .bashrc

# Server prompt
#export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]: \[$(tput sgr0)\]"

# Personal prompt
export PS1=export PS1="[\[$(tput sgr0)\]\[\033[38;5;8m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;7m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;67m\]\W\[$(tput sgr0)\]]\\$ \[$(tput sgr0)\]"

# Set editor of choice.
set -o vi
export VISUAL=vim
export EDITOR="$VISUAL"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

## EXTRACT FUNCTION ## | Usage: extract <file>
extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       unrar x $1     ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7z x $1        ;;
          *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}

# Dictionary | Usage define <foo>
define () {
    curl -s dict://dict.org/d:$1 | grep -v '^[0-9]'
}
