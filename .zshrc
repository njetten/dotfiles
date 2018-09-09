export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

export ZSH=$HOME/.oh-my-zsh

DEFAULT_USER=njetten
ZSH_THEME="agnoster"
ZSH_CUSTOM=$HOME/projects/dotfiles/omzsh

HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    ssh-agent
    vagrant
)

zstyle :omz:plugins:ssh-agent lifetime 10h
zstyle :omz:plugins:ssh-agent identities id_rsa id_rsa_hop

source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export PATH="$HOME/.cargo/bin:$HOME/go/bin:$HOME/bin:$PATH"

# Hook stuff into shell
eval "$(fasd --init auto)"
eval "$(direnv hook zsh)"
eval "$(nodenv init -)"
eval "$(rbenv init -)"
