let g:UltiSnipsExpandTrigger = "<nop>"
" let g:UltiSnipsExpandTrigger="<c-enter>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
inoremap <c-x><c-k> <c-x><c-k>
inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"
