" Remap leader
let mapleader=","

noremap <C-n> :NERDTreeToggle<cr>
nnoremap <C-p> :CtrlP<cr>
"noremap <silent> <C-> :exe "resize -5"<cr>
"noremap <silent> <C-'> :exe "resize +5"<cr>
noremap <C-]> :exe 'vertical resize -5'<cr>
noremap <C-\> :exe 'vertical resize +5'<cr>

" RSpec.vim mappings
map <Leader>r :call RunNearestSpec()<cr>
map <Leader>t :call RunCurrentSpecFile()<cr>
map <Leader>e :call RunLastSpec()<cr>
map <Leader>a :call RunAllSpecs()<cr>

" Surround
let b:surround_{char2nr('=')} = "<%= \r %>"
let b:surround_{char2nr('-')} = "<% \r %>"

" Multiple cursor
" let g:multi_cursor_use_default_mapping=0
" let g:multi_cursor_next_key='<C-m>'
" let g:multi_cursor_prev_key='<C-p>'
" let g:multi_cursor_skip_key='<C-x>'
" let g:multi_cursor_quit_key='<Esc>'