" COC explorer set Alt + , to toggle explorer window
nmap ≤ :CocCommand explorer --preset .vim<CR>


" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>


" TAB in general mode will move to next window buffer
nnoremap <TAB> <C-W>w
" SHIFT-TAB will go between tab buffers
nnoremap <S-TAB> :bnext<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>


" Better tabbing
vnoremap < <gv
vnoremap > >gv

