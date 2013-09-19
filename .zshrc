autoload -U compinit
compinit

autoload -U promptinit
promptinit

export CLASSPATH="/opt/android-sdk/platforms/android-16/android.jar:$CLASSPATH"
export PS1="%n:%~%% "
export PATH="$PATH:/home/gik0geck0/bin:/home/gik0geck0/.cabal/bin"
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk/"

export HISTSIZE=9999
export HISTFILE="$HOME/.history"

alias renametwm='wmname LG3D'
alias vim=gvim

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-i' edit-command-line

autoload zkbd
[[ ! -f ${ZDOTDIR:-$HOME}/.zkbd/rxvt-unicode-256color-:0.0 ]] && zkbd
source ${ZDOTDIR:-$HOME}/.zkbd/rxvt-unicode-256color-:0.0

[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search
[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char

alias catkin_make='catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so'
alias catkin_make_isolated='catkin_make_isolated -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so'

source /opt/ros/groovy/setup.zsh
