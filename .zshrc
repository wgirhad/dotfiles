export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="kafeitu"
plugins=(git dotenv)

[[ -f $ZSH/oh-my-zsh.sh ]] && source $ZSH/oh-my-zsh.sh
[[ -f ~/.aliases ]] && . ~/.aliases
[[ -f ~/.profile ]] && . ~/.profile

export PAGER='bat'

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

eval "$(rbenv init - zsh)"
