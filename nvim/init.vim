"""""""""""""""""""""""""""""""""""""""""
" NEO VIM
"
"""""""""""""""""""""""""""""""""""""""""

call plug#begin("~/.config/nvim/plugged")

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""
"CONFIGS
"
"""""""""""""""""""""""""""""""""""""""""

" Airline
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 0  "Show open tabs top of screen
let g:airline#extensions#tabline#buffer_nr_show = 0 "Show open tab number


" Fzf
set rtp+=/usr/local/opt/fzf


" COC
let g:coc_global_extensions = [
  \ 'coc-python',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-flutter',
  \ 'coc-highlight',
  \ 'coc-snippets',
  \ 'coc-explorer',
  \ ]

nmap ≤ :CocCommand explorer --preset .vim<CR>


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


" My Setting
set number
set cmdheight=2


" My Key Maps


"""""""""""""""""""""""""""""""""""""""""
" COLORS

"""""""""""""""""""""""""""""""""""""""""

set termguicolors

let g:python_highlight_all = 1
let g:python_highlight_operators = 0

let g:html_highlight_all = 1

colorscheme gruvbox-material
let g:airline_theme='transparent'

