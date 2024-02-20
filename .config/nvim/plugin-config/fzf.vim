Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

let g:fzf_preview_window = ['up:50%']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9 } }

nnoremap <Leader>f :Rg <Cr>
nnoremap <Leader>p :GFiles <Cr>
nnoremap <Leader>b :Buffers<Cr>

