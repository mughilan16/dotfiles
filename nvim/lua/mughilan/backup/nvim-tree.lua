return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    vim.keymap.set('n', '<C-n>', ":NvimTreeToggle<CR>", {})
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 35,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })
    vim.cmd [[":NvimTreeOpen<CR>"]]
  end
}
