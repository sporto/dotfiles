" Remap leader
let mapleader=","

noremap <C-n> :NERDTreeToggle<cr>
nnoremap <C-p> :CtrlP<cr>

" RSpec.vim mappings
map <Leader>r :call RunNearestSpec()<CR>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>e :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Surround
let b:surround_{char2nr('=')} = "<%= \r %>"
let b:surround_{char2nr('-')} = "<% \r %>"

" Multiple cursor
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_next_key='<C-m>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'