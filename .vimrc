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

if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
    autocmd Filetype java setlocal completefunc=javacomplete#Complete
endif

if has('gui_running')
    set guioptions=cat
    set guifont=Source\ Code\ Pro\ 11
endif

"NeoBundles
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'wting/rust.vim'
NeoBundle 'Floobits/floobits-vim'

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

filetype plugin indent on
