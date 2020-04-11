call plug#begin('~/.local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'elmcast/elm-vim'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'neovimhaskell/haskell-vim'
call plug#end()


" --------------------------------

set number
set encoding=utf-8
set termguicolors
set expandtab
set autoindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
syntax on
set linebreak
set showmatch
set showmode
set mouse=a
set mousehide
set history=1000

filetype plugin indent on

" --------------------------------
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ }
" --------------------------------
nnoremap <C-f> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeHighlightCursorline = 1
" ---------------
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

" ----------------------------------
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
" ----------------------------------
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1

nmap <C-t> :TagbarToggle<CR>
