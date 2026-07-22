# zshrc

# -----------------------------------------------
# terminal stuffs
# -----------------------------------------------
# include dotfiles in tab completion
setopt GLOB_DOTS

# BSD/macOS ls -G colors; dir changed from default bold blue to bold cyan for readability
export LSCOLORS=GxFxCxDxBxegedabagaced
# GNU ls --color equivalent of the LSCOLORS above
export LS_COLORS="di=01;36:ln=01;35:so=01;32:pi=01;33:ex=01;31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=34;43"

# -----------------------------------------------
# alias stuffs
# -----------------------------------------------
# recursive expansion is intentional (ll inherits ls, etc.)
# ls color flag differs by OS: GNU/Linux uses --color=auto; BSD/macOS uses -G.
if [[ "$OSTYPE" == darwin* ]]; then
  alias ls="ls -AG"               # BSD / macOS
else
  alias ls="ls -A --color=auto"   # GNU / Linux
fi

alias l="ls -lh"                  # mirror ll (override omz's default [ls -lah])
alias ll="ls -lh"                 # long, human sizes (inherits -A + color)
alias lt="ls -lht"                # long, sorted by mtime, newest first
alias ltr="ls -lhtr"              # long, sorted by mtime, newest last
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
