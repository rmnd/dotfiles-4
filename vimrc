"
" ~/.vimrc
"

"
" GENERAL
"

" Disable vi compatibility
set nocompatible

" Tab width
set tabstop=2

" Tab width when editing
set softtabstop=2

" Tab width when indenting in normal mode
set shiftwidth=2

" Emit spaces instead of tabs
set expandtab

" Automatically indent on newline
set autoindent

" Command history
set history=1000

" Ignore character case when searching
set ignorecase

"
" UI
"

" Show line numbers
set number

" Show cursor position
set ruler

" Show colored column
set colorcolumn=80

" Highlight current line
set cursorline

" Show current command
set showcmd

" Show matching brackets
set showmatch

" Highlight search matches
set hlsearch

" Always show status line
set laststatus=2

"
" COLOR
"

" Enable syntax highlighting
syntax on
set background=dark

colorscheme gruvbox

"
" INPUT
"

" Leader key
let mapleader=' '
nnoremap <space> <nop>

" Escape key replacement in insert mode
inoremap jk <esc>

" Treat overflowing lines as having line breaks
map j gj
map k gk

" Simplify saving files
map <C-s> :w<CR>

" Disable search match highlighting
map <leader>h :nohlsearch<CR>

" Enable full mouse usage
set mouse=a

"
" FILE
"

" Disable swapfiles
set noswapfile

" Enable backup
set backup
set backupdir=~/.vim/backup

" Reload vimrc on file save
autocmd! BufWritePost .vimrc source $MYVIMRC

"
" PLUGIN
"

" Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:syntastic_c_compiler_options='-std=c11 -Wall'
let g:syntastic_cpp_compiler_options='-std=c++11 -Wall'
