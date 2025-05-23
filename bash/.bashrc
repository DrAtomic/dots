#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

YELLOW='\033[38;5;227m'
SEAFOAM='\033[38;5;84m'
LIGHTBLUE='\033[38;5;123m'
SALMON='\033[38;5;209m'
NONE='\033[0m'

export PS1="${YELLOW}[\h]${SEAFOAM}[\u]${LIGHTBLUE}[\w]${SALMON}\$(parse_git_branch)${NONE}\n$ "

if [ -e ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
