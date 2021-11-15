# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# pretty default ls
alias l='exa'
alias la='exa --all'
alias ll='exa --long --header --git'
alias lla='exa --long --header --git --all'

# shorthand for killall
alias ka='killall'

# Foldersize
alias foldersize='du -sh'

# Git status
alias git-status='git status'

# netcat to bin
alias tb="nc termbin.com 9999"
alias tbc="nc termbin.com 9999 | xclip -selection c"

# Speedtest
alias st="speedtest"

# Git
alias glg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches --all"
alias gstat="git status"

# source activate
alias activate="source activate"
alias deactivate="source deactivate"

# use GNU time
# alias time=/usr/bin/time

# wget to terminal
alias wgeto='wget -O - "$@"'

# Aliases for class directories
alias atia='cd ~/Dropbox/KU/6.aar/ATIA'
alias amas='cd ~/Dropbox/KU/6.aar/AMAS'
alias cg='cd ~/Dropbox/KU/6.aar/CG'
alias bohta='cd ~/Dropbox/KU/6.aar/BoHTA'
alias lsda='cd ~/Dropbox/KU/6.aar/LSDA'
alias mia='cd ~/Dropbox/KU/7.aar/MIA'
alias aad='cd ~/Dropbox/KU/7.aar/AAD'
alias spec='cd ~/Documents/Speciale'


# pacman
alias pcss='pacman -Ss'

# report power consumption
alias powernow='awk '\''{print $1*10^-6 " W"}'\'' /sys/class/power_supply/BAT1/power_now'

# safer rm
# alias rm='rm -i'

# Default font for termdown
alias termdown='termdown --font doh'

# remake grub configs
alias grub-remake-config='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# Default string to stackoverflow
MESSAGE="In case you haven't already, as a new user, take the [tour](https://stackoverflow.com/tour) and read [how to ask](https://stackoverflow.com/help/how-to-ask) ."
alias SO-string='echo $MESSAGE | xclip -selection c'

# Cafe? calendar
alias ccal='gcalcli --calendar CAFETEST calw'

# bpytop resource monitor
alias btop='bpytop'

# emacsclient don't waiting
alias emacsclient='emacsclient -n'

# enable colors by default in watch
alias watch='watch --color'

# pandas-gui
alias pandas-gui='python -c "from pandasgui import show, show()"'

# quick goobook lookup
alias gbook='goobook dquery'

# set tree to exa --tree
# alias tree='exa --tree'

# easy xev keysym
alias xev-keysym='xev | grep keysym'
