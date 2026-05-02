defaults write -g InitialKeyRepeat -float 25.0
defaults write -g KeyRepeat -float 1.0
defaults delete -g ApplePressAndHoldEnabled

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> ~/.zprofile 
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

brew install --cask zed

git clone git@github.com:ngferg/aerospace.git ~/.config/aerospace
brew install --cask nikitabobko/tap/aerospace

brew install --cask visual-studio-code

brew install python
brew install node
brew install bruno

git config --global --edit
mkdir ~/Code
mkdir ~/Code/rust
mkdir ~/Code/python
mkdir ~/Code/web

reboot

