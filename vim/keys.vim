" Remap leader
let mapleader="'"

noremap <C-n> :NERDTreeToggle<cr>
noremap <C-m> :NERDTreeFind<cr>

nnoremap <C-p> :CtrlP<cr>
" noremap <silent> <C-> :exe "resize -5"<cr>
" noremap <silent> <C-'> :exe "resize +5"<cr>
" noremap <C-]> :exe 'vertical resize -5'<cr>
" noremap <C-\> :exe 'vertical resize +5'<cr>
noremap <silent> <C-h> :ObviousResizeLeft<CR>
noremap <silent> <C-l> :ObviousResizeRight<CR>
noremap <silent> <C-k> :ObviousResizeUp<CR>
noremap <silent> <C-j> :ObviousResizeDown<CR>

" RSpec.vim mappings
map <Leader>r :call RunNearestSpec()<cr>
map <Leader>t :call RunCurrentSpecFile()<cr>
map <Leader>e :call RunLastSpec()<cr>
map <Leader>a :call RunAllSpecs()<cr>

" Surround
let b:surround_{char2nr('=')} = "<%= \r %>"
let b:surround_{char2nr('-')} = "<% \r %>"

" Buffet
map <silent> <C-b> :Bufferlist<CR>

" Copy
vmap <C-c> "*y<CR>
" vmap <silent><Leader>x :w !pbcopy<CR><CR>
" nmap <Leader>pp :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

" Multiple cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-a>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" let g:multi_cursor_start_key='<C-s>'

" Easy Motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
