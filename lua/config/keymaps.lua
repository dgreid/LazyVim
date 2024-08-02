-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
map("n", ",e", ":e <C-R>=expand(\"%:p:h\") . \"/\" <CR>", { desc = "Open in file directory" })

-- Remove annoying Alt line switching Default
vim.keymap.del({"n", "i", "v"}, "<A-j>")
vim.keymap.del({"n", "i", "v"}, "<A-k>")

-- Ctrl-S if for notepad muscle memory I don't have.
vim.keymap.del({ "i", "x", "n", "s" }, "<C-s>")
-- Don't need a "new file" shortcut
vim.keymap.del("n", "<leader>fn")
-- I know how to exit vim...
vim.keymap.del("n", "<leader>qq")
