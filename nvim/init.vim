"""""""""""""""""""""""""""""""""""""""""
" NEO VIM
"
"""""""""""""""""""""""""""""""""""""""""

call plug#begin("~/.config/nvim/plugged")

"" Debugger
""""" run Vimspector install --all
Plug 'puremourning/vimspector'

" File Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Func Def Finder
Plug 'pechorin/any-jump.vim' "SPACE-j == search def
Plug 'burntsushi/ripgrep'

" General Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" Git
Plug 'tpope/vim-fugitive'

"" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

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
  \ 'coc-go',
	\ 'coc-git',
  \ 'coc-highlight',
  \ 'coc-snippets',
  \ 'coc-sql',
  \ 'coc-yaml',
  \ ]


" Jump_Any
let g:any_jump_window_width_ratio  = 0.9

" Vimspector key maps
let g:vimspector_enable_mappings = 'HUMAN'

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
