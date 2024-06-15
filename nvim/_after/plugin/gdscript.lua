require'lspconfig'.gdscript.setup{capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())}

vim.cmd[[ 
" to use folding provided by plugin
setlocal foldmethod=expr
setlocal tabstop=4
nnoremap <buffer> <F4> :GodotRunLast<CR>
nnoremap <buffer> <F5> :GodotRun<CR>
nnoremap <buffer> <F6> :GodotRunCurrent<CR>
nnoremap <buffer> <F7> :GodotRunFZF<CR>
" Enable ALE auto completion globally
let g:ale_completion_enabled = 1

" Allow ALE to autoimport completion entries from LSP servers
let g:ale_completion_autoimport = 1

" Register LSP server for Godot:
let g:tagbar_type_gdscript = {
			\'ctagstype' :'gdscript',
			\'kinds':[
			\'v:variables',
			\'f:functions',
			\]
			\}
]]
