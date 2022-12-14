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
source ~/.config/nvim/plugin-config/coc.vim
source ~/.config/nvim/plugin-config/fzf.vim
source ~/.config/nvim/plugin-config/gitgutter.vim
source ~/.config/nvim/plugin-config/git-blamer.vim
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'overcache/NeoSolarized'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

"""""
"""""
""""" Colour
set termguicolors
colorscheme NeoSolarized

"""""
"""""
""""" Mappings 
let mapleader = " "

" Double-space to save
nnoremap <Leader><Leader> :w<Cr>

" Space+j to go to prev buffer
nnoremap <Leader>j <C-^>

" Space+n go to next match
nnoremap <Leader>n *

" Space+b list Buffers
nnoremap <Leader>b :Buffers<Cr>

" Tab = toggle fold
nnoremap <tab> za
