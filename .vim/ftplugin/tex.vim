
" LaTeX (rubber) macro for compiling
nnoremap <leader>m :!rubber --pdf --warn all %<CR>

" View PDF macro; '%:r' is current file's root (base) name.
nnoremap <leader>p :!zathura %:r.pdf &<CR><CR>

setlocal tabstop=2
setlocal shiftwidth=2
