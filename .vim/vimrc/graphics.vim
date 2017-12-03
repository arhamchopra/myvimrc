"This file contains the graphics settings"

set title  " Set window title automatically
set nocompatible              " be iMproved, required

filetype on                  " required
filetype plugin indent on    " required

" Change the directory of vim to current working directory
autocmd BufEnter * lcd %:p:h

colorscheme jellybeans

set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

syntax on

set tabstop=4
set smarttab
set expandtab
autocmd Filetype make set noexpandtab

set wrap

set laststatus=2
set backspace=indent,eol,start

set shiftwidth=4
set shiftround

set wildmenu

set clipboard=unnamedplus

set nu
set rnu

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
