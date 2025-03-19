sudo apt install neovim nodejs npm golang i3 fzf tmux picom nitrogen ripgrep stow curl clang neofetch zsh git kitty;

git clone https://github.com/nurtai325/dotfiles $HOME;
cd $HOME/dotfiles;

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sudo chsh -s $(which zsh)
rm -rf ~/.zshrc;
stow zsh;

stow nvim;

stow scripts;
chmod -R +x $HOME/scripts

stow p10k;

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm;
stow tmux;

rm -rf $HOME/.config/picom.conf;
stow picom

rm -rf $HOME/.config/i3;
stow i3;
