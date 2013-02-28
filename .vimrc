" Matt Buland's vimrc

set nocompatible
set nowrap
filetype plugin on
colorscheme delek
syntax on
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set number
command W w
command Wq wq
set undofile
set undodir=/home/ultravader/vimundo
set viminfo='20,\"1000
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" au Syntax * RainbowParenthesesLoadChevrons
