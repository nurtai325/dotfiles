# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH_THEME="powerlevel10k/powerlevel10k"
export ZSH=$HOME/.oh-my-zsh
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export PATH=$PATH:$HOME/go/bin:$HOME/scripts
export EDITOR=nvim

source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border'
export FZF_DEFAULT_COMMAND="rg --files"
export GOOSE_DRIVER=postgres 
export GOOSE_DBSTRING="postgres://alaman:alaman@localhost:5432/alaman"
export PKG_CONFIG_PATH="/usr/lib/aarch64-linux-gnu/pkgconfig"

vimopen() {
    nvim .;
}
zle -N vimopen{,}
bindkey '^[v' vimopen

alias szh='source ~/.zshrc'
alias vimz='nvim ~/.zshrc'
alias vimf='nvim $(fzf)'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# if [[ -z $DISPLAY && $XDG_VTNR -eq 1 ]]
# then
# 	exec startx
# fi
