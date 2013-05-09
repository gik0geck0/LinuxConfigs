" Matt Buland's vimrc

set nocompatible
set nowrap
filetype plugin on
colorscheme delek_gvim
syntax on
set smartindent
set autoindent

" soft tabs
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab

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
filetype plugin indent on

if has('gui_running')
	set guioptions=cat
	set guifont=droidsansmono\ 8
endif
