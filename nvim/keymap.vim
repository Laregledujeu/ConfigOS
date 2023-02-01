
source ~/.config/nvim/disable_keymap.vim

" Control - O : find file with name."
nnoremap <A-o> <cmd>Telescope find_files<cr>
nnoremap <A-f> <cmd>Telescope live_grep<cr>
nnoremap <A-c> :Telescope colorscheme<cr>
" Control - L : find in file
" nnoremap <C-l> <cmd>Telescope live_grep<cr>
" need to remake

noremap ; :


" Tab Map
noremap <A-1> 1gt
noremap <A-2> 2gt
noremap <A-3> 3gt
noremap <A-4> 4gt
noremap <A-5> 5gt
noremap <A-6> 6gt
noremap <A-7> 7gt
noremap <A-8> 8gt
noremap <A-9> 9gt
noremap <A-t> :tabnew<CR>
noremap <A-w> :tabclose<CR>
noremap <A-h> :tabprevious<CR>
noremap <A-l> :tabnext<CR>

" Use for the GDB

" nnoremap <silent> <C-n> :Over<CR>
" nnoremap <silent> <C-s> :Step<CR>
" nnoremap <silent> <C-b> :Break<CR>
" nnoremap <silent> <C-c> :Clear<CR>
" nnoremap <silent> <A-c> :Continue<CR>
