Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

let g:fzf_preview_window = ['up:50%']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

" Set preview window colors
let g:fzf_colors =
  \ { 'fg':      ['fg', 'Comment'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Keyword'], 
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Normal'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

nnoremap <Leader>f :Rg <Cr>
nnoremap <Leader>p :GFiles <Cr>
nnoremap <Leader>b :Buffers<Cr>
