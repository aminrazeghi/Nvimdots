return {

  { "akinsho/toggleterm.nvim", version = "*", config = true },
  { "David-Kunz/gen.nvim" },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    init = function()
      vim.g.mkdp_theme = "dark"
      vim.g.mkdp_browser = "brave"
    end,
  },
}
