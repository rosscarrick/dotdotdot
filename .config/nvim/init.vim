let mapleader = " "

set nocompatible
set noerrorbells
set showmatch

" Cursor
set guicursor=n:block-blinkon1,i-ci-ve:ver25-blinkon1 " blinking cursor with block for normal mode and vertical bar for insert mode

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

" Spelling
set spell
set spelllang=en_gb

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
" Handy map to check which highlight group is under the cursor
nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

syntax on
set bg=dark
colorscheme default

" black=233
" white=15
" subtle=245
" subtler=242
" subtlest=238
" purple=183
" green=79
" red=161
" orange=172

" Modes
hi Normal ctermbg=233 ctermfg=15
hi Visual ctermbg=15 ctermfg=0

" Black - 233
hi TabLineFill ctermbg=NONE ctermfg=233
hi EndOfBuffer ctermfg=233

" White - 15
hi LineNr ctermfg=15
hi Type ctermfg=15
hi Constant ctermfg=15
hi Title ctermfg=15
hi Keyword ctermfg=15

hi vimFgBgAttrib ctermfg=15
hi vimVar ctermfg=15
hi vimOption ctermfg=15
hi vimMapModKey ctermfg=15
hi vimNotation ctermfg=15
hi vimFuncName ctermfg=15

hi netrwPlain ctermfg=15

hi bashStatement ctermfg=15

hi shVariable ctermfg=15
hi shDerefSimple ctermfg=15

hi jsModuleKeyword ctermfg=15
hi jsObjectKey ctermfg=15
hi jsFuncCall ctermfg=15
hi jsFuncName ctermfg=15
hi jsObjectFuncName ctermfg=15
hi jsDestructuringBlock ctermfg=15
hi jsTemplateExpression ctermfg=15

hi typescriptIdentifierName ctermfg=15
hi typescriptCall ctermfg=15
hi typescriptMember ctermfg=15
hi typescriptDestructureVariable ctermfg=15
hi typescriptDOMDocProp ctermfg=15
hi typescriptURLUtilsProp ctermfg=15
hi typescriptArrayMethod ctermfg=15
hi typescriptDOMDocMethod ctermfg=15
hi typescriptInterfaceName ctermfg=15
hi typescriptTestGlobal ctermfg=15
hi typescriptAliasDeclaration ctermfg=15
hi typescriptFuncName ctermfg=15
hi typescriptTypeParameter ctermfg=15
hi tsxTagName ctermfg=15

hi cssIdentifier ctermfg=15
hi cssClassName ctermfg=15
hi cssTagName ctermfg=15
hi cssAttributeSelector ctermfg=15
hi cssClassNameDot ctermfg=15
hi cssFunctionName ctermfg=15

hi sassVariable ctermfg=15
hi sassId ctermfg=15
hi sassIdChar ctermfg=15

hi htmlTagName ctermfg=15
hi htmlTitle ctermfg=15
hi htmlSpecialTagName ctermfg=15

hi fugitiveSymbolicRef ctermfg=15
hi gitcommitSummary ctermfg=15

hi jsonKeyword ctermfg=15

" Subtle - 245
hi LineNrAbove ctermfg=245
hi LineNrBelow ctermfg=245
hi PreProc ctermfg=245
hi Statement ctermfg=245
hi Noise ctermfg=245
hi DiagnosticInfo ctermfg=245

hi vimBracket ctermfg=245
hi vimHiKeyList ctermfg=245
hi vimHiCtermFgBg ctermfg=245
hi vimSetEqual ctermfg=245
hi vimParenSep ctermfg=245
hi vimContinue ctermfg=245

hi jsExport ctermfg=245
hi jsImport ctermfg=245
hi jsFrom ctermfg=245
hi jsModuleBraces ctermfg=245
hi jsStorageClass ctermfg=245
hi jsDestructuringBraces ctermfg=245
hi jsOperator ctermfg=245
hi jsBrackets ctermfg=245
hi jsParens ctermfg=245
hi jsObjectBraces ctermfg=245
hi jsObjectKey ctermfg=245
hi jsObjectColon ctermfg=245
hi jsArrowFunction ctermfg=245
hi jsThis ctermfg=245
hi jsFunction ctermfg=245
hi jsForAwait ctermfg=245

