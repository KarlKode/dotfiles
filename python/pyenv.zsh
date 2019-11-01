# Only execute this file if pyenv is available
command -v pyenv > /dev/null 2>&1 || return

export PATH="/Users/m/.pyenv/shims:${PATH}"
export PYENV_SHELL=zsh
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export VIRTUAL_ENV_DISABLE_PROMPT=true

function pyenv() {
  unset -f pyenv
#  echo "test"
  eval "$(pyenv init --no-rehash - zsh)"
  eval "$(pyenv virtualenv-init -)"
  pyenv virtualenvwrapper
  pyenv "$@"
}

