set shell=bash

if has('vim_starting')
  set nocompatible               " Be iMproved

   " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:

NeoBundle 'bling/vim-airline'
NeoBundle 'ConradIrwin/vim-bracketed-paste'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'ervandew/supertab'
NeoBundle 'fatih/vim-go'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'lambdatoast/elm.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'sandeepcr529/Buffet.vim'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'talek/obvious-resize'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
NeoBundle 'wting/rust.vim'
" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
