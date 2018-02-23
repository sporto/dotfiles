call plug#begin('~/.config/nvim/plugged')

" File search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'ElmCast/elm-vim'
Plug 'flazz/vim-colorschemes'
Plug 'mattn/emmet-vim'
Plug 'rking/ag.vim'
Plug 'sandeepcr529/Buffet.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'talek/obvious-resize'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" ********************************************************************
" Key bindings
" Colours
" ********************************************************************

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

" ********************************************************************
" Colours
" ********************************************************************
colorscheme jellybeans

" ********************************************************************
" Invisibles
" ********************************************************************
set listchars=tab:>-,trail:.,extends:#,precedes:<,nbsp:.    " show invisibles
set list                                                    " :set spacevim_listchars
