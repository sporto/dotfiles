" ********************************************************************
" NERDTree
" ********************************************************************
let g:loaded_netrw = 1                      " Disable netrw
let g:loaded_netrwPlugin = 1                " Disable netrw
let g:NERDTreeHijackNetrw = 0               " Hijack netrw
let g:NERDTreeShowLineNumbers = 0           " Disable line numbers
let g:NERDTreeMinimalUI = 1                 " Disable help message
let g:NERDTreeDirArrows = 1                 " Enable directory arrows
let g:NERDTreeShowHidden=1

" ********************************************************************
" CtrlP
" ********************************************************************
let g:ctrlp_show_hidden = 1
" let g:ctrlp_show_ignore = {
" 	\ 'dir':  '\v[\/]\.(git|hg|svn)$'
" 	\ }
set wildignore+=*/tmp/*,node_modules,.DS_Store

" ********************************************************************
" airline
" ********************************************************************
set laststatus=2
let g:airline_theme='jellybeans'

" ********************************************************************
" Go
" ********************************************************************
let g:go_fmt_command = "goimports"


" ********************************************************************
" Syntastic
" ********************************************************************
let g:syntastic_check_on_open = 1
" let g:syntastic_javascript_checkers = ['jscs']
let g:syntastic_javascript_checkers = ['']

" ********************************************************************
" Other VIM configuration
" ********************************************************************
" No swap files and backups
set nobackup
set noswapfile

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

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
" Indentation
" ********************************************************************
set shiftwidth=2            " Number of spaces to use in each autoindent step
set tabstop=2               " Two tab spaces
set softtabstop=2           " Number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab               " Spaces instead of tabs for better cross-editor compatibility
set autoindent              " Keep the indent when creating a new line
set smarttab                " Use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
set cindent                 " Recommended seting for automatic C-style indentation
set autoindent              " Automatic indentation in non-C files
set number                  " always show line numbers
set showmatch               " set show matching parenthesis

" ********************************************************************
" Folding
" ********************************************************************
" Fold using syntax
set foldmethod=syntax
" Fold level 1 automatically when opening a file
set foldlevel=1
" Automatically close a fold when moving out
" set foldclose=all
" Do not fold level 2 onwards
set foldnestmax=2

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

" Seems that the cursor color cannot be changed in Mac terminal
" au InsertLeave * hi Cursor guibg=blue
" au InsertEnter * hi Cursor guibg=green
