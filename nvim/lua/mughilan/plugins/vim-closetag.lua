return {
  "alvan/vim-closetag",
  lazy = false,
  config = function()
    vim.cmd[[let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx']]
  end,
}
