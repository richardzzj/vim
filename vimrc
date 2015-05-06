set nocompatible
syntax on
set nu
filetype plugin indent on

" Authorinfo
let g:vimrc_author="richard zhang"
let g:vimrc_email="richardzzj@gmail.com"
let g:vimrc_homepage=" "
nmap <F4> :AuthorInfoDetect<cr>

autocmd FileType c,cpp source ~/.vimrc4c
autocmd FileType python source ~/.vimrc4py
