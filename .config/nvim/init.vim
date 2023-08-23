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
let g:netrw_winsize = 45
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

" Folding
set foldmethod=indent
set foldlevelstart=99

"""""
""""" Plugins
call plug#begin("~/.config/nvim/autoload")
source ~/.config/nvim/plugin-config/coc.vim
source ~/.config/nvim/plugin-config/fzf.vim
source ~/.config/nvim/plugin-config/gitgutter.vim
source ~/.config/nvim/plugin-config/git-blamer.vim
source ~/.config/nvim/plugin-config/vim-fugitive.vim
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
source ~/.config/nvim/plugin-config/copilot.vim
call plug#end()

"""""
"""""
""""" Theme
syntax on
set bg=dark
colorscheme default

" Handy map to chek which highlight group is under the cursor
nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

hi Comment ctermbg=NONE ctermfg=240
hi LineNrAbove ctermbg=NONE ctermfg=244
hi LineNrBelow ctermbg=NONE ctermfg=244
hi SignColumn ctermbg=NONE
hi Visual ctermbg=238
hi Folded ctermbg=233 ctermfg=240

hi CopilotSuggestion ctermbg=NONE ctermfg=64

hi CocMenuSel ctermbg=11 ctermfg=0
hi CocPumSearch ctermbg=NONE ctermfg=11
hi CocWarningHighlight ctermbg=172 ctermfg=white
hi CocErrorHighlight ctermbg=196 ctermfg=white
hi CocErrorSign ctermbg=NONE ctermfg=196
hi CocWarningSign ctermbg=NONE ctermfg=172
hi CocUnusedHighlight ctermbg=NONE ctermfg=196

hi GitGutterAdd ctermfg=82
hi GitGutterChange ctermfg=242
hi GitGutterDelete ctermfg=160

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
nnoremap <Leader>c :Lexplore! %:p:h<CR>

" Space+t open tree at working directory
nnoremap <Leader>x :Lexplore! <CR>

" Space+t open new tab
nnoremap <Leader>t :Texplore <CR>

" Space+t open buffer in new tab
nnoremap <Leader>s :tab split <CR>

" Right arrow = next tab
nnoremap <Right> :tabnext +1<CR>

" Left arrow = prev tab
nnoremap <Left> :tabnext -1<CR>

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

