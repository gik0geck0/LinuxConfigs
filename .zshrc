autoload -U compinit
compinit

export FPATH="$HOME/.zshcomp:$FPATH"

# Fuzzy completion and error correcting
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*' use-cache on
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Automatically rehash when completing
zstyle ":completion:*" rehash yes

autoload -U promptinit
promptinit

# export CLASSPATH="/opt/android-sdk/platforms/android-16/android.jar:$CLASSPATH"

export HISTSIZE=9999
export HISTFILE="$HOME/.history"

# java home, typically for arch linux
# export JAVA_HOME="/usr/lib/jvm/java-7-openjdk/"

export PS1="%n:%~%# "
export PATH="$PATH:$HOME/bin:$HOME/bin/android-sdk-linux/platform-tools:$HOME/bin/android-sdk-linux/tools:$HOME/.gem/ruby/2.0.0/bin"
# Prioritize cabal binaries over system binaries
export PATH="$HOME/.cabal/bin:$PATH"
export SVN_EDITOR="/usr/bin/vim"

alias renametwm='wmname LG3D'
alias vim=gvim

# Open current line in vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-i' edit-command-line

# Pushline
bindkey '^[l' push-line

# ZKBD autobind to get fancy keys (home/end)
autoload zkbd
[[ ! -f ${ZDOTDIR:-$HOME}/.zkbd/linux.tmp ]] && zkbd
source ${ZDOTDIR:-$HOME}/.zkbd/linux.tmp

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

export ANDROID_HOME=/home/gik0geck0/bin/android-sdk-linux

# RVM pathing and versioning
# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# source ~/.rvm/scripts/rvm
# rvm use 2.0.0

# Helps with grading rails projects
# alias railstrap=~/csci446grading/GitRepos/rails_test_suite.bash
export JAVA_HOME=/usr/lib/jvm/default
