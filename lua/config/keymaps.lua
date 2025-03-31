vim.g.mapleader = "\\"

local keymap = vim.keymap

--insert mod
keymap.set("i", "jk", "<ESc>")

--normal mod
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<space>", ":")
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<leader>e", ":Neotree<CR>")
keymap.set("c", "`", "<CR>")
