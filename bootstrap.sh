defaults write -g InitialKeyRepeat -float 25.0
defaults write -g KeyRepeat -float 1.0

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> ~/.zprofile 
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

mkdir ~/.config
git clone git@github.com:ngferg/nvim-config.git ~/.config/nvim
chmod +x ~/.config/nvim/prereq.sh
~/.config/nvim/prereq.sh

brew install nvim

git clone git@github.com:ngferg/aerospace.git ~/.config/aerospace
brew install --cask nikitabobko/tap/aerospace

brew install --cask visual-studio-code

brew install python
brew install node

git config --global --edit

reboot

