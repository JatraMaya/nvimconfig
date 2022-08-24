local opts = { noremap = true, silent = true }

local k = vim.keymap.set
-- local term_opts = { silent = true }

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Exit insert mode when press jk simultaneously
k("i", "jk", "<Esc>", opts)

--map Ctrl+f to toggle NvimTree
k("n", "<S-a>", ":NvimTreeToggle<CR>", opts)

-- map Ctrl+c to toggle comment
k("n", "<C-c>", ":CommentToggle<CR>", opts)
