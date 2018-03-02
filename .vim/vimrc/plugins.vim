"This file includes all the plugins for my VIM
call plug#begin('~/.vim/plugged')

" Just trying out
Plug 'Shougo/vimproc.vim', {'do':'make'}
Plug 'vim-scripts/AutoComplPop'

" Colorschemes for Vim
Plug 'flazz/vim-colorschemes'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Maintains the indentation while pasting lines
Plug 'sickill/vim-pasta'

" Opening a file where you left
Plug 'dietsche/vim-lastplace'

" Automatic closing to tags quotes,brackets, etc
Plug 'Raimondi/delimitMate'

" Search for a word in all files of current directory
Plug 'ggreer/the_silver_searcher'
Plug 'mileszs/ack.vim'

"A Powerful Commenting Tool"
Plug 'scrooloose/nerdcommenter'

" Browse your directory in tree like manner
Plug 'scrooloose/nerdtree', { 'on':'NERDTreeToggle'}

" Browse your undo history in a tree like manner
Plug 'sjl/gundo.vim'

" Make searching through files easier
Plug 'ctrlpvim/ctrlp.vim'

" Syntax checker for c,cpp,python,javascript and many more
Plug 'scrooloose/syntastic'

" Takes care of indentation while moving pieces of code
Plug 'matze/vim-move'

" Make repeated j,k less of a pain... jump faster
Plug 'rhysd/accelerated-jk'

" Code Completion, Snippet plugins for vim
" Plug 'Shougo/neocomplete.vim'
" Plug 'Shougo/neoinclude.vim'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'honza/vim-snippets'

" This is one for a much better start screen
Plug 'mhinz/vim-startify'

" <<<<<<<<<<<<<<<< Haskell >>>>>>>>>>>>>>>>
" Haskell Support in Vim
Plug 'lukerandall/haskellmode-vim', {'for':'haskell'}
Plug 'neovimhaskell/haskell-vim', {'for':'haskell'}

" <<<<<<<<<<<<<<<< Scala >>>>>>>>>>>>>>>>
" Scala Support in Vim
Plug 'derekwyatt/vim-scala', {'for':'scala'}

" <<<<<<<<<<<<<<<< Javascript >>>>>>>>>>>>>>>>
" JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
Plug 'pangloss/vim-javascript', {'for':'javascript'}
" This is the stock Javascript syntax file"
Plug 'jelera/vim-javascript-syntax', {'for':'javascript'}
" Finding Source files for javascript
Plug 'moll/vim-node', {'for':'javascript'}

" <<<<<<<<<<<<<<<< Python >>>>>>>>>>>>>>>>
Plug 'davidhalter/jedi-vim', {'for':'python'}

" <<<<<<<<<<<<<<<< Latex >>>>>>>>>>>>>>>>
" Autocompletions and snippets for tex
Plug 'ymatz/vim-latex-completion', {'for':'tex'}
" When latex is used with vim
Plug 'lervag/vimtex', {'for':'tex'}


" <<<<<<<<<<<<<<<< Markdown >>>>>>>>>>>>>>>>
Plug 'plasticboy/vim-markdown', {'for':'markdown'}
Plug 'JamshedVesuna/vim-markdown-preview', {'for':'markdown'}

" Quickly compile your code
Plug 'xuhdev/SingleCompile'

" Moving around just became a whole lot easier
Plug 'easymotion/vim-easymotion'

" The all powerful tab for doing everything else
Plug 'ervandew/supertab'

" Whitespaces are bad!!
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

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
let g:syntastic_haskell_checkers = ['hlint']
let g:syntastic_python_checkers = ['/etc/python3']
let g:syntastic_python_python_exec = '/etc/python3'


"***************************NerdTree***************************"
augroup MyNerdTree
    autocmd!
    " Open a NERDTree automatically when vim starts up"
    autocmd vimenter * NERDTree

    " Open NERDTree automatically when vim starts up on opening a directory"
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

    " Close vim if the only window left open is a NERDTree"
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
augroup END

"change default arrows"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"***************************Airline***************************"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1


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
  let g:ackprg = 'rg --vimgrep --no-heading'
endif
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" "***************************NeoComplete***************************"
" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
" let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
" " Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
"       \ 'default' : '',
"       \ 'vimshell' : $HOME.'/.vimshell_hist',
"       \ 'scheme' : $HOME.'/.gosh_completions'
"       \ }
"
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"   let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
" inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
"
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType python setlocal omnifunc=jedi#completions
" let g:jedi#completions_enabled = 0
" let g:jedi#auto_vim_configuration = 0
"
" if !exists('g:neocomplete#force_omni_input_patterns')
"   let g:neocomplete#force_omni_input_patterns = {}
" endif
" let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
"
" " Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif
" "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:]*\t]\%(\.\|->\)'
" let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:]"*\t]\%(\.\|->\)\|\h\w*::'
"
" " For perlomni.vim setting.
" " https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"

" "***************************NeoSnippets***************************"
" " Plugin key-mappings.
" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)
" "
" " SuperTab like snippets behavior.
" " imap <expr><TAB>
" " \ pumvisible() ? "\<C-n>" :
" " \ neosnippet#expandable_or_jumpable() ?
" " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" " \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" "
" " " For conceal markers.
" if has('conceal')
"   set conceallevel=2 concealcursor=niv
" endif"
" " Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1
" "
" " Tell Neosnippet about the other snippets
" " Requires honza/vim-snippets
" let g:neosnippet#snippets_directory='~/.vim/plugged/vim-snippets/snippets'


"***************************LastPlace***************************"
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"


"***************************CtrlP***************************"
set grepprg=rg\ --color=always
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


"***************************Haskellmode-vim***************************"
let g:haddock_browser = "/usr/bin/firefox"
let g:haddock_docdir = "/home/arham/.vim/haskell-docs/"
let g:haddock_browser_nosilent = 1
au BufEnter *.hs compiler ghc


"***************************Haskellmode-vim***************************"
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords


"***************************Jedi***************************"
" jedi.preload_module('os', 'sys', 'math', 'whatever_module_you_want')
" Load rope plugin
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 1
let g:jedi#show_call_signatures = "0"
" Jedi too slow --> Rope off
let g:pymode_rope = 0


"***************************SuperTab***************************"
let g:SuperTabDefaultCompletionType = "<c-n>"


"***************************vimtex***************************"
let g:vimtex_enabled = 1
let g:vimtex_compiler_enabled = 1
let g:vimtex_compiler_callback_hooks = []
let g:vimtex_compiler_method = "latexmk"
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'nvim',
    \ 'background' : 1,
    \ 'callback' : 0,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-pdf',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
let g:vimtex_complete_enabled = 1
let g:vimtex_fold_enabled = 0
let g:vimtex_imaps_enabled = 1
let g:vimtex_indent_enabled = 1
let g:vimtex_motion_enabled = 1
let g:vimtex_labels_enabled = 0
let g:tex_flavor = "latex"
let g:tex_fast = "cmMprs"
let g:tex_conceal = ""
let g:tex_comment_nospell = 1

"***************************vim-markdown***************************"
"
"
"***************************vim-markdown-preview***************************"
let vim_markdown_preview_use_xdg_open=1
let vim_markdown_preview_hotkey='<leader>p'
