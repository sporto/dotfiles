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
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'tpope/vim-surround'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'rking/ag.vim'
NeoBundle 'talek/obvious-resize'
NeoBundle 'sandeepcr529/Buffet.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'ervandew/supertab'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'wting/rust.vim'
" NeoBundle 'Valloric/YouCompleteMe'
" NeoBundle 'hlissner/vim-multiedit'
" NeoBundle 'terryma/vim-multiple-cursors'

" You can specify revision/branch/tag.
" NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
