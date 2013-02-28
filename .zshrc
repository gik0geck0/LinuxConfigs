autoload -U compinit
compinit

autoload -U promptinit
promptinit
export PS1="%n:%~%% "
export PATH="$PATH:/home/ultravader/bin"

export HISTSIZE=9999
export HISTFILE="$HOME/.history"

alias renametwm='wmname LG3D'

#key[Home]=${terminfo[khome]}
#key[End]=${terminfo[kend]}
#key[Delete]=${terminfo[kdch1]}
#
#[[ -n "${key[Home]}"	]] && bindkey 	"${key[Home]}"	beginning-of-line
#[[ -n "${key[End]}"	]] && bindkey	"${key[End]}"	end-of-line
#[[ -n "${key[Delete]}"	]] && bindkey	"${key[Delete]}"	delete-char
#
#
#function zle-line-init() {
#	echoti smkx
#}
#
#function zle-line-finish() {
#	echoti rmkx
#}
#
#zle -N zle-line-init
#zle -N zle-line-finish
