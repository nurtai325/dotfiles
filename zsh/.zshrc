export ZSH_THEME="powerlevel10k/powerlevel10k"
export ZSH=$HOME/.oh-my-zsh
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

export PATH=$PATH:$HOME/go/bin
export EDITOR=nvim

source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh
export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border'
export FZF_DEFAULT_COMMAND="find -type f"

sd() {
  export FZF_DEFAULT_COMMAND="find $HOME/projects -maxdepth 3 -type d"
  cd $(fzf)
  ls
  export FZF_DEFAULT_COMMAND="find -type f"
}

vimopen() {
  nvim .
}
zle -N vimopen{,}
bindkey '^[v' vimopen

alias szh='source ~/.zshrc'
alias vimz='nvim ~/.zshrc'
alias vimi='nvim ~/.config/i3/config'
alias vimk='nvim ~/.config/kitty/kitty.conf'
alias vimf='nvim $(fzf)'

alias dex='docker exec -it'
alias dcu='docker compose up -d'
alias dcd='docker compose down -v'
