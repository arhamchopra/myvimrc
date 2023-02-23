"This file contains the graphics settings"
set encoding=utf-8

filetype plugin indent on    " required

" ####### Section: Graphics #######
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

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smarttab
set expandtab

set foldmethod=syntax

set undofile
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

set wildmenu
set wrap
set scrolloff=3
set mouse=""
set clipboard+=unnamedplus
" set clipboard=exclude:.*

" Netrw Setup
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

set matchpairs+=<:>

" Colors
colorscheme jelleybeans

" ####### Section: Augroups ####### "
augroup AutoUpdateFiles
    autocmd!
    set autoread
    " autocmd FocusGained,BufEnter * :silent! !
    autocmd FocusLost,WinLeave * :silent! w
augroup END

augroup FiletypeSettings
    autocmd BufEnter *.hs compiler ghc
augroup END

" Change the directory of vim to current working directory
augroup General
    autocmd BufEnter * if &modifiable | lcd %:p:h | endif
augroup END

" Tab colorings for buftabline in vim
augroup TabColorings
    highlight BufTabLineCurrent ctermfg=black ctermbg=lightyellow
    highlight BufTabLineActive ctermfg=black ctermbg=grey
    highlight BufTabLineHidden ctermfg=black ctermbg=darkgreen
    highlight BufTabLineFill cterm=none ctermfg=blue ctermbg=grey
augroup END

augroup TerminalSettings
    autocmd!
    set wrap
augroup END

augroup remember_folds
  autocmd!
  autocmd BufWritePre * mkview
  autocmd BufRead * silent! loadview
augroup END

augroup Python
    autocmd!
    " autocmd BufEnter *.py call Set80Char()
    autocmd BufEnter *.py set foldmethod=indent
    autocmd BufEnter *.py set tabstop=2
    autocmd BufEnter *.py set shiftwidth=2
    autocmd BufEnter *.py set shiftround
augroup END

augroup Cpp
    autocmd!
    " autocmd BufEnter *.py call Set80Char()
    autocmd BufEnter *.cpp,*.cc,*.h,*.hpp,*.c set tabstop=2
    autocmd BufEnter *.cpp,*.cc,*.h,*.hpp,*.c set shiftwidth=2
    autocmd BufEnter *.cpp,*.cc,*.h,*.hpp,*.c set shiftround
    autocmd BufEnter *.cpp,*.cc,*.h,*.hpp,*.c set complete-=i
    " autocmd BufWritePre *.cpp,*.cc,*.h,*.hpp,*.c silent! call ClangFormat()
augroup END

augroup General
    autocmd!
    autocmd BufWritePre * silent! StripWhitespace
    autocmd CompleteDone * pclose
augroup END

augroup Rust
    autocmd!
    " autocmd BufEnter *.py call Set80Char()
    autocmd BufEnter *.rs set foldmethod=indent
    autocmd BufEnter *.rs set tabstop=2
    autocmd BufEnter *.rs set shiftwidth=2
    autocmd BufEnter *.rs set shiftround
augroup END

" set tags+=/home/beta/Work/base/flash/tags
