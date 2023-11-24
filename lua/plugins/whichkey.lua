return {
  {
    "folke/which-key.nvim",
    -- event = "VeryLazy",
    keys = { "<leader>" },
    config = function()
      local wk = require("which-key")
      wk.setup({
        key_labels = {
          ["<space>"] = "SPC",
          ["<leader>"] = "SPC",
          ["<cr>"] = "RET",
          ["<tab>"] = "TAB",
        },
        icons = {
          breadcrumb = "",
          group = " ",
        },
      })

      wk.register({
        ["<leader>l"] = { name = "Lazy" },
        ["<leader>w"] = { name = "Window" },
        ["<leader>b"] = { name = "Buffer" },
        ["<leader>s"] = { name = "Search" },
        ["<leader>o"] = { name = "Open" },
        ["<leader>f"] = { name = "Find" },
        ["<leader>t"] = { name = "Terminal" },
        ["<leader>p"] = { name = "Programming" },
        ["<leader><Tab>"] = { name = "Tab" },
        ["<leader>u"] = { name = "UI" },
        ["<leader>q"] = { name = "Quit" },
        ["<leader>c"] = { name = "code" },
        ["<leader>g"] = { name = "Git" },
        ["<leader>x"] = { name = "diagnostics/quickfix" },
      })
    end,
  },
}
