return {
  -- disable janky buffer and tab page tabs.
  { "akinsho/bufferline.nvim", enabled = false },
  --- Don't need funky vertical bars for indentaiton
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  --- hate matching pairs
  { "echasnovski/mini.pairs", enabled = false },
  --- regular seach is fine and the default keymaps are intrusive (s = switch)
  { "folke/flash.nvim", enabled = false },
}
