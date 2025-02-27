return {
  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    },
    config = function()
      local lsp = require("lsp-zero")

      lsp.preset("recommended")

      --lsp.ensure_installed({
      --'tsserver',
      --'rust_analyzer',
      --})

      -- Fix Undefined global 'vim'
      --lsp.configure('lua-language-server', {
      --settings = {
      --Lua = {
      --diagnostics = {
      --globals = { 'vim' }
      --}
      --}
      --}
      --})

      local cmp = require('cmp')
      local cmp_select = { behavior = cmp.SelectBehavior.Select }
      local cmp_mappings = lsp.defaults.cmp_mappings({
        ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
      })
      cmp.setup({
        mapping = cmp_mappings,
        --window = {
        --completion = {
        --border = "rounded",
        --winhighlight = "Normal:Normal",
        --}
        --}
      })
      -- vim.cmd("highlight CmpNormal guibg=#222222")
      --lsp.setup_nvim_cmp({
      --mapping = cmp_mappings,
      --window = {
      --completion = {
      --border = "rounded",
      --winhighlight = "Normal:CmpNormal",
      --}
      --}
      --})

      lsp.set_preferences({
        suggest_lsp_servers = false,
        sign_icons = {
          error = 'E',
          warn = 'W',
          hint = 'H',
          info = 'I'
        }
      })

      lsp.on_attach(function(client, bufnr)
        local opts = { buffer = bufnr, remap = false }

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "ge", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "gE", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
      end)

      lsp.setup()

      vim.diagnostic.config({
        virtual_text = true
      })
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "rust_analyzer", "tsserver" },
      }
      require 'lspconfig'.lua_ls.setup {}
      require 'lspconfig'.tsserver.setup {}
      require 'lspconfig'.gopls.setup {}
      require 'lspconfig'.templ.setup {}
      require 'lspconfig'.pyright.setup {}
      require 'lspconfig'.astro.setup {}
      require 'lspconfig'.tailwindcss.setup {}
      require 'lspconfig'.lemminx.setup {}
      require 'lspconfig'.csharp_ls.setup {}
      require 'lspconfig'.elixirls.setup {
        -- Unix
        cmd = { "/home/mughil/.local/share/nvim/mason/bin/elixir-ls" },
      }
      require 'lspconfig'.html.setup {}
      require 'lspconfig'.cssls.setup {}
      require 'lspconfig'.volar.setup {}
      require 'lspconfig'.vuels.setup {}

      require 'lspconfig'.rust_analyzer.setup {
        settings = {
          ['rust-analyzer'] = {
            diagnostics = {
              enable = false,
            }
          }
        }
      }

      require 'lspconfig'.zls.setup {}
      require 'lspconfig'.clangd.setup {}
      require 'mason'.setup {}
    end
  }
}
