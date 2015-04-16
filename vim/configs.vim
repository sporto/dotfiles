" NERDTree
let g:loaded_netrw = 1                      " Disable netrw
let g:loaded_netrwPlugin = 1                " Disable netrw
let g:NERDTreeHijackNetrw = 0               " Hijack netrw
let g:NERDTreeShowLineNumbers = 0           " Disable line numbers
let g:NERDTreeMinimalUI = 1                 " Disable help message
let g:NERDTreeDirArrows = 1                 " Enable directory arrows
let g:NERDTreeShowHidden=1

" CtrlP
let g:ctrlp_show_hidden = 1
set wildignore+=*/tmp/*,node_modules,.DS_Store

" airline config
set laststatus=2
let g:airline_theme='badwolf'

" Go VIM
let g:go_fmt_command = "goimports"

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['jscs']

" ********************************************************************
" Other VIM configuration
" ********************************************************************
" No swap files and backups
set nobackup
set noswapfile
