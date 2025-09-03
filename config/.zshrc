# Antigen
source /usr/share/zsh-antigen/antigen.zsh
source ~/.antigenrc
source ~/.config/completion-for-pnpm.zsh

# Go

export PATH=$PATH:/usr/local/go/bin

# Aliases
alias l='eza -hal'
alias home='cd ~/'
alias repos='cd ~/repositories'

alias fix='sudo apt update && sudo apt --fix-broken install && sudo apt upgrade -y && sudo apt install -f && sudo apt autoremove'
alias ports='lsof -i'
alias rm-node='find . -name "node_modules" -type d -prune -exec rm -rf "{}" +'

alias gitconf='code ~/.gitconfig'
alias sshconf='code ~/.ssh/config'
alias npmconf='code ~/.npmrc'
alias zshconf='code ~/.zshrc'

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
eval "$(starship init zsh)"

# fnm
FNM_PATH="/home/adonai/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/adonai/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

# pnpm
export PNPM_HOME="/home/adonai/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
