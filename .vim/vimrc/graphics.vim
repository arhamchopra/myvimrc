"This file contains the graphics settings"
set encoding=utf-8

set title  " Set window title automatically
set nocompatible              " be iMproved, required

filetype on                  " required
filetype plugin indent on    " required

" Change the directory of vim to current working directory
autocmd BufEnter * lcd %:p:h

colorscheme jellybeans

" set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
let g:airline_theme='wombat'

syntax on


set laststatus=2
set backspace=indent,eol,start

set wildmenu

set clipboard=unnamedplus

set nu
set rnu

set autoread autowrite autowriteall
set so=7

set mouse=a
set autochdir

set incsearch " do incremental search
set hlsearch " highlight search results
set ignorecase " do case insensitive search...
set smartcase " ...unless capital letters are used
set showcmd
set cursorline


set autoindent
set copyindent
set smartindent
set cindent

function Set80Char()
    " Set a marker at the 80 char
    highlight ColorColumn ctermbg=brown
    if exists('+colorcolumn')
    set colorcolumn=80
    endif
endfunction

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smarttab
set expandtab
autocmd Filetype make set noexpandtab
set wrap

set undofile
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" set termguicolors

