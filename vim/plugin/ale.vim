let g:ale_fixers = { 'elixir': ['mix_format']}
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_fix_on_save = 1

augroup AutoAle
  autocmd!
  autocmd User ALELint call UpdateLightline()
augroup END

function! UpdateLightline()
  if exists('#lightline')
    call lightline#update()
  endif
endfunction
