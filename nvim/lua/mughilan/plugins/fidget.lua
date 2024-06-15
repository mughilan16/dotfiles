return {
  'j-hui/fidget.nvim',
  tag = 'legacy',
  config = function()
    require("fidget").setup {
      text = {
        spinner = "dots",
      },
      align = {
        bottom = true,
      },
      window = {
        relative = "editor",
      },
    }
  end
}
