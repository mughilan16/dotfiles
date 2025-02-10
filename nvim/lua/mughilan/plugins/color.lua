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
            vim.cmd [[colorscheme catppuccin-frappe]]
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
        lazy = true,
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
      highlight ColorColumn guibg=#666

      colorscheme zenburned
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
        lazy = true, -- make sure we load this during startup if it is your main colorscheme
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
    },
    {
        "xiantang/darcula-dark.nvim",
        lazy = true,
        config = function()
            vim.cmd('colorscheme darcula-dark')
            vim.cmd("highlight Normal ctermbg=0 guibg=#242424")
            vim.cmd(' highlight StatusLine guibg=#1a1a1f')
            vim.cmd(' highlight ColumnLine ctermbg=0 guibg=#1a1a1f')
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = true,
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    },
    {
        "briones-gabriel/darcula-solid.nvim",
        requires = "rktjmp/lush.nvim",
        lazy = true,
        config = function()
            vim.cmd('colorscheme darcula-solid')
        end
    },
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require 'nordic'.setup {
                cursorline = {
                    blend = 0.75,
                },
                swap_backgrounds = true,
                reduced_blue = true,
                override = {
                    TelescopePromptNormal = {
                        bg = "#191D24",
                    },
                    TelescopePromptBorder = {
                        bg = "#191D24",
                        fg = "#191D24",
                    },
                    TelescopeResultsBorder = {
                        bg = "#191D24",
                        fg = "#191D24",
                    },
                    TelescopePreviewBorder = {
                        bg = "#191D24",
                        fg = "#191D24",
                    },
                    TelescopePreviewNormal = {
                        bg = "#191D24",
                    },
                    TelescopeResultsNormal = {
                        bg = "#191D24",
                    },
                    TelescopeResultsTitle = {
                        bg = "#191D24",
                        fg = "#191D24",
                    }
                }
            }
            require 'nordic'.load()
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = true,
        priority = 1000,
        opts = {},
        config = function()
            vim.cmd("colorscheme tokyonight")
        end
    },
    {
        'maxmx03/solarized.nvim',
        lazy = true,
        priority = 1000,
        config = function()
            vim.o.background = 'dark' -- or 'light'
            vim.cmd("colorscheme solarized")
        end,
    },
    {
        'crusoexia/vim-monokai',
        lazy = true,
        priority = 1000,
        config = function ()
            vim.o.background = 'dark'
            vim.cmd("colorscheme monokai")
        end
    }
}
