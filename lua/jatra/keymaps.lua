local opts = { noremap = true, silent = true }

local k = vim.keymap.set
-- local term_opts = { silent = true }

-- Map "," as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

k("i", "jj", "<Esc>", opts) -- Exit insert mode when press jk simultaneously
k("n", "<leader>.", ":NvimTreeToggle<CR>", opts) -- map Ctrl+f to toggle NvimTree
k("n", "<leader>/", ":CommentToggle<CR>", opts) -- map Ctrl+c to toggle comment
