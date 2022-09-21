" buffer navigation
" use ctrl-[hjkl] to select the active split
nmap <silent> <C-k>      :wincmd k<CR>
nmap <silent> <C-j>      :wincmd j<CR>
nmap <silent> <C-h>      :wincmd h<CR>
nmap <silent> <C-l>      :wincmd l<CR>

" moves line up or down
nnoremap <M-j> :m+<CR>==
nnoremap <M-k> :m-2<CR>==
inoremap <M-j> <Esc>:m+<CR>==gi
inoremap <M-k> <Esc>:m-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv


" close current buffer
nmap <silent> <leader>q :q<CR>

" tab navigation
nnoremap <Leader>tp :tabprevious<CR>
nnoremap <Leader>tn :tabnext<CR>

" Ctrl-S save
noremap  <C-s>      :update<CR>
inoremap <C-s> <C-o>:update<CR><Esc>

nnoremap ^ 0
nnoremap 0 ^

" zoom / unzoom a vim pane
nnoremap <leader>z :call FoldToggle()<CR>

" still able to save after forgetting to sudo
cmap w!! w !sudo tee % > /dev/null

" Rename the current file
map <Leader>r :call Rename()<CR>

" Move to beginning/end of line in insert mode
inoremap <C-a> <C-o>0
inoremap <C-e> <C-o>$

nmap <leader>d :call FindDoc()<CR>

nnoremap <leader>Vc :so $MYVIMRC<CR>

nmap <leader>O O<Esc>
nmap <leader>o o<Esc>

nmap <leader>h :noh<CR>
nmap <leader>sp :setlocal spell spelllang=en_us<CR>
nmap <leader>nsp :setlocal nospell<CR>

nmap <leader>/ gcc
