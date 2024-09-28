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
export FZF_DEFAULT_COMMAND="find . -type f"

vimopen() {
    nvim .;
}
zle -N vimopen{,}
bindkey '^[v' vimopen

vimg() {
    export FZF_DEFAULT_COMMAND="git ls-files";
    nvim $(fzf);
}

vimf() {
    export FZF_DEFAULT_COMMAND="find . -type f";
    nvim $(fzf);
}

cpl() {
    fc -ln -1 | xsel --clipboard;
}

alias szh='source ~/.zshrc'
alias vimz='nvim ~/.zshrc'
alias vimi='nvim ~/.config/i3/config'
alias vimk='nvim ~/.config/kitty/kitty.conf'

alias dcu='docker compose up -d'
alias dcd='docker compose down -v'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
