CASE_SENSITIVE="true"

export STARSHIP_CONFIG=$HOME/.starship.toml
# initialize starship
eval "$(starship init zsh)"

# initialize zoxide
eval "$(zoxide init zsh)"

# initialize plugins
source "$HOME/.zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
source "$HOME/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# aliases
alias cd="z"
alias ls="exa"
alias cat="bat"
alias grep="rg"
alias l="ls"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias gll='git log --graph --pretty=oneline --abbrev-commit'

source $HOME/.zsh-git-prompt/zshrc.sh

# local configs
if [ -f "$HOME/.zshrc_local" ]; then
  source $HOME/.zshrc_local
fi

