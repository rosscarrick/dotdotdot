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
" Handy map to chek which highlight group is under the cursor
nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

syntax on
set bg=dark
colorscheme default

hi Comment ctermfg=240
hi Folded ctermfg=241 ctermbg=NONE
hi Type ctermfg=15
hi vimGroup ctermfg=251
hi PreProc ctermfg=251
hi Number ctermfg=153
hi String ctermfg=79
hi Statement ctermfg=183
hi LineNr ctermfg=15
hi LineNrAbove ctermfg=240
hi LineNrBelow ctermfg=240
hi Special ctermfg=146
hi Identifier ctermfg=15
hi MatchParen ctermfg=171 ctermbg=NONE
hi SignColumn ctermbg=NONE
hi Constant ctermfg=183
hi Visual ctermbg=15 ctermfg=0
hi TabLineSel ctermbg=79 ctermfg=22
hi TabLine ctermbg=NONE ctermfg=241
hi TabLineFill ctermbg=NONE ctermfg=0
hi StatusLine ctermbg=79 ctermfg=0
hi StatusLineNC ctermbg=NONE ctermfg=15

hi jsStorageClass ctermfg=250
hi jsFunction ctermfg=181
hi jsArrowFunction ctermfg=250
hi jsFuncBraces ctermfg=250
hi jsFuncParens ctermfg=250
hi jsFuncBlock ctermfg=250
hi jsObjectKey ctermfg=250
hi jsObjectBraces ctermfg=146
hi jsDot ctermfg=250
hi jsObjectColon ctermfg=250
hi typescriptBlock ctermfg=181
hi typescriptBraces ctermfg=146
hi typescriptParens ctermfg=250
hi typescriptArrowFunc ctermfg=250
hi typescriptVariable ctermfg=251
hi typescriptVariableDeclaration ctermfg=15
hi typescriptDestructureVariable ctermfg=15
hi typescriptCall ctermfg=15
hi typescriptAsyncFuncKeyword ctermfg=146
hi tsxAttrib ctermfg=250
hi typescriptBinaryOp ctermfg=250
hi cssBraces ctermfg=250
hi vimHiKeyList ctermfg=250
hi htmlTagName ctermfg=110

hi CopilotSuggestion ctermbg=NONE ctermfg=118

hi CocMenuSel ctermbg=153 ctermfg=0
hi CocPumSearch ctermbg=NONE ctermfg=153

hi CocWarningHighlight ctermbg=172 ctermfg=15
hi CocErrorHighlight ctermbg=167 ctermfg=15
hi CocErrorSign ctermbg=NONE ctermfg=161
hi CocWarningSign ctermbg=NONE ctermfg=172
hi CocUnusedHighlight ctermbg=NONE ctermfg=167

hi GitGutterAdd ctermfg=79
hi GitGutterChange ctermfg=75
hi GitGutterDelete ctermfg=161

hi fugitiveUnstagedHeading ctermfg=75
hi fugitiveUnstagedModifier ctermfg=75
hi fugitiveUntrackedHeading ctermfg=181
hi fugitiveUntrackedModifier ctermfg=181
hi fugitiveStagedHeading ctermfg=79
hi fugitiveStagedModifier ctermfg=79
hi fugitiveHunk ctermfg=240
hi diffLine ctermfg=75
hi fugitiveHeading ctermfg=161
hi fugitiveHeader ctermfg=181
hi fugitiveHash ctermfg=161

" NetRW
hi Directory ctermfg=79
hi netrwPlain ctermfg=15
hi netrwTreeBar ctermfg=240
hi netrwClassify ctermfg=240

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

"
" Snippets

" turn word under cursor into html tag
inoremap <C-s>e <esc>ciw<<C-o>p></<C-o>p><esc>F<i

" console.log()
inoremap <C-s>l console.log()<left>

