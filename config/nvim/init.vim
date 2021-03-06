call plug#begin('~/.config/nvim/plugged')

" File search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'dzhou121/gonvim-fuzzy'

Plug 'brooth/far.vim'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'ElmCast/elm-vim'
Plug 'Shougo/deoplete.nvim'
Plug 'flazz/vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'rking/ag.vim'
Plug 'sandeepcr529/Buffet.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'talek/obvious-resize'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" ********************************************************************
" Key bindings
" ********************************************************************

" Sort
map <C-o> :sort<CR>

" ObviousResize
noremap <silent> <C-h> :ObviousResizeLeft<CR>
noremap <silent> <C-l> :ObviousResizeRight<CR>
noremap <silent> <C-k> :ObviousResizeUp<CR>
noremap <silent> <C-j> :ObviousResizeDown<CR>

" fuzzy file search with ⌃P
nnoremap <C-p> :FZF<CR>

" Nerd tree
noremap <C-n> :NERDTreeToggle<CR>
noremap <C-m> :NERDTreeFind<cr>

" Windows
map <C-s> :split<CR>
map <C-x> :vsplit<CR>

" Buffet
map <C-b> :Bufferlist<cr>

" ********************************************************************
" Colours
" ********************************************************************
colorscheme jellybeans

" ********************************************************************
" Invisibles
" ********************************************************************
set listchars=tab:>-,trail:.,extends:#,precedes:<,nbsp:.    " show invisibles
set list                                                    " :set spacevim_listchars
set tabstop=4
set shiftwidth=4 " Number of spaces use by autoindent

" ********************************************************************
" Other random config
" ********************************************************************
set t_Co=256 " 256 color mode in term
set cc=80 " Highlight column at 80
set autoread " ReaLoad a file if was changed outside of Vim
set number " show line number
set ru " Ruler active

" ********************************************************************
" gonvim
" ********************************************************************
let g:gonvim_start_fullscreen = 1

" ********************************************************************
" deoplete (Auto completion)
" https://github.com/Shougo/deoplete.nvim
" ********************************************************************

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" let g:python3_host_prog = '/usr/local/bin/pip3'
