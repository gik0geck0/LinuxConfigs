autoload -U compinit
compinit

autoload -U promptinit
promptinit

export HISTSIZE=9999
export HISTFILE="$HOME/.history"

# java home, typically for arch linux
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk/"

export PS1="%n:%~%% "
export PATH="$PATH:/home/$USER/bin:/home/$USER/.cabal/bin"
export SVN_EDITOR="/usr/bin/vim"


alias renametwm='wmname LG3D'
alias vim=gvim

# Open current line in vim
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-i' edit-command-line

# ZKBD autobind to get fancy keys (home/end)
autoload zkbd
[[ ! -f ${ZDOTDIR:-$HOME}/.zkbd/rxvt-unicode-256color.tmp ]] && zkbd
source ${ZDOTDIR:-$HOME}/.zkbd/rxvt-unicode-256color.tmp

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
