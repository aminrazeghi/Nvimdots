return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  enabled = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local logo = [[
                                             
      ████ ██████           █████      ██
     ███████████             █████ 
     █████████ ███████████████████ ███   ███████████
    █████████  ███    █████████████ █████ ██████████████
   █████████ ██████████ █████████ █████ █████ ████ █████
 ███████████ ███    ███ █████████ █████ █████ ████ █████
██████  █████████████████████ ████ █████ █████ ████ ██████
]]

    local NS_eq = {
      "              ρ·∇u = 0                 ",
      "  ∂    _        _   _           =    _ ",
      "  --(ρ u) + ∇ (ρu ⨯ u) = -∇p + ∇τ + ρg ",
      "  ∂t                                   ",
    }

    local coffecup = {
      [[        )  (     ]],
      [[      (   ) )    ]],
      [[       ) ( (     ]],
      [[     _______)_   ]],
      [[  .-'---------|  ]],
      [[ ( C|         |  ]],
      [[  '-|         |  ]],
      [[    '_________'  ]],
      [[     '-------'   ]],
    }
    dashboard.section.header.val = NS_eq
    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
      dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
      dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
      dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
      dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
      dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
      dashboard.button("q", " " .. " Quit", ":qa<CR>"),
    }
    local function footer()
      local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
      local version = vim.version()
      local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

      return datetime .. "   " .. " plugins" .. nvim_version_info
    end
    dashboard.section.footer.val = footer()
    alpha.setup(dashboard.opts)
  end,
}
