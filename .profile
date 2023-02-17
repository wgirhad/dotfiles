if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.gem/ruby/3.0.0/bin" ] ; then
    PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"
fi

if [ -d "/home/bin" ] ; then
    PATH="/home/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
    source /etc/profile.d/vte.sh
fi

PATH="$HOME/.composer/vendor/bin:$PATH"
PATH="vendor/bin:$PATH"

# local relative bin
PATH="bin:$PATH"
