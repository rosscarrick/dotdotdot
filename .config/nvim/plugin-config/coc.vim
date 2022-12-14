Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-pairs',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-snippets',
  \ 'coc-css']

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gj <Plug>(coc-diagnostic-next)
nmap <silent> gk <Plug>(coc-diagnostic-prev)

" Press enter to select completion suggestion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
