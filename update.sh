#! /bin/zsh

# Get the actual script location, following symlinks

SCRIPT_PATH="$(realpath "$0" || readlink -f "$0" || echo "$0")"
SCRIPT_DIR="$(dirname "$SCRIPT_PATH")"

# Switch to the repo directory

cd "$SCRIPT_DIR" || {
  echo "Failed to switch to dotfiles directory: $SCRIPT_DIR"
  exit 1
}

# Checking for updates to dotfiles

echo "Checking for updates to dotfiles..."
git pull origin main

echo "Updating Homebrew..."
brew update

# Install Oh My Zsh if not installed

echo "Updating Oh My Zsh..."
${HOME}/.oh-my-zsh/tools/upgrade.sh

# Brew Taps

brew tap \
    gantoreno/macfetch

# Install CLI Tools

brew install \
    docker-completion \
    doctl \
    gnupg \
    gradle \
    helm \
    imagemagick \
    k3d \
    k6 \
    kind \
    kubernetes-cli \
    macfetch \
    nvm \
    openjdk@23 \
    poetry \
    postgresql \
    pyenv \
    spaceship \
    sqlite \
    starship \
    stripe \
    surrealdb/tap/surreal \
    terminal-notifier

# Install Applications

brew install --cask \
    audacity \
    balenaetcher \
    betterdisplay \
    beekeeper-studio \
    blender \
    bruno \
    buttercup \
    caffeine \
    chatgpt \
    cursor \
    discord \
    drawio \
    firefox \
    firefox@developer-edition \
    font-fira-code-nerd-font \
    font-fira-mono-nerd-font \
    ghostty \
    gimp \
    github \
    google-chrome \
    herd \
    iterm2 \
    kap \
    logi-options+ \
    logi-options-plus \
    meld-studio \
    microsoft-auto-update \
    microsoft-edge \
    microsoft-office \
    microsoft-teams \
    minecraft \
    mos \
    obsidian \
    obs \
    ollama \
    phpstorm \
    rancher \
    steam \
    tableplus \
    unity \
    virtualbox \
    visual-studio-code \
    webex \
    zed \
    zen-browser \
    zoom

brew upgrade

brew cleanup
