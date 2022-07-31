#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon

alias ls='ls --color=auto'

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
# export PS1="\w > "
export PS1="\[\033[38;5;027m\][\h]\[\033[38;5;050m\][\u]\[\033[38;5;057m\]\[\033[38;5;118m\][\w]\[\033[38;5;196m\]\$(parse_git_branch)\[\033[0m\]\n: "
