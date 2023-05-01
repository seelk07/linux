# General
alias df='df -h'
alias du='du -h'
alias updatedb='sudo updatedb -v'
alias usage='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'''
alias cpv='rsync -ah --info=progress2'
alias c='clear'
alias h='history'
alias vi='vim'
alias mkdir='mkdir -pv'
alias mount='mount |column -t'

# Estimate file space usage to maximum depth
#alias du1='du -d 1'
alias du1='du -d 1 | sort -h'

# ls command
alias ls='ls --color=auto --group-directories-first'
alias l='ls -lav --ignore=.?*'
alias ll='ls -lav --ignore=..'

# Confirmation
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -I --preserve-root'

# Parenting changing perms on /
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Distro specific
# Arch Linux
alias upgrade='sudo pacman -Syu'
alias pac='sudo pacman -S'

# Debian
#alias update='sudo apt update'
#alias upgrade='sudo apt update && sudo apt upgrade'
#alias clean='sudo apt autoclean && sudo apt autoremove'
