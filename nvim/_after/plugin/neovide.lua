local option = vim.o
local global = vim.g

local alpha = function()
  return string.format("%x", math.floor(255 * global.transparency))
end

if global.neovide then
    option.guifont = "Geist Mono"
    option.linespace = 5
    vim.g.neovide_scale_factor = 1.1
    global.neovide_transparency = 1
    global.transparency = 1
    global.neovide_background_color = "#0f1117" .. alpha()
    global.neovide_hide_mouse_when_typing = true
    global.neovide_cursor_animation_length = 0.09
    global.neovide_cursor_vfx_mode = "pixiedust"
end

