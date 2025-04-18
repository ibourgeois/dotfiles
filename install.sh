#! /bin/zsh

# Copy existing dotfiles to a backup folder

mkdir -p ~/dotfiles-backup
cp ~/.zshrc ~/dotfiles-backup/.zshrc
cp ~/.zprofile ~/dotfiles-backup/.zprofile
cp ~/update.sh ~/dotfiles-backup/update.sh

# Symlink the dotfiles

ln -sf $(pwd)/.zshrc ~/.zshrc
ln -sf $(pwd)/.zprofile ~/.zprofile
ln -sf $(pwd)/update.sh ~/update.sh

# Install Homebrew if not installed

if ! command -v brew &> /dev/null
then
    echo "Homebrew is not installed. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/opt/homebrew/bin/brew shellenv)"
    echo "Homebrew installed successfully."
fi

# Install Oh My Zsh if not installed

if [ ! -d "$HOME/.oh-my-zsh" ]
then
    echo "Oh My Zsh is not installed. Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Oh My Zsh installed successfully."
fi

source ~/.zshrc
source ~/.zprofile

update
