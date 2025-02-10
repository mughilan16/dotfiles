return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    vim.keymap.set('n', '<leader>fr', builtin.oldfiles, {})
    vim.keymap.set('n', '<leader>fp', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fw', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({search = word})
    end)

    require('telescope').setup {
      defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        -- theme = "dropdown",
        selection_caret = "• ",
        prompt_prefix = "> ",
        layout_strategy = "horizontal",
        layout_config = {
            -- width = { 0.6, max = 60, min = 60 },
            -- height = {0.6, max = 30, min = 30},
            horizontal = {
                prompt_position = "top",
            },
        },
        mappings = {
            i = {
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
            }
        },
      },
      pickers = {
        find_files = {
            sorting_strategy = "ascending"
        },
        git_files = {
            sorting_strategy = "ascending"
        },
        oldfiles = {
            sorting_strategy = "ascending"
        },
        help_tags = {
            sorting_strategy = "ascending"
        },

        grep_string = {
            sorting_strategy = "ascending"
        },
        live_grep = {
            sorting_strategy = "ascending"
        },
        buffers = {
            sorting_strategy = "ascending"
        }
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
      },
  }
  end
}
