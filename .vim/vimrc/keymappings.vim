" This file will store all my key Mappings
let mapleader="\<Space>"

" Key Mappings for NerdTree
" Toggle the NERDTree
nnoremap <F2> :NERDTreeToggle<cr>

" Key Mappings for Ack
" Using 'Search' is equivalent to Ack!
cnoreabbrev Search Ack!
"Search for a string in current directory
nnoremap <Leader>f :Ack!<Space>

" Key Mappings Gundo Tree
" Toggle the gundo tree
nnoremap <F6> :GundoToggle<cr>

" Key Mappings for Startify
" Open Startify is a new split
nnoremap <leader><leader>s :vsplit<bar>Startify<cr>

" Key Mappings SingleCompile
nnoremap <F8> :SCCompile<cr><cr>
nnoremap <F9> :SCCompileRun<cr><cr>

" Key Mappings Accelerated_jk
"Map j to move faster with j
nmap j <Plug>(accelerated_jk_gj)
"Map k to move faster with k
nmap k <Plug>(accelerated_jk_gk)

" Key Mappings for Easymotion
nmap <leader>s <Plug>(easymotion-overwin-f)

" Tab Management
" Create a new tab
nnoremap <leader><C-n> :tabe<cr>
"Move to next tab
nnoremap <leader><C-t> :tabnext<cr>
"Move to previous tab
nnoremap <leader><C-T> :tabprev<cr>

" Buffer Management
" Create a new tab
nnoremap <leader>n :enew<cr>
"Move to next tab
nnoremap <leader>l :bnext<cr>
"Move to previous tab
nnoremap <leader>h :bprevious<cr>
" Kill current buffer and move to previous buffer
nnoremap <leader>q :bprevious <bar> bdelete #<cr>
" Show the list of all buffers open
nnoremap <leader>bl :buffers<CR>
" Switch between buffers
nnoremap <leader>bs :buffers<cr>:buffer<Space>

"Easy movement between different splits
nnoremap <Tab> <C-W>W:cd %:p:h<cr>:<cr>

" My Vimrc
"Open vimrc config for editing
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"Source vimrc config
nnoremap <leader>qv :source $MYVIMRC<cr>
"Remove highlighted words after search
nnoremap <leader>ns :nohlsearch<cr>

" 80 Char Limit Line
" Set the 80 Char limit line
nnoremap <leader>c :execute Set80Char()<cr>
"Remove the 80 Char limit line
nnoremap <leader>C :execute UnSet80Char()<cr>

"Autoindenting the whole file
nnoremap <F3> maggvG=`a
"Toggle the display of numbering column
nnoremap <F4> :execute NumberingToggle()<cr>

"A good habit
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>
noremap <left> <nop>

" Exiting insert mode quickly
imap jk <esc>


" " Neocomplete Key Mappings"
" " inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
" " Recommended key-mappings.
" " <cr>: close popup and save indent.
" inoremap <silent> <cr> <C-r>=<SID>my_cr_function()<cr>
" function! s:my_cr_function()
"     return (pumvisible() ? "\<C-y>" : "" ) . "\<cr>"
"     " For no inserting <cr> key.
"     return pumvisible() ? "\<C-y>" : "\<cr>"
" endfunction
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" " Close popup by <Space>.
" " inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
