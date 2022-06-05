export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

plugins=(
  1password
  asdf
  colorize
  docker
  docker-compose
  gcloud
  git
  npm
  vscode
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

### User configuration

## Aliases
# Directories
alias home='cd ~/'
alias repos='cd ~/repositories'

# OS
alias fix='sudo apt update && sudo apt --fix-broken install && sudo apt upgrade -y && sudo apt install -f && sudo apt autoremove'
alias ports='lsof -i'

# Configuration Files
alias gitconf='nano ~/.gitconfig'
alias zshconf='nano ~/.zshrc'

# Node Development
alias ns='npm run start'
alias ys='yarn start'
alias nd='npm run dev'
alias yd='yarn dev'
alias nb='npm run build'
alias yb='yarn build'
alias nrm='rm -Rf node_modules/ package-lock.json npm-error.log && npm install'
alias yrm='rm -Rf node_modules/ yarn.lock yarn-error.log && yarn install'

# ASDF
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

# Startship
export STARSHIP_CONFIG="$HOME/.starship.toml"
eval "$(starship init zsh)"
