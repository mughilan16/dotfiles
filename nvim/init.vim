" General
source ~/.config/nvim/plugin.vim
source ~/.config/nvim/keybinding.vim
source ~/.config/nvim/settings.vim

" Themes, syntax highlighting, filetree, and more
source ~/.config/nvim/look/colorscheme.vim
source ~/.config/nvim/look/bufferline.vim
luafile ~/.config/nvim/look/bufferline.lua
luafile ~/.config/nvim/look/nvim-tree.lua
luafile ~/.config/nvim/plugin_config/tree-sitter.lua
" luafile ~/.config/nvim/look/webicons.lua
source ~/.config/nvim/look/lightline.vim

" Telescople and commenter
luafile ~/.config/nvim/plugin_config/telescople.lua
source ~/.config/nvim/plugin_config/comment.vim

" LSP Configure and Snippets
luafile ~/.config/nvim/plugin_config/compe-config.lua
source ~/.config/nvim/plugin_config/lsp-config.vim
luafile ~/.config/nvim/lsp/bash-lsp.lua
luafile ~/.config/nvim/lsp/python-lsp.lua
luafile ~/.config/nvim/lsp/tsserver.lua
luafile ~/.config/nvim/lsp/cssls.lua
luafile ~/.config/nvim/lsp/html.lua
source ~/.config/nvim/plugin_config/snippets.vim
source ~.config/nvim/plugin_config/codi.vim

