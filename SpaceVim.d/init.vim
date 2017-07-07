" set SpaceVim colorscheme
" let g:spacevim_colorscheme = 'jellybeans'

" ********************************************************************
" Invisibles
" ********************************************************************
set listchars=tab:>-,trail:.,extends:#,precedes:<,nbsp:.    " show invisibles
set list                                                    " :set spacevim_listchars

" ********************************************************************
" Custom plugins
" ********************************************************************
let g:spacevim_custom_plugins = [
\ ['mattn/emmet-vim'],
\ ['mxw/vim-jsx'],
\ ]

" ********************************************************************
" Other
" ********************************************************************
autocmd FileType html,css,javascript.jsx EmmetInstall
