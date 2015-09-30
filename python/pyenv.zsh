# Only execute this file if pyenv is available
command -v pyenv > /dev/null 2>&1 || return

export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
#function pyenv {
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
  pyenv virtualenvwrapper_lazy
#  command pyenv "$@"
#}

export VIRTUAL_ENV_DISABLE_PROMPT=true

