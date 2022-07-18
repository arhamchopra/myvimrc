"This file includes all the plugins for my VIM
call plug#begin('~/.vim/plugged')

" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run the install script
"   Both options are optional. You don't have to install fzf in ~/.fzf
"   and you don't have to run the install script if you use fzf only in Vim.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Just trying out
Plug 'Shougo/vimproc.vim', {'do':'make'}
" Plug 'vim-scripts/AutoComplPop'

" Tmux integration of vim
Plug 'christoomey/vim-tmux-navigator'

" Colorschemes for Vim
Plug 'flazz/vim-colorschemes'

" vim-fugitive
" Plug 'tpope/vim-fugitive'

" lightline.vim
Plug 'itchyny/lightline.vim'
" if v:version > 800
"     Plug 'maximbaz/lightline-ale'
" endif

" vim-buftabline
Plug 'ap/vim-buftabline'

" vim edit history based buffer movement
Plug 'ton/vim-bufsurf'

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

" Browse your undo history in a tree like manner
Plug 'sjl/gundo.vim', { 'on':'GundoToggle'}

" Make searching through files easier
" Plug 'ctrlpvim/ctrlp.vim'
" Use Fzf instead

" Syntax checker for c,cpp,python,javascript and many more
" if v:version < 800
"     Plug 'scrooloose/syntastic'
" else
"     Plug 'w0rp/ale'
" endif

" Takes care of indentation while moving pieces of code
" Plug 'matze/vim-move'

" Make repeated j,k less of a pain... jump faster
Plug 'rhysd/accelerated-jk'

" This is one for a much better start screen
Plug 'mhinz/vim-startify'

" All powerful autocompleter
" Plug 'Valloric/YouCompleteMe'

" <<<<<<<<<<<<<<<< C,C++ >>>>>>>>>>>>>>>>
" Easy management of tags in vim
Plug 'vim-scripts/OmniCppComplete', {'for':['cpp', 'c']}
Plug 'prabirshrestha/vim-lsp', {'for':['cpp', 'c']}
Plug 'prabirshrestha/asyncomplete.vim', {'for':['cpp', 'c']}
Plug 'prabirshrestha/asyncomplete-lsp.vim', {'for':['cpp', 'c']}

" <<<<<<<<<<<<<<<< Haskell >>>>>>>>>>>>>>>>
" Haskell Support in Vim
" Plug 'lukerandall/haskellmode-vim', {'for':'haskell'}
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
" This needs rope to be installed beforehand
" Plug 'python-rope/ropevim', {'for':'python'}
Plug 'nvie/vim-flake8', {'for':'python'}

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
" Plug 'ervandew/supertab'

" Whitespaces are bad!!
Plug 'ntpeters/vim-better-whitespace'

" Code Completion, Snippet plugins for vim
" Plug 'Shougo/neocomplete.vim'
" Plug 'Shougo/neoinclude.vim'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'honza/vim-snippets'
Plug 'ajh17/VimCompletesMe'

Plug 'airblade/vim-rooter'
call plug#end()

" if v:version < 800
" ***************************Syntastic***************************"
"     Show all warning, and error messages
"     set statusline+=%#warningmsg#
"     set statusline+=%{SyntasticStatuslineFlag()}
"     set statusline+=%*
"     let g:syntastic_always_populate_loc_list = 1
"     let g:syntastic_auto_loc_list = 1
"     let g:syntastic_check_on_open = 1
"     let g:syntastic_check_on_wq = 1
"     let g:ycm_show_diagnostics_ui = 0
"     let g:syntastic_haskell_checkers = ['hlint']
"     let g:syntastic_cpp_compiler_options = "-std=c++11"
"     let g:syntastic_python_checkers = ['pyflakes']
" else
" ***************************Ale*********************************"
"     let g:ale_completion_enabled = 1
"     let g:ale_linters = {
"     \   'haskell': ['hlint'],
"     \}
"     let g:ale_echo_msg_error_str = 'E'
"     let g:ale_echo_msg_warning_str = 'W'
"     let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"     let g:ale_lint_on_text_changed = 'never'
"     let g:ale_open_list = 1
"     let g:ale_lint_on_enter = 1
"     let g:ale_set_balloons = 1
"
"     let g:ale_cpp_gcc_options = "-std=c++17 -I/home/beta/Work/base/flash/external/include"
"     let g:ale_cpp_gcc_executable = "g++"
" endif

"***************************Vim Flake8***************************"
"disable McCabe complexity warnings
let g:flake8_complexity_marker=''

