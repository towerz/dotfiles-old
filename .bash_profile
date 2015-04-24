ostype=$(uname)

case $ostype in
  "Darwin") source $HOME/.dotfiles/osx_profile.sh
            ;;
  "Linux") source $HOME/.dotfiles/linux_profile.sh
esac

source $HOME/.dotfiles/common.sh
source $HOME/.dotfiles/preferences.sh
source $HOME/.dotfiles/android.sh
source $HOME/.dotfiles/git.sh
source $HOME/.dotfiles/mersdk.sh
source $HOME/.dotfiles/ruby.sh
source $HOME/.dotfiles/alias.sh
