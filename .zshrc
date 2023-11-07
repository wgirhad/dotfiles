export ZSH="$HOME/.oh-my-zsh"
export NODE_OPTIONS=--openssl-legacy-provider
ZSH_THEME="agnoster" # set by `omz`
plugins=(git dotenv)

[[ -f $ZSH/oh-my-zsh.sh ]] && source $ZSH/oh-my-zsh.sh
[[ -f ~/.aliases ]] && . ~/.aliases
[[ -f ~/.profile ]] && . ~/.profile

export PAGER='less'
export EDITOR='nvim'
export SSL_CERT_DIR=/etc/ssl/certs
export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
export NEW_RELIC_AGENT_ENABLED=false
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
export RUBY_CONFIGURE_OPTS="--enable-yjit --enable-shared --disable-install-doc"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

eval "$(rbenv init - zsh)"
source $HOME/.nvm/nvm.sh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
