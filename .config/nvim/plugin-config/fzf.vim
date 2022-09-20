Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

nnoremap <C-f> :Rg <Cr>
nnoremap <C-p> :GFiles <Cr>
