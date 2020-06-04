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


" Import General Settings & Key Maps
source $HOME/.config/nvim/settings/general.vim
source $HOME/.config/nvim/settings/mappings.vim


"""""""""""""""""""""""""""""""""""""""""
" COLORS

"""""""""""""""""""""""""""""""""""""""""

set termguicolors

let g:python_highlight_all = 1
let g:python_highlight_operators = 0

let g:html_highlight_all = 1

colorscheme gruvbox-material
let g:airline_theme='transparent'