hi typescriptImport ctermfg=245
hi typescriptExport ctermfg=245
hi typescriptBraces ctermfg=245
hi typescriptVariable ctermfg=245
hi typescriptAssignment ctermfg=245
hi typescriptParens ctermfg=245
hi typescriptTypeAnnotation ctermfg=245
hi typescriptUnion ctermfg=245
hi typescriptArrowFunc ctermfg=245
hi typescriptAssign ctermfg=245
hi typescriptDotNotation ctermfg=245
hi typescriptObjectColon ctermfg=245
hi typescriptObjectLabel ctermfg=245
hi typescriptPredefinedType ctermfg=245
hi typescriptAmbientDeclaration ctermfg=245
hi typescriptTypeReference ctermfg=245
hi typescriptOperator ctermfg=245
hi typescriptAsyncFuncKeyword ctermfg=245
hi typescriptFuncTypeArrow ctermfg=245
hi typescriptKeywordOp ctermfg=245
hi typescriptFuncKeyword ctermfg=245
hi typescriptDestructureLabel ctermfg=245

hi tsxCloseString ctermfg=245
hi tsxAttrib ctermfg=245
hi tsxEqual ctermfg=245

hi htmlTag ctermfg=245
hi htmlArg ctermfg=245
hi htmlEndTag ctermfg=245

hi cssBraces ctermfg=245
hi cssBoxProp ctermfg=245
hi cssBackgroundProp ctermfg=245
hi cssPositioningProp ctermfg=245
hi cssMediaProp ctermfg=245
hi cssTextProp ctermfg=245
hi cssSelectorOp ctermfg=245
hi cssSelectorOp2 ctermfg=245
hi cssFlexibleBoxProp ctermfg=245
hi cssIEUIProp ctermfg=245

hi sassProperty ctermfg=245

hi CocMenuSel ctermbg=245 ctermfg=15

hi fugitiveUnstagedModifier ctermfg=245
hi fugitiveUnstagedSection ctermfg=245

hi jsonBraces ctermfg=245

hi yamlBlockMappingKey ctermfg=245

" Subtler - 242
hi cssUnitDecorators ctermfg=242
hi cssClassNameDot ctermfg=242

hi netrwTreeBar ctermfg=242
hi netrwClassify ctermfg=242

hi fugitiveHash ctermfg=242

hi jsonQuote ctermfg=242

hi shVarAssign ctermfg=242

" Subtlest - 238
hi Comment ctermfg=238
hi LineNrAbove ctermfg=238
hi LineNrBelow ctermfg=238
hi Folded ctermfg=238 ctermbg=NONE
hi TabLine ctermbg=NONE ctermfg=238
hi Pmenu ctermbg=238 ctermfg=15

hi GitGutterChange ctermfg=238

" Purple - 183
hi Number ctermfg=183
hi MatchParen ctermfg=183 ctermbg=NONE
hi Special ctermfg=183

hi jsSpecial ctermfg=183

hi cssPseudoClassId ctermfg=183

hi jsonBoolean ctermfg=183

" Green - 79
hi String ctermfg=79
hi StatusLine ctermbg=79 ctermfg=233
hi TabLineSel ctermbg=79 ctermfg=22
hi Directory ctermfg=79
hi PmenuSel ctermbg=79 ctermfg=22

hi shCommandSub ctermfg=79

hi GitGutterAdd ctermfg=79

hi fugitiveStagedModifier ctermfg=79
hi fugitiveStagedHeading ctermfg=79

hi CocPumSearch ctermbg=NONE ctermfg=79

" Red - 161
hi CocErrorSign ctermbg=NONE ctermfg=161

hi jsRegexpCharClass ctermfg=161
hi jsRegexpQuantifier ctermfg=161

hi cssImportant ctermfg=161

hi GitGutterDelete ctermfg=161
hi fugitiveHeading ctermfg=161

hi CocErrorHighlight ctermbg=NONE ctermfg=161

" Orange - 172
hi CocWarningSign ctermbg=NONE ctermfg=172
hi CocWarningHighlight ctermbg=NONE ctermfg=172
hi CocUnusedHighlight ctermbg=NONE ctermfg=172

hi Todo ctermbg=NONE ctermfg=172

" Misc
hi StatusLineNC ctermbg=NONE ctermfg=15
hi SpellBad ctermbg=NONE cterm=underline
hi SpellCap ctermbg=NONE 
hi SpellRare ctermbg=NONE
hi SpellLocal ctermbg=NONE
hi SignColumn ctermbg=NONE

hi CopilotSuggestion ctermbg=234 ctermfg=238

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

" Space+P to FZF folder and open in new TMUX session
nnoremap <Leader>P :!tmux neww ~/scripts/tmux-nav.sh<CR>

"
" Snippets

" turn word under cursor into html tag
inoremap <C-s>e <esc>ciw<<C-o>p></<C-o>p><esc>F<i

" console.log()
inoremap <C-s>l console.log()<left>

