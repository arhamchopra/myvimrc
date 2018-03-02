"This file contains the graphics settings"
set encoding=utf-8

filetype plugin indent on    " required

" ####### Section: Graphics #######
colorscheme jellybeans
let g:airline_theme='wombat'
syntax on

set title

set laststatus=2
set backspace=indent,eol,start

set number
set relativenumber

set autochdir

set incsearch
set hlsearch
set ignorecase
set smartcase

set showcmd
set cursorline

set autoindent
set copyindent
set cindent

set tabstop=8
set softtabstop=4
set shiftwidth=4
set shiftround
set smarttab
set expandtab

set undofile
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

set wildmenu
set wrap
set scrolloff=7
set mouse=a
set clipboard+=unnamedplus

" ####### Section: Augroups ####### "
augroup AutoUpdateFiles
    autocmd!
    set autoread autowrite autowriteall
    autocmd FocusGained,BufEnter * :silent! !
    autocmd FocusLost,WinLeave * :silent! w
augroup END

" Change the directory of vim to current working directory
augroup General
    autocmd BufEnter * lcd %:p:h
augroup END
