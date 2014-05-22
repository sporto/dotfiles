set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/unite.vim'
" Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
" Bundle 'brettof86/vim-codeschool'
Bundle 'nanotech/jellybeans.vim'
Bundle 'editorconfig/editorconfig-vim'

set nocompatible
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"""""""""""""""
" airline config
set laststatus=2
let g:airline_theme='badwolf'

" show invisibles
set listchars=tab:->,trail:.,extends:>,precedes:<
" :set list
set invlist

colorscheme jellybeans

" size of a hard tabstop
set tabstop=2

" size of an "indent"
set shiftwidth=2

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=2

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line

noremap <C-n> :NERDTreeToggle<cr>
nnoremap <C-p> :Unite -start-insert file<cr>
