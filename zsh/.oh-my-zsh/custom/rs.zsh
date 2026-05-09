# zshrc

# -----------------------------------------------
# terminal stuffs
# -----------------------------------------------
# include dotfiles in tab completion
setopt GLOB_DOTS

export LSCOLORS=GxFxCxDxBxegedabagaced

# -----------------------------------------------
# alias stuffs
# -----------------------------------------------
alias ls="ls -aG"
alias ll="ls -lh"
alias grep="grep --color=auto"

# include headers and use column format in sqlite3 shell
alias sqlite3="sqlite3 -header -column"

# tee a log from the ssh session locally
tssh() { ssh "$@" | tee "ssh_session_$(date +%Y%m%dT%H%M%S)"; }

# -----------------------------------------------
# specifc tech stack stuffs
# -----------------------------------------------

export PATH="$HOME/go/bin:$PATH"
#unalias gau

export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
