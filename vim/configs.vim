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
" let g:ctrlp_show_ignore = {
" 	\ 'dir':  '\v[\/]\.(git|hg|svn)$'
" 	\ }
set wildignore+=*/tmp/*,node_modules,.DS_Store

" airline config
set laststatus=2
let g:airline_theme='badwolf'

" Go VIM
let g:go_fmt_command = "goimports"

" ********************************************************************
" Other VIM configuration
" ********************************************************************
" No swap files and backups
set nobackup
set noswapfile
