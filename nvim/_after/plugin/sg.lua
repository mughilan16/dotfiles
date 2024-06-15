-- Sourcegraph configuration. All keys are optional
require("sg").setup {
  -- Pass your own custom attach function
  --    If you do not pass your own attach function, then the following maps are provide:
  --        - gd -> goto definition
  --        - gr -> goto references
  --        on_attach = your_custom_lsp_attach_function
}

vim.cmd[[" Example mapping for doing searches from within neovim (may change) using telescope.
" (requires telescope.nvim to be installed)
nnoremap <space>ss <cmd>lua require('sg.extensions.telescope').fuzzy_search_results()<CR>
]]
