let mapleader = " "

set nocompatible
set noerrorbells
set showmatch

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
""""" Theme
syntax on
set bg=light

" Handy map to chek which highlight group is under the cursor
nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

hi Normal ctermbg=255 ctermfg=232
hi Comment ctermbg=NONE ctermfg=244
hi LineNr ctermbg=NONE ctermfg=232
hi LineNrAbove ctermbg=NONE ctermfg=244
hi LineNrBelow ctermbg=NONE ctermfg=244
hi SignColumn ctermbg=NONE ctermfg=244
hi String ctermbg=NONE ctermfg=57
hi Number ctermbg=NONE ctermfg=22
hi Boolean ctermbg=NONE ctermfg=53
hi Statement ctermbg=NONE ctermfg=88
hi Type ctermbg=NONE ctermfg=232
hi PreProc ctermbg=NONE ctermfg=17
hi Special ctermbg=NONE ctermfg=232
hi Identifier ctermbg=NONE ctermfg=88
hi Pmenu ctermbg=254 ctermfg=244
hi MatchParen ctermbg=88 ctermfg=231
hi ErrorMsg ctermbg=224 ctermfg=1
hi WarningMsg ctermbg=223 ctermfg=172
hi DiffAdd ctermbg=NONE ctermfg=22
hi DiffDelete ctermbg=NONE ctermfg=1

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

" Right arrow = next buffer
nnoremap <Right> :bn<CR>

" Left arrow = prev buffer
nnoremap <Left> :bp<CR>

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

