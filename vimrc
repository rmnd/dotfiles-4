"" General

" Disable vi compatibility.
set nocompatible

" Tab width.
set tabstop=2

" Tab width when editing.
set softtabstop=2

" Tab width when indenting in normal mode.
set shiftwidth=2

" Emit spaces instead of tabs.
set expandtab

" Automatically indent on newline.
set autoindent

" Command history.
set history=1000

"" UI

" Show line numbers.
set number

" Show cursor position.
set ruler

" Show current command.
set showcmd

" Show colored column.
set colorcolumn=80

" Highlight current line.
set cursorline

" Highlight matching brackets.
set showmatch

" Highlight search matches.
set hlsearch

" Disable fill characters.
set fillchars=

" Always show status line.
set laststatus=2

" Enable syntax highlighting.
syntax on

" Set colorscheme.
set background=dark
colorscheme gruvbox

"" Input

" Set leader key.
let mapleader=' '
nnoremap <space> <nop>

" Escape key replacement in insert mode.
inoremap jk <esc>

" Treat overflowing lines as having line breaks.
map j gj
map k gk

" Simplify saving files.
map <C-s> :w<CR>

" Disable search match highlighting.
map <leader>h :nohlsearch<CR>

" Time waited for a mapped key sequence to complete.
set timeoutlen=120

" Enable mouse usage.
set mouse=a

"" File

" Disable swapfiles.
set noswapfile

" Enable backup.
set backup
set backupdir=~/.vim/backup
