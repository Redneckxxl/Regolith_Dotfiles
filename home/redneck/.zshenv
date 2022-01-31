typeset -U PATH path

# Local Bin
path=("$HOME/.local/bin" "$path[@]")

# Android Studio
export ANDROID_HOME=$HOME/Android/Sdk
path=("$ANDROID_HOME/emulator" "$ANDROID_HOME/tools" "$ANDROID_HOME/tools/bin" "$ANDROID_HOME/platform-tools" "$path[@]")

# Fast Node Manager
path=("$HOME/.fnm" "$path[@]")

export PATH

eval "$(fnm env)"
