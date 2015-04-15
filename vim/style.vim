" ********************************************************************
" Invisibles
" ********************************************************************
set listchars=tab:->,trail:.,extends:#,precedes:<,nbsp:.    " show invisibles
set invlist                                          " :set list

" Fonts
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

" Color scheme
colorscheme jellybeans
