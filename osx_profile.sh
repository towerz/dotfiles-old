source $HOME/.dotfiles/homebrew.sh

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_11.jdk/Contents/Home
export JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_11.jdk/Contents/Home
export JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_65.jdk/Contents/Home

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
