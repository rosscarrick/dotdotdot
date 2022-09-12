syntax on
set noerrorbells

" Tabs
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smartindent

" Lines
set number
set relativenumber
set nowrap
set cmdheight=2

" Buffers
set noswapfile
set nobackup
set nowritebackup
set clipboard+=unnamedplus
set hidden

" Search
set incsearch
set nohlsearch

" Scroll
set scrolloff=25
set sidescrolloff=8

" netrw
let g:netrw_banner=0
let g:netrw_liststyle=3

" Folding
set foldmethod=indent
set foldlevelstart=99

"""""
"""""
""""" Plugins

call plug#begin("~/.config/nvim/autoload")
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'overcache/NeoSolarized'
call plug#end()

"""""
"""""
""""" Colour
set termguicolors
colorscheme NeoSolarized

"""""
"""""
""""" Mappings 

" Tab = toggle fold
nnoremap <tab> za
