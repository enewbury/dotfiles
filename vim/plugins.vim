let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Theme
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'ryanoasis/vim-devicons'

" UI Features
Plug 'airblade/vim-gitgutter'
Plug 'unblevable/quick-scope' 
Plug 'preservim/nerdtree'

" Find & Replace
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'stefandtw/quickfix-reflector.vim'


" Unit testing
Plug 'vim-test/vim-test'
Plug 'kassio/neoterm'

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
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'antoinemadec/coc-fzf'
Plug 'gabrielpoca/replacer.nvim'
Plug 'dense-analysis/ale'

" Elixir
Plug 'tpope/vim-endwise',    { 'for': ['ruby', 'elixir'] }
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'elixir-editors/vim-elixir'

" Other syntaxes
Plug 'sheerun/vim-polyglot'

call plug#end()

source ~/.vim/plugin/lightline.vim
source ~/.vim/plugin/neoterm.vim
source ~/.vim/plugin/vim-test.vim
source ~/.vim/plugin/fugitive.vim
source ~/.vim/plugin/projectionist.vim
source ~/.vim/plugin/ale.vim
source ~/.vim/plugin/nerdtree.vim

"
" quick-scope
"
let g:qs_max_chars=80

"
" vim-gitgutter
"
let g:gitgutter_override_sign_column_highlight = 0
