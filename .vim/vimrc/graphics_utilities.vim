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
