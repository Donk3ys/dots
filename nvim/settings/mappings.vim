" SPACE set to leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" COC explorer set Alt + / to toggle explorer window
nmap ÷ :CocCommand explorer --preset .vim<CR>


" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>


" TAB in general mode will move to next window buffer
nnoremap <TAB> <C-W>w
" SHIFT-TAB will go between tab buffers
nnoremap <S-TAB> :bnext<CR>

"CTRL-s Alternate way to save
nnoremap <C-s> :w<CR>


" SHIFT-< & SHIFT-> Better tabbing
vnoremap < <gv
vnoremap > >gv


" FZF ctrl-t / v 
"leader-// find lines in file
nmap // :BLines!<CR>
"leader-?? finds lines in project
nmap ?? :Rg!<CR>
"leader-p finds files in project
nmap <leader>p :Files!<CR>

"Git-History for file
command! GitHistory execute ":BCommits!"

nmap cc :Commands<CR>
