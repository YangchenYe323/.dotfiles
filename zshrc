CASE_SENSITIVE="true"

# initialize starship
eval "$(starship init zsh)"

# initialize zoxide
eval "$(zoxide init zsh)"

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

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

export PATH=$PATH:/usr/local/Cellar/riscv-gnu-toolchain/main/bin

