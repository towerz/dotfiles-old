source $HOME/.dotfiles/homebrew.sh

export FLEXPATH=$HOME/Library/Sprouts/1.1/cache/flex4/4.5.0.20967

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
export JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home

if [ -d "$HOME/.powerline-shell" ]; then
  function _update_ps1() {
    export PS1="$($HOME/.powerline-shell/powerline-shell.py --cwd-max-depth 4 --git-show-stash-status $? 2> /dev/null)\n"
  }

  export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

function show_hidden_files {
  defaults write com.apple.finder AppleShowAllFiles -boolean YES
  killall Finder
}

function restore_hidden_files {
  defaults write com.apple.finder AppleShowAllFiles -boolean NO
  killall Finder
}

function disable_dock_glass {
  defaults write com.apple.Dock no-glass -boolean YES
  killall Dock
}

function enable_dock_glass {
  defaults write com.apple.Dock no-glass -boolean NO
  killall Dock
}
