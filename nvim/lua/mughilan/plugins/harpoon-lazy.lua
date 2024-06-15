return {
 "ThePrimeagen/harpoon",
 branch = "harpoon2",
 config = function() 
  local keymap = vim.keymap
  local harpoon = require("harpoon")

  -- REQUIRED
  harpoon:setup({
    settings = {
      save_on_toggle = true,
      sync_on_ui_close = true,
    },
  })
  -- REQUIRED

  keymap.set("n", "<C-m>", function() harpoon:list():append() end)
  keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

  keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
  keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
  keymap.set("n", "<C-b>", function() harpoon:list():select(3) end)
  keymap.set("n", "<C-a>", function() harpoon:list():select(4) end)
  end
}
