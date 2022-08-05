
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"
# spaceship config
source $HOME/.spaceship-config.zsh

CASE_SENSITIVE="true"

plugins=(git git-extras zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# useful aliases
alias ls="exa"
alias cat="bat"
alias grep="rg"
alias l="ls"
alias ll="ls -l"
alias gll='git log --graph --pretty=oneline --abbrev-commit'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Applications/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Applications/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Applications/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Applications/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# # Rust toolchain
export PATH=$HOME/.cargo/bin:$HOME/.tiup/bin:$PATH

# java home
alias java8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home"
alias java11="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.15.jdk/Contents/home"

java8

[ -f "$HOME/.ghcup/env" ] && source "/Users/yangchen/.ghcup/env" # ghcup-env

[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "/Users/yangchen/.gvm/scripts/gvm"

# set up zsh-git-prompt
GIT_PROMPT_EXECUTABLE="haskell" # this requires .zsh-git-prompt to be built with haskell beforehand
source $HOME/.zsh-git-prompt/zshrc.sh

# PROMPT='%B%F{cyan}%n> %~%b$(git_super_status) %# '
# RPROMPT='%*'