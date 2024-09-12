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

-- Toggle LSP inlay hints
local function toggle_inlay_hints()
    local current_buf = vim.api.nvim_get_current_buf()
    if vim.lsp.inlay_hint.is_enabled({current_buf}) then
        vim.lsp.inlay_hint.enable(false, {current_buf})
    else
        vim.lsp.inlay_hint.enable(true, {current_buf})
    end
end

map("n", "<leader>ch", toggle_inlay_hints, { desc = "Toggle LSP inlay hints" })
