" Matt Buland's vimrc

set nocompatible
set nowrap
colorscheme delek_gvim
syntax on
set smartindent
set autoindent

" soft tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" set list listchars=tab:\|\ ,trail:¤,nbsp:¤
hi SpecialKey ctermbg=NONE guibg=NONE
hi SpecialKey ctermfg=red guifg=red

set number
command W w
command Wq wq

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" au Syntax * RainbowParenthesesLoadChevrons

if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
    autocmd Filetype java setlocal completefunc=javacomplete#Complete
endif

if has('gui_running')
    set guioptions=cat
    set guifont=Source\ Code\ Pro\ 11
endif

filetype plugin indent on
