let g:fzf_command_prefix = 'Fzf'

nmap <C-p> :FzfFiles<CR>
nmap <C-f> :FzfRg<CR>

" CTRL-A CTRL-Q to select all and build quickfix list
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

"
" Customize fzf colors to match your color scheme
    " - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" coc-fzf
"
nnoremap <silent> <leader>ca  :<C-u>CocFzfList diagnostics<CR>
nnoremap <silent> <leader>cb  :<C-u>CocFzfList diagnostics --current-buf<CR>
nnoremap <silent> <leader>cc  :<C-u>CocFzfList commands<CR>
nnoremap <silent> <leader>ce  :<C-u>CocFzfList extensions<CR>
nnoremap <silent> <leader>cl  :<C-u>CocFzfList location<CR>
nnoremap <silent> <leader>co  :<C-u>CocFzfList outline<CR>
nnoremap <silent> <leader>cs  :<C-u>CocFzfList symbols<CR>
nnoremap <silent> <leader>cS  :<C-u>CocFzfList services<CR>
nnoremap <silent> <leader>cp  :<C-u>CocFzfListResume<CR>
