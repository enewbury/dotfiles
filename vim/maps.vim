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

" switch between the last two files
map <Tab> :b#<CR>

" tab navigation
nnoremap <C-y> :tabprevious<CR>
" nnoremap <C-u> :tabnext<CR>

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

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

nnoremap <leader>so :so $MYVIMRC<CR>

nmap <leader>o o<Esc>
nmap <leader>O O<Esc>

" copy to system clipboard
nnoremap <C-@> :call system("wl-copy", @")<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
