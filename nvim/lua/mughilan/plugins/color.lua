return {
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = true,
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme nightfly]]
      vim.cmd [[
    set fillchars=vert:┃ " for vsplits
    set fillchars+=fold:· " for folds
    hi VertSplit guifg=#1d3b53 guibg=#011627
    ]]
    end
  }, {
  "sainnhe/gruvbox-material",
  lazy = true,
  config = function()
    vim.cmd [[let g:gruvbox_material_background = 'medium']]
    vim.cmd [[colorscheme gruvbox-material]]
    vim.cmd [[
    set fillchars=vert:┃ " for vsplits
    set fillchars+=fold:· " for folds
    ]]
  end
},
  {
    "catppuccin/nvim",
    lazy = true,
    config = function()
      vim.cmd [[colorscheme catppuccin-mocha]]
      --vim.cmd [[
      --set fillchars=vert:┃ " for vsplits
      --set fillchars+=fold:· " for folds
      --]]
      vim.cmd [[
    set fillchars=vert:┆ " for vsplits
    set fillchars+=fold:· " for folds
    highlight WinSeparator guifg=#313244
    highlight TelescopeBorder guifg=#45475a
    highlight TreesitterContext guibg=#313244
    ]]
    end
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    config = function()
      vim.cmd [[colorscheme kanagawa-dragon]]
      --vim.cmd [[
      --set fillchars=vert:┃ " for vsplits
      --set fillchars+=fold:· " for folds
      --]]
      vim.cmd [[
      highlight WinSeparator guifg=#313244
      highlight TelescopeBorder guifg=#45475a guibg=none
      highlight TreesitterContext guibg=#313244
    ]]
    end
  },
  {
    "mcchrish/zenbones.nvim",
    lazy = true,
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = {
      "rktjmp/lush.nvim",
    },
    config = function()
      vim.cmd [[
      set termguicolors
      set background=dark

      colorscheme zenbones
      ]]
    end
  },
  {
    "kvrohit/rasmus.nvim",
    lazy = true,
    config = function()
      vim.cmd [[
      set termguicolors
      set background=dark

      colorscheme rasmus
      ]]
    end
  },
  {
    "ntk148v/komau.vim",
    lazy = true,
    config = function()
      vim.cmd [[
      set termguicolors
      set background=dark
      colorscheme komau
      ]]
    end
  },
  {
    'shaunsingh/nord.nvim',
    lazy = true,
    config = function()
      vim.cmd [[
      set termguicolors
      set background=dark
      colorscheme nord
      ]]
    end
  },
  {
    'projekt0n/github-nvim-theme',
    lazy = true,     -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup({
        -- ...
      })
      vim.cmd('colorscheme github_dark_tritanopia')
      vim.cmd(' highlight TelescopeBorder guifg=#45475a ')
    end,
  },
  {
    'joshdick/onedark.vim',
    lazy = true,
    config = function()
      vim.cmd('colorscheme onedark')
    end
  }
}
