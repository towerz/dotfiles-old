[[ -d $HOME/Applications/gradle/bin ]] && PATH=$HOME/Applications/gradle/bin:$PATH
[[ -d $HOME/Applications/android-sdk/ndk ]] && PATH=$HOME/Applications/android-sdk/ndk:$PATH

if [[ -d $HOME/Applications/android-sdk ]]; then
  ANDROID_HOME=$HOME/Applications/android-sdk
  [[ -d $HOME/Applications/android-sdk/platform-tools ]] && PATH=$PATH:$HOME/Applications/android-sdk/platform-tools
  [[ -d $HOME/Applications/android-sdk/tools ]] && PATH=$PATH:$HOME/Applications/android-sdk/tools
fi

export PATH
