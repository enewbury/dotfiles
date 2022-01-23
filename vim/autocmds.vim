" remove trailing whitespaces on save,
" only for the given filetypes
let g:remove_trailing_whitespaces_whitelist = [
  \ '*.ex',
  \ '*.exs',
  \ '*.rb',
  \ '*.js?',
  \ '*.ts?',
  \ ]
execute 'autocmd BufWritePre ' .
  \ join(g:remove_trailing_whitespaces_whitelist, ',') .
  \ ' call RemoveTrailingWhitespaces()'
