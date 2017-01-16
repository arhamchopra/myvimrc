"This file includes all the plugins for my VIM
call plug#begin('~/.vim/plugged')

" Colorschemes for Vim
Plug 'flazz/vim-colorschemes'

" Relative and Absloute Numbering in Vim
Plug 'myusuf3/numbers.vim'

" Swap file handler
Plug 'autoswap.vim'

" Maintains the indentation while pasting lines
Plug 'sickill/vim-pasta'

" Finding Source files for javascript
Plug 'moll/vim-node'

" Opening a file where you left
Plug 'dietsche/vim-lastplace'

" Automatic closing to tags quotes,brackets, etc
Plug 'Raimondi/delimitMate'

" Search for a word in all files of current directory 
Plug 'ggreer/the_silver_searcher'
Plug 'mileszs/ack.vim'

" Make searching through files easier
Plug 'ctrlpvim/ctrlp.vim'

" Syntax checker for c,cpp,python,javascript and many more
Plug 'scrooloose/syntastic'

" Browse your directory in tree like manner
Plug 'scrooloose/nerdtree'

" Takes care of indentation while moving pieces of code 
Plug 'matze/vim-move'

"A Powerful Commenting Tool"
Plug 'scrooloose/nerdcommenter'

" Code Completion, Snippet plugins for vim
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Visualize your Vim undo tree
Plug 'sjl/gundo.vim'

" This is one for a much better start screen
Plug 'mhinz/vim-startify'

" Scala Support in Vim
Plug 'derekwyatt/vim-scala'

"JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
Plug 'pangloss/vim-javascript'     

"This is the stock Javascript syntax file"
Plug 'jelera/vim-javascript-syntax'

" Quickly compile your code
Plug 'thinca/vim-quickrun'
Plug 'xuhdev/SingleCompile'

" When you need some space for yourself and are to frutrated to go out
Plug 'junegunn/goyo.vim'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

filetype plugin on

"***************************Syntastic***************************"
" Show all warning, and error messages
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:ycm_show_diagnostics_ui = 0
" let g:syntastic_python_checkers = ['/etc/python3']
" let g:syntastic_python_python_exec = '/etc/python3'


"***************************NerdTree***************************"
"open a NERDTree automatically when vim starts up"
autocmd vimenter * NERDTree

" open NERDTree automatically when vim starts up on opening a directory"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"close vim if the only window left open is a NERDTree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"change default arrows"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"***************************NerdCommenter***************************"
" Add spaces after comment delimiters by default"
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments"
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation"
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)"
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting"
let g:NERDTrimTrailingWhitespace = 1


"***************************Ack, SilverSurfer***************************"
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


"***************************NeoComplete***************************"
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0

if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:]*\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:]"*\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"***************************NeoSnippets***************************"
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
"
" SuperTab like snippets behavior.
" imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
" " For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif"
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
"
" Tell Neosnippet about the other snippets
" Requires honza/vim-snippets 
let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'


"***************************LastPlace***************************"
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"


"***************************CtrlP***************************"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux "
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }


"***************************DelimitMate***************************"
let delimitMate_expand_cr = 1


"***************************Gundo***************************"
let g:gundo_prefer_python3 = 1
let g:gundo_width = 35
let g:gundo_preview_height = 20
let g:gundo_right = 1


"***************************Vim-JavaScript***************************"
"Conceal the specified characters"
set conceallevel=1

"Conceal the chars even if cursor is over them"
"set concealcursor=nvic

"Defining the chars"
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_undefined      = "?"
let g:javascript_conceal_NaN            = "∞"
let g:javascript_conceal_prototype      = "P"
let g:javascript_conceal_arrow_function = "⇒"


"***************************GoYo***************************"
let g:goyo_width=150
let g:goyo_height=200
let g:goyo_linenr=90

function! s:goyo_enter()
  set fullscreen 
endfunction


" SingleCompile
nmap <F9> :SCCompile<cr><cr>
nmap <F10> :SCCompileRun<cr><cr>
