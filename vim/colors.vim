syntax on

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme onehalfdark

highlight Normal guibg=NONE ctermbg=NONE
highlight Normal guibg=NONE ctermbg=none
highlight LineNr guibg=NONE ctermbg=none
highlight Folded guibg=NONE ctermbg=none
highlight NonText guibg=NONE ctermbg=none
highlight SpecialKey guibg=NONE ctermbg=none
highlight VertSplit guibg=NONE ctermbg=none
highlight SignColumn guifg=NONE ctermfg=NONE guibg=NONE ctermbg=none
highlight Pmenu ctermfg=188 ctermbg=237 guifg=#dcdfe4 guibg=#313640
highlight PmenuSel ctermfg=236 guifg=#282c34 

