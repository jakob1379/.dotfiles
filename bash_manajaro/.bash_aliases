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
alias ll='ls -alhF'
alias la='ls -CFA'
alias l='ls -CF'

# create whole line text box
alias mybox='boxes -d shell -s 95 -a c'

# shorthand for killall
alias ka='killall'

# Foldersize
alias foldersize='du -sh'

# Git status
alias git-status='git status'

# netcat to bin
alias tb="nc termbin.com 9999"

# Speedtest
alias st="speedtest"