"***************************NerdTree***************************"
" augroup MyNerdTree
"     autocmd!
"     Change directory the one for the currently opened file
"     autocmd BufEnter * silent! if bufname('%') !~# "NERD_tree_" | cd %:p:h | NERDTreeCWD | wincmd p | endif
"     autocmd BufEnter * call SyncTreeIf()
"
"     Open a NERDTree automatically when vim starts up"
"     autocmd vimenter * NERDTree | wincmd p
"
"     Open NERDTree automatically when vim starts up on opening a directory"
"     autocmd StdinReadPre * let s:std_in=1
"     autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"
"     Close vim if the only window left open is a NERDTree"
"     autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" augroup END
"
" change default arrows"
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'

"***************************lightline.vim***************************"
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

"***************************lightline-ale***************************"
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }


"***************************vim-bufsurf***************************"
"No configuration to change as of now :)


"***************************vim-buftabline***************************"
let g:buftabline_numbers = 1
let g:buftabline_indicators = 1
let g:buftabline_separators = 1

"***************************NerdCommenter***************************"
" Add spaces after comment delimiters by default"
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments"
let g:NERDCompactSexyComs = 0
" Align line-wise comment delimiters flush left instead of following code indentation"
let g:NERDDefaultAlign = 'left'
" Commenting an already nested line
let g:NERDDefaultNesting = 0
" Allow commenting and inverting empty lines (useful when commenting a region)"
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting"
let g:NERDTrimTrailingWhitespace = 1


"***************************Ack, SilverSurfer***************************"
if executable('rg')
  let g:ackprg = 'rg --vimgrep --no-heading'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


"***************************SingleCompile***************************"
let b:cppflags = '-std=c++14'
call SingleCompile#SetCompilerTemplate('cpp', 'g++', 'GNU C++ Compiler', 'g++', b:cppflags.' -o $(FILE_TITLE)$', './$(FILE_TITLE)$')
call SingleCompile#SetCompilerTemplate('cpp', 'make', 'Run make and ./main', 'make', 'makefile', './main')
call SingleCompile#SetCompilerTemplate('python', 'python', 'Run python3', 'python3', '', '')


"***************************LastPlace***************************"
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"

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
" let g:haddock_browser = "/usr/bin/firefox"
" let g:haddock_docdir = "/home/arham/.vim/haskell-docs/"
" let g:haddock_browser_nosilent = 1
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
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = 1
let g:jedi#force_py_version = 'auto'
set omnifunc=jedi#completions
" Jedi too slow --> Rope off
let g:pymode_rope = 0


"***************************Rope***************************"
" let ropevim_vim_completion = 1
" let ropevim_extended_complete = 1
" let ropevim_enable_autoimport = 1
" let g:ropevim_autoimport_modules = ["os.*","traceback","django.*"]
" imap <s-space> <C-R>=RopeCodeAssistInsertMode()<CR>

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


"***************************vim-move***************************"
" Specify the key to use with h,j,k,l to move the complete text along with
" proper indentation. Set CTRL as the key for this.
let g:move_key_modifier = 'M'


"***************************vim-markdown***************************"

"***************************vim-markdown-preview***************************"
let vim_markdown_preview_use_xdg_open=1
let vim_markdown_preview_hotkey='<leader>p'

" ***************************NeoComplete***************************"
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


"***************************Vim-Tmux-Navigator***************************"
" Disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_disable_when_zoomed = 1


"***************************GutenTags***************************"
" let g:gutentags_trace = 0
" let g:gutentags_add_default_project_roots = 0
" let g:gutentags_project_root = ['.gitmodules']
"
" let g:gutentags_generate_on_new = 1
" let g:gutentags_generate_on_missing = 1
" let g:gutentags_generate_on_write = 1
" let g:gutentags_generate_on_empty_buffer = 0
"
" let g:gutentags_ctags_extra_args = ['-R', '--sort=yes', '--fields=+imaSft', '--extras=+q', '--c++-kinds=+pf', '--c-kinds=+pf']

"*************************** FZF ***************************"
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" This is the default option:
"   - Preview window on the right with 50% width
"   - CTRL-/ will toggle preview window.
let g:fzf_preview_window = ['right:50%', 'ctrl-/']


"*************************** Tagbar ***************************"
" let g:tagbar_use_cache = 0


"*************************** OmniCppComplete ***************************"
let OmniCpp_NamespaceSearch = 2
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
set completeopt=menuone,menu,longest,preview


"*************************** vim-lsp ***************************"
" Register ccls C++ lanuage server.
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': {'cache': {'directory': expand('~/.cache/ccls') }},
      \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp', 'cc', 'tpp', 't'],
      \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END


"*************************** vim-rooter ***************************"
let g:rooter_patterns = ['.gitmodules','.vim']
