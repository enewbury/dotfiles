if exists('g:loaded_wayland_clipboard')
  finish
endif

let g:loaded_wayland_clipboard = 1

" only run this on Wayland
if empty($WAYLAND_DISPLAY)
    finish
endif

" pass register contents to wl-copy if the '+' register was used
function! s:WaylandYank()
    if v:event['regname'] == '+' 
        silent call system('wl-copy', getreg(v:event['regname']))
    endif
endfunction

" run s:WaylandYank() after every time text is yanked
augroup waylandyank
    autocmd!
    autocmd TextYankPost * call s:WaylandYank()
augroup END

let prepaste = "silent let @\"=substitute(system('wl-paste --no-newline'), \"\\r\", '', 'g')"

for p in ['p', 'P']
    execute "nnoremap <silent> \"+" . p . " :<C-U>" . prepaste . " \\| exec 'normal! ' . v:count1 . '" . p . "'<CR>"
endfor

for cr in ['<C-R>', '<C-R><C-R>', '<C-R><C-O>', '<C-R><C-P>']
    execute "inoremap <silent> " . cr . "+ <C-O>:<C-U>" . prepaste . "<CR>" . cr . "\""
endfor
