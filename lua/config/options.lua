-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- undo non old vim defaults that annoy me
vim.opt.cursorline = false
vim.opt.ignorecase = false
vim.opt.linebreak = false
vim.opt.list = false
vim.opt.number = true
vim.opt.numberwidth = 4
vim.opt.relativenumber = false
vim.opt.shiftwidth = 4
vim.opt.statuscolumn = "%@SignCb@%s%=%T%@NumCb@%l│%T"
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.tabstop = 8
vim.opt.wrap = true

-- animation scrolling is annoying
vim.g.snacks_animate = false
vim.g.snacks_indent = false
vim.g.snacks_smooth = false

-- Disable format on save for C files
vim.g.autoformat = true -- Keep global format on save enabled
vim.api.nvim_create_autocmd("FileType", {
  pattern = "c",
  callback = function()
    vim.b.autoformat = false -- Disable format on save for C files only
  end,
})
