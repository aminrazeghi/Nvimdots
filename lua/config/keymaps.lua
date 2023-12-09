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
  { noremap = true, silent = true, desc = "Run Python" }
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

-- cmake:
-- Function to check for CMakeLists.txt and extract project name
local function get_cmake_project_name()
  local current_dir = vim.fn.expand("%:p:h") -- Get current buffer's directory
  local cmake_file = current_dir .. "/CMakeLists.txt"

  local file = io.open(cmake_file, "r")
  if file then
    for line in file:lines() do
      local project_name = line:match("project%(([^%s]+)%)") -- Match the project name
      if project_name then
        file:close()
        return project_name
      end
    end
    file:close()
  end

  return nil
end

-- Function to run the executable with the same name as the CMake project
function run_cmake_project()
  local project_name = get_cmake_project_name() -- Assuming you've defined get_cmake_project_name function

  if project_name then
    local executable_name = project_name

    local executable_path = "./build/" .. executable_name
    print("executable_path: " .. executable_path)

    -- Check if the executable exists
    local file = io.open(executable_path, "r")
    if file then
      file:close()
      -- Run the executable
      vim.fn.jobstart(executable_path, {
        detach = true,
        cwd = vim.fn.expand("%:p:h"), -- Set working directory to the current buffer's directory
      })
    else
      print("Executable '" .. executable_name .. "' not found.")
    end
  else
    print("No CMake project found.")
  end
end

vim.keymap.set(
  "n",
  "<leader>pe",
  "<cmd>lua run_cmake_project() <cr>",
  { noremap = true, silent = true, desc = "find executablename" }
)

vim.keymap.set(
  "n",
  "<leader>pc",
  "<cmd>TermExec cmd='cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=1; ln -s build/compile_commands.json .' direction='float'<cr>",
  { noremap = true, silent = true, desc = "Configure/Cmake" }
)

vim.keymap.set(
  "n",
  "<leader>pb",
  "<cmd>TermExec cmd='cmake --build build --parallel 4' direction='float'<cr>",
  { noremap = true, silent = true, desc = "Build/Cmake" }
)
