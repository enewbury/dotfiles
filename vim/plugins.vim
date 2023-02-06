let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Theme
Plug 'itchyny/lightline.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'ryanoasis/vim-devicons'

" UI Features
Plug 'airblade/vim-gitgutter'
Plug 'unblevable/quick-scope' 
Plug 'preservim/nerdtree'

" Unit testing
Plug 'vim-test/vim-test'

" Editor features
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-projectionist'
Plug 'Raimondi/delimitMate'
Plug 'andymass/vim-matchup'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/camelcasemotion'

" Elixir
Plug 'tpope/vim-endwise',    { 'for': ['ruby', 'elixir'] }
Plug 'elixir-editors/vim-elixir'

" Other syntaxes
Plug 'sheerun/vim-polyglot'

" Tmux integration
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

source ~/.vim/plugin/lightline.vim
source ~/.vim/plugin/vim-test.vim
source ~/.vim/plugin/fugitive.vim
source ~/.vim/plugin/projectionist.vim
source ~/.vim/plugin/nerdtree.vim

"
" quick-scope
"
let g:qs_max_chars=80

"
" vim-gitgutter
"
let g:gitgutter_override_sign_column_highlight = 0
