#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon

eval "$(pyenv init -)"
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.nix-profile/bin"
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

BLUE='\033[38;5;027m'
TEAL='\033[38;5;050m'
GREEN='\033[38;5;118m'
RED='\033[38;5;196m'
WHITE='\033[0m'

export PS1="${BLUE}[\h]${TEAL}[\u]${GREEN}[\w]${RED}\$(parse_git_branch)${WHITE}\n: "

if [ -e ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
