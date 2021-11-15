# User configuration
#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
    local fgc bgc vals seq0

    printf "Color escapes are %s\n" '\e[${value};...;${value}m'
    printf "Values 30..37 are \e[33mforeground colors\e[m\n"
    printf "Values 40..47 are \e[43mbackground colors\e[m\n"
    printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

    # foreground colors
    for fgc in {30..37}; do
	# background colors
	for bgc in {40..47}; do
	    fgc=${fgc#37} # white
	    bgc=${bgc#40} # black

	    vals="${fgc:+$fgc;}${bgc}"
	    vals=${vals%%;}

	    seq0="${vals:+\e[${vals}m}"
	    printf "  %-9s" "${seq0:-(default)}"
	    printf " ${seq0}TEXT\e[m"
	    printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
	done
	echo; echo
    done
}

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Change the window title of X terminals
case ${TERM} in
    xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
	PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
	;;
    screen*)
	PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
	;;
esac


use_color=true

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
    && type -P dircolors >/dev/null \
    && match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

if ${use_color} ; then
    # Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
    if type -P dircolors >/dev/null ; then
	if [[ -f ~/.dir_colors ]] ; then
	    eval $(dircolors -b ~/.dir_colors)
	elif [[ -f /etc/DIR_COLORS ]] ; then
	    eval $(dircolors -b /etc/DIR_COLORS)
	fi
    fi

    if [[ ${EUID} == 0 ]] ; then
	PS1+='\$(parse_git_branch)\[\033[01;31m\][\h\[\033[01;36m\]\W\[\033[01;31m\]]\$\[\033[00m\] '
    else
	PS1="\$(parse_git_branch)\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] "
	# PS1="\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] "
    fi

    alias ls='ls --color=auto'
    alias grep='grep --colour=auto'
    alias egrep='egrep --colour=auto'
    alias fgrep='fgrep --colour=auto'
else
    if [[ ${EUID} == 0 ]] ; then
	# show root@ when we don't have colors
	PS1='\u@\h \W \$ '
    else
	PS1='\u@\h \w \$ '
    fi
fi

unset use_color safe_term match_lhs sh

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

xhost +local:root > /dev/null 2>&1

complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases

# export QT_SELECT=4

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

#
# # ex - archive extractor
# # usage: ex <file>
extract ()
{
    if [ -f $1 ] ; then
	case $1 in
	    *.tar.bz2)   tar xjf "$1" -C "$1"				;;
	    *.tar.gz)    tar xzf "$1" -C "$1"				;;
	    *.bz2)       bunzip2 "$1"					;;
	    *.rar)       unrar x "$1"					;;
	    *.gz)        gunzip "$1"					;;
	    *.tar)       tar xf "$1" -C "$1"				;;
	    *.tbz2)      tar xjf "$1" -C "$1"				;;
	    *.tgz)       tar xzf "$1" -C "$1"				;;
	    *.zip)       unzip -d "${1%.*}" "$1"                        ;;
	    *.Z)         uncompress "$1"				;;
	    *.7z)        7z -o "${1%.*}" x "$1"				;;
	    *)           echo "'$1' cannot be extracted via ex()"	;;
	esac
    else
	echo "'$1' is not a valid file"
    fi
}

# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Add User bin folder to path
export PATH="$PATH:/home/fuzie/bin/"

# Open files in current emacs session
function emacs {
    if [[ $# -eq 0 ]]; then
	/usr/bin/emacs # "emacs" is function, will cause recursion
	return
    fi
    args=($*)
    for ((i=0; i <= ${#args}; i++)); do
	local a=${args[i]}
	# NOTE: -c for creating new frame
	if [[ ${a:0:1} == '-' && ${a} != '-c' && ${a} != '--' ]]; then
	    /usr/bin/emacs ${args[*]}
	    return
	fi
    done
    setsid emacsclient -n -a /usr/bin/emacs ${args[*]}
}

# setup pyenv and pyenv-virtualenv
# export PYENV_VIRTUALENV_DISABLE_PROMPT=1
if command -v pyenv 1>/dev/null 2>&1;
then
    eval "$(pyenv init -)" 1>/dev/null 2>&1
fi

eval "$(pyenv virtualenv-init -)"


# allow minor typos in cd
shopt -s cdspell

# color in man-pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Simple funtion to go up n dirs
up() { cd $(eval printf '../'%.0s {1..$1}) && pwd; }

# Show easy colors
showcolors() {
    echo -e "Predefined colors:\033[
\033[0;30mBLACK
\033[1;30mDARKGRAY
\033[0;31mRED
\033[1;31mLIGHTRED
\033[0;32mGREEN
\033[1;32mLIGHTGREEN
\033[0;33mORANGE
\033[1;33mYELLOW
\033[0;34mBLUE
\033[1;34mLIGHTBLUE
\033[0;35mPURPLE
\033[1;35mLIGHTPURPLE
\033[0;36mCYAN
\033[1;36mLIGHTCYAN
\033[0;37mLIGHTGRAY
\033[1;37mWHITE
\033[0m"
}

# init pyenvexport PYENV_ROOT="$HOME/.pyenv"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
eval "$(pyenv init -)"

# Print system info
# screenfetch
