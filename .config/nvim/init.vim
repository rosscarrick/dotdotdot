let mapleader = " "

syntax on
set noerrorbells
set showmatch
set guicursor=a:block

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
set scrolloff=10
set sidescrolloff=8

" netrw
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize = 20
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

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
source ~/.config/nvim/plugin-config/copilot.vim
Plug 'tpope/vim-commentary'
call plug#end()

"""""
"""""
""""" Colour
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
hi clear LineNr

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
nnoremap <Leader>c :Lexplore %:p:h<CR>

" Space+t open tree at working directory
nnoremap <Leader>t :Lexplore <CR>

" Space+b list Buffers
nnoremap <Leader>b :Buffers<Cr>

" Right arrow = next buffer
nnoremap <Right> :bn<CR>

" Left arrow = prev buffer
nnoremap <Left> :bn<CR>

" Space+r init replace all in file
nnoremap <Leader>r yiw:%s///g<left><left><left>

" Tab = toggle fold
nnoremap <tab> za

" Down arrow = down 5
nnoremap <Down> 5j

" Up arrow = up 5
nnoremap <Up> 5k

" Ctl+e = turn word under cursor into html tag
inoremap <C-e> <esc>ciw<<C-o>p></<C-o>p><esc>F<i

