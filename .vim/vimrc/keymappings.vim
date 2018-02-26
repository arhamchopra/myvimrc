" This file will store all my key Mappings
let mapleader="\<Space>"

" My Vimrc Config
nnoremap <leader>ev : split $MYVIMRC<cr>
nnoremap <leader>qv : source $MYVIMRC<cr>

" Some Shotcuts for tab management
nnoremap <leader>n :tabe<cr>
nnoremap <leader>t :tabnext<cr>
nnoremap <leader><S-t> :tabprev<CR>

" NerdTree
nnoremap <F2> :NERDTreeToggle<cr>

" " Neocomplete Key Mappings"
" " inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function()
"     return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"     " For no inserting <CR> key.
"     return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" " Close popup by <Space>.
" " inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" Key Mappings for Ack
cnoreabbrev Ack Ack!
nnoremap <Leader>f :Ack!<Space>

" Key Mappings for move
" let g:move_map_keys = 0
let g:move_key_modifier = 'C'

" Movements
map <Tab> <C-W>W:cd %:p:h<CR>:<CR>

" Remove selected part from search
nnoremap <leader>s :nohlsearch<cr>

" Startify
 nnoremap <leader>s : vsplit <bar> Startify<CR>

" move out of insert mode
inoremap jk <esc>
" Some Utiliy for copy and paste
vnoremap <C-c> "+y

" AutoIndent
nnoremap <F3> maggvG=`a

" Spell Check
nnoremap <F5> gg=G

" numbers
nnoremap <F4> :NumbersToggle<CR>

nnoremap <F6> :GundoToggle<CR>

" SingleCompile
nmap <F9> :SCCompileRun<cr><cr>

" A good habit
map <up> <nop>
map <down> <nop>
map <right> <nop>
map <left> <nop>

imap <up> <nop>
imap <down> <nop>
imap <right> <nop>
imap <left> <nop>

nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
