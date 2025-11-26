# zshrc

alias ls="ls -aG"
alias ll="ls -lh"
alias grep="grep --color=auto"

alias vps_u="ssh a@b -i ~/.ssh/c"
alias vps_xz="ssh a@b -i ~/.ssh/c"
alias vps_null="ssh a@b -i ~/.ssh/c"

#unalias gau

export LSCOLORS=GxFxCxDxBxegedabagaced

tssh() { ssh "$@" | tee "ssh_session_$(date +%Y%m%dT%H%M%S)"; }
