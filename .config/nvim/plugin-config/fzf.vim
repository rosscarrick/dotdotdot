Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

nnoremap <Leader>f :Rg <Cr>
nnoremap <Leader>p :GFiles <Cr>

let g:fzf_preview_window = ['right,50%,<70(up,40%)', 'ctrl-/']
