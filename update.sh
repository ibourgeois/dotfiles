#! /bin/zsh

# Checking for updates to dotfiles

echo "Checking for updates to dotfiles..."
git pull origin main

echo "Updating Homebrew..."
brew update

# Install Oh My Zsh if not installed

echo "Updating Oh My Zsh..."
${HOME}/.oh-my-zsh/tools/upgrade.sh

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
    openjdk@23 \
    poetry \
    postgresql \
    pyenv \
    spaceship \
    sqlite \
    starship \
    stripe \
    surrealdb/tap/surreal \
    telepresenceio/telepresence/telepresence-oss \
    terminal-notifier

# Install Applications

brew install --cask \
    ableton-live-suite \
    audacity \
    balenaetcher \
    betterdisplay \
    beekeeper-studio \
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
    reaper \
    rekordbox \
    steam \
    tableplus \
    unity \
    virtualbox \
    virtualdj \
    visual-studio-code \
    webex \
    zed \
    zen-browser \
    zoom

brew upgrade

brew cleanup
