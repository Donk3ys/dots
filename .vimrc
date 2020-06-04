set nocompatible
filetype off

"""""""""""""""""""""""""""""""""""""""""""""""""
" PLUG - PLUGIN MANAGER
"
"""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ap/vim-css-color'

call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN SETTINGS
"
"""""""""""""""""""""""""""""""""""""""""""""""""


" Airline
let g:airline_powerline_fonts = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 0


"""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR & VIM SETTINGS

"""""""""""""""""""""""""""""""""""""""""""""""""

" Plugins load correctly
filetype plugin indent on


" Language Settings

au BufNewFile,BufRead *.py,*.js
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set fileformat=unix

au BufNewFile,BufRead *.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2


"Tmux Cursor change
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


" Indentation
set autoindent
set expandtab
"set filetype indent on
set scrolloff=4
set textwidth=79
set smarttab

" Interface
set cmdheight=2
set laststatus=2
set number
set noerrorbells
set ruler
set showcmd
set visualbell

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

" General
set hidden
set backspace=indent,eol,start
set formatoptions=tcqrn1
set linebreak
set modelines=0
set paste
set wildmenu	" better command-line completion
set wrap

" Color and Text
set background=dark
set encoding=utf-8
set t_Co=256
set termguicolors

let g:python_highlight_all = 1
let g:python_highlight_operators = 0

colorscheme gruvbox-material
let g:airline_theme='transparent'


"""""""""""""""""""""""""""""""""""""""""""""""""
" HOT-KEY MAPPINGSS

"""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=" "

set pastetoggle=<F3>

" no arrows
" nnoremap <Left> <NOP>
" nnoremap <Right> <NOP>
" nnoremap <Up> <NOP>
" nnoremap <Down> <NOP>


