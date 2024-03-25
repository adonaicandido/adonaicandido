# Antigen
source ~/.zsh/antigen.zsh
antigen use oh-my-zsh
antigen bundle asdf
antigen bundle aws
antigen bundle colorize
antigen bundle command-not-found
antigen bundle docker
antigen bundle docker-compose
antigen bundle dotnet
antigen bundle git
antigen bundle git-flow-avh
antigen bundle alexrochas/git-semantic-commits
antigen bundle npm
antigen bundle starship
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Aliases
alias home='cd ~/'
alias repos='cd ~/repos'

alias fix='sudo apt update && sudo apt --fix-broken install && sudo apt upgrade -y && sudo apt install -f && sudo apt autoremove'
alias ports='lsof -i'

# Configuration Files
alias gitconf='code ~/.gitconfig'
alias sshconf='code ~/.ssh/config'
alias npmconf='code ~/.npmrc'
alias zshconf='code ~/.zshrc'

# Node Development
alias ns='npm run start'
alias ys='yarn start'
alias nd='npm run dev'
alias yd='yarn dev'
alias nb='npm run build'
alias yb='yarn build'
alias nrm='rm -Rf node_modules && npm install'

# ASDF Go-lang Plugin
. ~/.asdf/plugins/golang/set-env.zsh

# ASDF
# . "$HOME/.asdf/asdf.sh"
# fpath=(${ASDF_DIR}/completions $fpath)
# autoload -Uz compinit && compinit

# Startship
# export STARSHIP_CONFIG="$HOME/.starship.toml"
# eval "$(starship init zsh)"
