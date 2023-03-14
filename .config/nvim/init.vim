let mapleader = " "

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
let g:netrw_winsize = 20

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
source ~/.config/nvim/plugin-config/vim-fugitive.vim
Plug 'overcache/NeoSolarized'
Plug 'tpope/vim-commentary'
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
" Double-space to save
nnoremap <Leader><Leader> :w<Cr>

" Space+j to go to prev buffer
nnoremap <Leader>j <C-^>

" Space+n go to next match
nnoremap <Leader>n *

" Space+c open tree at current file
nnoremap <Leader>c :Lexplore %:p:h<CR><C-w>r

" Space+t open tree at working directory
nnoremap <Leader>t :Lexplore <CR><C-w>r

" Space+b list Buffers
nnoremap <Leader>b :Buffers<Cr>

" Space+r init replace all in file
nnoremap <Leader>r bye:%s///g<left><left><left>

" Tab = toggle fold
nnoremap <tab> za

