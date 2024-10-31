export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="minimal"

# Load git plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# --- Space of GOlang ---
export PATH=$PATH:/usr/lib/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH="$PATH:$(go env GOPATH)/bin"


#Lazydocker
export PATH=$HOME/.local/bin:$PATH

# pnpm
export PNPM_HOME="/home/odmrs/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
