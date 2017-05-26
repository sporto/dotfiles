call plug#begin('~/.config/nvim/plugged')

" File search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'rking/ag.vim'
Plug 'sandeepcr529/Buffet.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'talek/obvious-resize'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" ********************************************************************
" Elm
" ********************************************************************
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

" ********************************************************************
" Invisibles
" ********************************************************************
set listchars=tab:->,trail:.,extends:#,precedes:<,nbsp:.    " show invisibles
set invlist                                          " :set list

" ********************************************************************
" Fonts
" ********************************************************************
set guifont=Source_Code_Pro_Light:h13

" ********************************************************************
" Color scheme
" ********************************************************************
set t_Co=256
colorscheme jellybeans

" ********************************************************************
" Other colors
" ********************************************************************
" http://stackoverflow.com/questions/10746750/set-vim-bracket-highlighting-colors
hi MatchParen cterm=underline ctermbg=darkblue ctermfg=none

" Highlight insert mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

" ********************************************************************
" Key bindings
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