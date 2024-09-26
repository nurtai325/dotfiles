sudo apt install neovim nodejs npm golang i3 fzf tmux picom nitrogen ripgrep stow curl clang neofetch zsh git;

git clone https://github.com/nurtai325/dotfiles $HOME;
cd $HOME/dotfiles;

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
curl -sS https://starship.rs/install.sh | sh;
sudo chsh -s $(which zsh)
rm -rf ~/.zshrc;
stow zsh;

stow nvim;

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;
stow tmux;

rm -rf $HOME/.config/picom.conf;
stow picom

rm -rf $HOME/.config/i3;
stow i3;
