key = vim.keymap

vim.g.mapleader = " "

key.set("n", "<leader>tf", "ToggleTerm")

key.set("n", "<leader>fp", vim.cmd.Ex)
key.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
--key.set("n", "<leader>n", ":NvimTreeToggle<CR>")
key.set("n", "<C-n>", ":e .<CR>")

key.set("n", "<C-f>", "<cmd>silent !tmux neww /home/mughil/personal/tmux-scripts/tmux-sessionizer.sh<CR>")

key.set("v", "J", ":m '>+1<CR>gv=gv")
key.set("v", "K", ":m '<-2<CR>gv=gv")

key.set("n", "J", "mzJ`z")
key.set("n", "<C-d>", "<C-d>zz")
key.set("n", "<C-u>", "<C-u>zz")
key.set("n", "n", "nzzzv")
key.set("n", "N", "Nzzzv")

-- greatest remap ever
key.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
key.set({ "n", "v" }, "<leader>y", [["+y]])
key.set("n", "<leader>Y", [["+Y]])

key.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
key.set("i", "<C-c>", "<Esc>")

key.set("n", "Q", "<nop>")
key.set("n", "<leader>a", vim.lsp.buf.format)

key.set("n", "<C-k>", "<cmd>cnext<CR>zz")
key.set("n", "<C-j>", "<cmd>cprev<CR>zz")
key.set("n", "<leader>k", "<cmd>lnext<CR>zz")
key.set("n", "<leader>j", "<cmd>lprev<CR>zz")

key.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

key.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
