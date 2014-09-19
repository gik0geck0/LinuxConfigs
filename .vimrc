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

set list listchars=tab:\|\ ,trail:¤,nbsp:¤
hi SpecialKey ctermbg=NONE guibg=NONE
hi SpecialKey ctermfg=red guifg=red

set number
command W w
command Wq wq
set undofile
set undodir=~/vimundo
set viminfo='20,\"1000
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" au Syntax * RainbowParenthesesLoadChevrons

filetype plugin on
filetype plugin indent on
if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
    autocmd Filetype java setlocal completefunc=javacomplete#Complete
endif

if has('gui_running')
    set guioptions=cat
    set guifont=Source\ Code\ Pro\ 11
endif
