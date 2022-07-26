vim.opt.termguicolors = true
require('bufferline').setup {
    options = {
        indicator_icon = '▎',
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        offsets = {
          {
            filetype = "NvimTree",
            text = "  File Explorer",
            highlight = "Directory",
            text_align = "left"
          }
        },    
        highlights = {
            fill = {
                guibg = {
                    attribute = "fg",
                    highlight = "Pmenu"
                }
            }
        },
    }
}
