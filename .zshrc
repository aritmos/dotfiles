# VARS ----------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
export HISTFILE="$HOME/.cache/zsh/.zsh-history"
export ZSH_COMPDUMP="$HOME/.cache/zsh/.zcompdump"

# $PATH is saved a newline separated list within the given file
export PATH="$(rg '^/' ~/.config/path.toml | tr '\n' ':')"

export GOPATH="$HOME/dev/go"
export GOBIN="$HOME/dev/bin"

ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# ALIASES -------------------------------------------------
alias ls="eza"
alias c="clear"
alias zj="zellig"
alias lg="lazygit"
alias py="python3"
alias xdg-open="wsl-open"

alias casm="cargo asm --rust --simplify --native --lib"
alias gccs="gcc -Wall -Wextra -Werror -Wpedantic -Wmissing-declarations"

# STARTUP -------------------------------------------------
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
