################################################################################
#  Homebrew
################################################################################

eval "$(/opt/homebrew/bin/brew shellenv)"

################################################################################
#  Utilities
################################################################################

alias c='clear'
alias reload='source ~/.zshrc'
alias update='~/update.sh'

################################################################################
# ZSH
################################################################################

alias zshconfig='code ~/.zshrc ~/.zprofile'

################################################################################
# Laravel
################################################################################

export PATH="${HOME}/Library/Application Support/Herd/bin/":$PATH
export PATH="${HOME}/.composer/vendor/bin":$PATH

function art() {
  if [ -f artisan ]; then
    php artisan "$@";
  elif [ -f vendor/bin/testbench ]; then
    vendor/bin/testbench "$@";
  else
    echo "No artisan or testbench found.";
  fi
}

function zero() {
  composer create-project --prefer-dist laravel-zero/laravel-zero "${1}";
  cd "${1}";
  php application app:rename "${1}";
}

################################################################################
# Kubernetes
################################################################################

alias k='kubectl'

################################################################################
# Python
################################################################################

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
