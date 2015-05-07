set nocompatible
syntax on
set nu
set encoding=utf-8
set autoread
filetype plugin indent on
set completeopt=preview,menu
set nobackup
set cursorcolumn
set cursorline
set hlsearch
set incsearch
set completeopt=longest,menu
set wildmenu
set wildignore=*.o,*.d,*~,*.pyc,*.class


" Authorinfo
let g:vimrc_author="richard zhang"
let g:vimrc_email="richardzzj@gmail.com"
let g:vimrc_homepage=" "
nmap <F4> :AuthorInfoDetect<cr>

autocmd FileType c,cpp source ~/.vimrc4c
autocmd FileType python source ~/.vimrc4py
