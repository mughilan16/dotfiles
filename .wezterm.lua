-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
    config = wezterm.config_builder()
end

-- Remove padding
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.wsl_domains = {
    {
        -- The name of this specific domain.  Must be unique amonst all types
        -- of domain in the configuration file.
        name = 'WSL:Ubuntu',

        -- The name of the distribution.  This identifies the WSL distribution.
        -- It must match a valid distribution from your `wsl -l -v` output in
        -- order for the domain to be useful.
        distribution = 'Ubuntu-22.04',
    },
}

config.default_domain = 'WSL:Ubuntu'
--config.window_decorations = "RESIZE"

-- For example, changing the color scheme:
--config.color_scheme = 'One Dark (Gogh)'
--config.color_scheme = 'Gruvbox dark, hard (base16)'
--config.color_scheme = 'Nord (Gogh)'
--config.color_scheme = 'NvimDark'
--config.color_scheme = 'Oxocarbon Dark (Gogh)'
--config.color_scheme = "Batman"
--config.color_scheme = 'Abernathy'
--config.color_scheme = 'Andromeda'
--config.color_scheme = 'Ashes (base16)'
-- config.color_scheme = 'Gruvbox Dark (Gogh)'
--config.color_scheme = 'Solarized (dark) (terminal.sexy)'
--config.color_scheme = 'Aci (Gogh)'
--config.color_scheme = 'GitHub Dark'
--config.color_scheme = 'nightfly'
--config.color_scheme = 'Night Owl (Gogh)'
--config.color_scheme = 'One Dark (Gogh)'
--config.color_scheme = 'Monokai (base16)'
config.colors = {
    cursor_fg = '#202020',
    cursor_bg = '#D8DEE9',
    cursor_border = '#D8DEE9',
    foreground = '#BBC3D4',
    background = '#1E222A',
    selection_fg = 'black',
    selection_bg = '#fffacd',
    scrollbar_thumb = '#222222',
    -- The color of the split lines between panes
    split = '#444444',
}

--config.color_scheme = 'Atlas (base16)'

config.default_cursor_style = 'SteadyBlock'
--config.color_scheme = 'Catppuccin Mocha'
--config.color_scheme = 'zenbones_dark'
--config.color_scheme = 'kanagawabones'

--wezterm.font('Geist Mono')
--config.font = wezterm.font("Victor Mono Medium")
--config.font = wezterm.font("JetBrains Mono Medium")
--config.font = wezterm.font("Agave Nerd Font")
config.font = wezterm.font("Monoflow")


config.enable_tab_bar = false
config.freetype_load_flags = 'NO_AUTOHINT'
config.freetype_load_target = "HorizontalLcd"
--config.cell_width=0.8
--

--config.window_decorations = "NONE"
-- Font
--config.font = wezterm.font('Hack', { weight = 400 })
config.font_size = 13
config.line_height = 1.2

config.window_background_opacity = 1
-- and finally, return ihe configuration to wezterm
--config.colors = {
--  -- The default text color
--  foreground = '#bdc1c6',
--  -- The default background color
--  background = '#011627',
--
--  -- Overrides the cell background color when the current cell is occupied by the
--  -- cursor and the cursor style is set to Block
--  cursor_bg = '#9ca1aa',
--  -- Overrides the text color when the current cell is occupied by the cursor
--  cursor_fg = '#080808',
--  -- Specifies the border color of the cursor when the cursor style is set to Block,
--  -- or the color of the vertical or horizontal bar when the cursor style is set to
--  -- Bar or Underline.
--  cursor_border = '#9ca1aa',
--
--  -- the foreground color of selected text
--  selection_fg = '#080808',
--  -- the background color of selected text
--  selection_bg = '#b2ceee',
--
--  -- The color of the scrollbar "thumb"; the portion that represents the current viewport
--  scrollbar_thumb = '#222222',
--
--  -- The color of the split lines between panes
--  split = '#444444',
--
--  ansi = {
--    '#1d3b53',
--    '#fc514e',
--    '#a1cd5e',
--    '#e3d18a',
--    '#82aaff',
--    '#c792ea',
--    '#7fdbca',
--    '#a1aab8',
--  },
--  brights = {
--    '#1d3b53',
--    '#fc514e',
--    '#a1cd5e',
--    '#e3d18a',
--    '#82aaff',
--    '#c792ea',
--    '#7fdbca',
--    '#a1aab8',
--  },
--
--  -- Arbitrary colors of the palette in the range from 16 to 255
--  indexed = { [136] = '#af8700' },
--
--  -- Since: 20220319-142410-0fcdea07
--  -- When the IME, a dead key or a leader key are being processed and are effectively
--  -- holding input pending the result of input composition, change the cursor
--  -- to this color to give a visual cue about the compose state.
--  compose_cursor = 'orange',
--
--  -- Colors for copy_mode and quick_select
--  -- available since: 20220807-113146-c2fee766
--  -- In copy_mode, the color of the active text is:
--  -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
--  -- 2. selection_* otherwise
--  copy_mode_active_highlight_bg = { Color = '#000000' },
--  -- use `AnsiColor` to specify one of the ansi color palette values
--  -- (index 0-15) using one of the names "Black", "Maroon", "Green",
--  --  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
--  -- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
--  copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
--  copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
--  copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },
--
--  quick_select_label_bg = { Color = 'peru' },
--  quick_select_label_fg = { Color = '#ffffff' },
--  quick_select_match_bg = { AnsiColor = 'Navy' },
--  quick_select_match_fg = { Color = '#ffffff' },
--}
return config
