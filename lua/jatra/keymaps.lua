local opts = { noremap = true, silent = true }

local k = vim.keymap.set
-- local term_opts = { silent = true }

-- Map "," as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- movements
k("n", "<C-l>", "<C-w>l", opts)
k("n", "<C-h>", "<C-w>h", opts)
k("n", "<C-j>", "<C-w>j", opts)
k("n", "<C-k>", "<C-w>k", opts)

k("i", "jj", "<Esc>", opts) -- Exit insert mode when press jk simultaneously
k("n", "<leader>.", ":NvimTreeToggle<CR>", opts) -- map Ctrl+f to toggle NvimTree
k("n", "<leader>/", ":CommentToggle<CR>", opts) -- map Ctrl+c to toggle comment
