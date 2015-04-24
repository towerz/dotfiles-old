[[ -d /usr/local/bin ]] && PATH=/usr/local/bin:$PATH
[[ -d /usr/local/sbin ]] && PATH=/usr/local/sbin:$PATH

[ -f "$(which brew)" ] && [ -f $(brew --prefix)/etc/bash_completion ] && . $(brew --prefix)/etc/bash_completion

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
