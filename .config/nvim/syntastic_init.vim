let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = ''
let g:syntastic_warning_symbol = ''

" Open synsastic erros without listchars messing up the highlight
nmap <leader>e :Errors<Enter>:lopen<Enter>:setlocal listchars=<Enter>:setlocal wrap<Enter>
