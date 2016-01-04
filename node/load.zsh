# Only execute this file if homebrew is available
command -v brew > /dev/null 2>&1 || return

# NVM
export NVM_DIR=~/.nvm

# Only try to init nvm if homebrew is installed
function nvm() {
  source $(brew --prefix nvm)/nvm.sh
  nvm "$@"
}

