CASE_SENSITIVE="true"

export STARSHIP_CONFIG=~/.starship.toml
# initialize starship
eval "$(starship init zsh)"

# initialize zoxide
eval "$(zoxide init zsh)"

# initialize plugins
# source "$HOME/.plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

# useful aliases
alias cd="z"
alias ls="exa"
alias cat="bat"
alias grep="rg"
alias ps="procs"
alias l="ls"
alias ll="ls -l"
alias gll='git log --graph --pretty=oneline --abbrev-commit'

source $HOME/.zsh-git-prompt/zshrc.sh

# local configs
if [ -f "$HOME/.zshrc_local" ]; then
  source $HOME/.zshrc_local
fi

