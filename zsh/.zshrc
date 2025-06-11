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

source /opt/homebrew/opt/fzf/shell/completion.zsh
source /opt/homebrew/opt/fzf/shell/key-bindings.zsh
export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border'
export FZF_DEFAULT_COMMAND="rg --files"

export PATH=$PATH:$HOME/go/bin:$HOME/scripts
export EDITOR=nvim
export GOPRIVATE=gitlab.owlidar.com/owl/*

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
