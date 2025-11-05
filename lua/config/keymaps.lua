-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Close the current buffer with ;bd
vim.keymap.set("n", ";bd", "<cmd>bd<CR>", { desc = "Close current buffer" })
-- Close all buffers with ;bdd
vim.keymap.set("n", ";bdd", "<cmd>bufdo bd<CR>", { desc = "Close all buffers" })
