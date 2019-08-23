call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'pangloss/vim-javascript'
Plug 'flazz/vim-colorschemes'
Plug 'mxw/vim-jsx'
Plug 'neovimhaskell/haskell-vim'
Plug 'parsonsmatt/intero-neovim'
Plug 'leafgarland/typescript-vim'
Plug 'rust-lang/rust.vim'
Plug 'posva/vim-vue'
Plug 'dense-analysis/ale'
Plug 'ap/vim-css-color'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'jiangmiao/auto-pairs'
call plug#end()

set number
syntax on
set smarttab
set smartindent
set linebreak
set nocompatible
filetype off
set showmatch
filetype plugin indent on

set wrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set laststatus=2
set showmode
set showcmd
set encoding=utf-8

set hlsearch
set incsearch
set ignorecase
set smartcase

let mapleader = ' '
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ }

let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <Leader>f :NERDTreeToggle<Enter>
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" set NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1
let NERDTReeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeHighlightCursorline = 1

" haskell
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_ident_where = 6
let g:haskell_ident_before_where = 2
let g:haskell_ident_after_bare_where = 2
let g:haskell_ident_do = 3
let g:haskell_ident_in = 1
let g:haskell_ident_guard = 2
let g:haskell_ident_case_alternative = 1
let g:cabal_ident_section = 2

" Auto reload on save
au BufWritePost *.hs InteroReload

" Lookup the type of expression under the cursor
au FileType haskell nmap <silent> <leader>t <Plug>InteroGenericType
au FileType haskell nmap <silent> <leader>T <Plug>InteroType
" Insert type declaration
au FileType haskell nnoremap <silent> <leader>ni :InteroTypeInsert<CR>
" Show info about expression or type under the cursor
au FileType haskell nnoremap <silent> <leader>i :InteroInfo<CR>

" Open/Close the Intero terminal window
au FileType haskell nnoremap <silent> <leader>nn :InteroOpen<CR>
au FileType haskell nnoremap <silent> <leader>nh :InteroHide<CR>

" Reload the current file into REPL
au FileType haskell nnoremap <silent> <leader>nf :InteroLoadCurrentFile<CR>
" Jump to the definition of an identifier
au FileType haskell nnoremap <silent> <leader>ng :InteroGoToDef<CR>
" Evaluate an expression in REPL
au FileType haskell nnoremap <silent> <leader>ne :InteroEval<CR>

" Start/Stop Intero
au FileType haskell nnoremap <silent> <leader>ns :InteroStart<CR>
au FileType haskell nnoremap <silent> <leader>nk :InteroKill<CR>

" Reboot Intero, for when dependencies are added
au FileType haskell nnoremap <silent> <leader>nr :InteroKill<CR> :InteroOpen<CR>

" Managing targets
" Prompts you to enter targets (no silent)
au FileType haskell nnoremap <leader>nt :InteroSetTargets<CR>
