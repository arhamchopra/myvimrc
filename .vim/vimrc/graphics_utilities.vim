"This file contains the utilities for graphics settings"

function! Set80Char() abort
    " Set a marker at the 80 char
    highlight ColorColumn ctermbg=red
    if exists('+colorcolumn')
        set colorcolumn=80
    endif
endfunction

function! UnSet80Char() abort
    " Remove the marker at the 80 char if set
    highlight ColorColumn ctermbg=black
    if exists('+colorcolumn')
        set colorcolumn=80
    endif
endfunction

function! NumberingToggle() abort
    let save_cursor = getcurpos()
    set invnumber
    set invrelativenumber
    call setpos('.', save_cursor)
endfunction

" calls NERDTreeFind iff NERDTree is active, current window contains a modifiable file, and we're not in vimdiff
function! SyncTree()
    let s:curwnum = winnr()
    NERDTreeFind
    exec s:curwnum . "wincmd w"
endfunction

function! SyncTreeIf()
    if (winnr("$") > 1)
        call SyncTree()
    endif
endfunction

function! ClangFormat() abort
    let save_cursor = getcurpos()
    silent !clang-format -style=file -i %
    " Redraw the buffer
    redraw!
    " Reload file if it is written to buffer
    edit
    echo "Running clang-format on" expand('%')
    call setpos('.', save_cursor)
endfunction

function! SwitchCppHeaderSourceFile() abort
    let cur_file = expand('%:e')
    if cur_file =~ "\.cpp"
        let new_file = expand('%:p:r') . ".h"
        echo new_file
        e new_file
    endif
endfunction

function! SearchCurrentWork() abort
    let cword = expand("<cWORD>")
    execute :Tags cword<CR>
endfunction
