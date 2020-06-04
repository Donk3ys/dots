" set leader key
let g:mapleader = "\<Space>"



" General Settings
set number
set nowrap              " Display long lines as just one line
set mouse=a             " Enable your mouse
set splitbelow          " Horizontal splits will automatically be below
set splitright          " Vertical splits will automatically be to the right

set tabstop=2           " Insert 2 spaces for a tab
set shiftwidth=2        " Change the number of space characters inserted for indentation
set smarttab            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent         " Makes indenting smart
set autoindent          " Good auto indent

set nobackup            " This is recommended by coc
set nowritebackup       " This is recommended by coc

set clipboard=unnamedplus " Copy paste between vim and everything else

" Language Settings
au BufNewFile,BufRead *.py,*.js
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set fileformat=unix

au BufNewFile,BufRead *.html,*.css,*.dart
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 
