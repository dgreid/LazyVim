return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "enter", -- Start with the "enter" preset as a base
      ["<Tab>"] = { "accept", "fallback" }, -- Accept completion with Tab
      ["<CR>"] = { "fallback" }, -- Make Enter just insert a newline
      -- Keep other mappings as needed
      ["<C-n>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback" },
    },
  },
}
