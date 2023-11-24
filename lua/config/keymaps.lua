-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>tt",
  "<cmd>ToggleTerm direction='float'<cr>",
  { noremap = true, silent = true, desc = "Terminal" }
)

vim.keymap.set(
  "n",
  "<leader>th",
  "<cmd>ToggleTerm direction='horizontal'<cr>",
  { noremap = true, silent = true, desc = "Terminal horizontal" }
)
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { noremap = true, silent = true, desc = "Lazy" })

vim.keymap.set("n", "<leader>qw", "<cmd>w|echo 'Saved'<cr>", { noremap = true, silent = true, desc = "Save" })
vim.keymap.set(
  "n",
  "<leader>pp",
  "<cmd>TermExec cmd='python3 %' direction='float'<cr>",
  { noremap = true, silent = true, desc = "Run python" }
)
vim.keymap.set("n", "<leader>pg", "<cmd>Gen<cr>", { noremap = true, silent = true, desc = "LLM-mistral" })
vim.keymap.set("v", "<leader>pg", "<cmd>Gen<cr>", { noremap = true, silent = true, desc = "LLM-mistral" })

vim.keymap.set(
  "n",
  "<leader>pm",
  "<cmd> MarkdownPreview <cr>",
  { noremap = true, silent = true, desc = "Open Markdown" }
)
-- vim.keymap.set("n", "<leader>pn", "<cmd> MarkdownToggle <cr>", { desc = "Toggle Markdown" })

vim.keymap.set(
  "n",
  "<leader>ps",
  "<cmd>TermExec cmd='streamlit run %' direction='float'<cr>",
  { noremap = true, silent = true, desc = "run streamlit server" }
)
vim.keymap.set(
  "n",
  "<leader>pr",
  "<cmd>TermExec cmd='cargo run' direction='float'<cr>",
  { noremap = true, silent = true, desc = "cargo run" }
)

vim.keymap.set(
  "n",
  "<leader>fF",
  -- "<cmd>Telescope live_grep theme=ivy<cr>",
  "<cmd>Telescope live_grep <cr>",
  { noremap = true, silent = true, desc = "󱎸 Find Text" }
)
