return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",  -- Déclarez simplement la dépendance ici
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      -- Enable syntax highlighting
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      -- Enable indentation
      indent = { enable = true },
      -- Ensure these language parsers are installed
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "python",
        "kotlin",
        "java",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "c",
        "cpp",    -- C++ parser
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
      },
      -- Automatically install missing parsers when entering buffer
      auto_install = true,
      -- List of parsers to ignore installing (for "all")
      ignore_install = {},
      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,
      -- Modules section to satisfy TSConfig requirements
      modules = {},

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })

    -- Setup for nvim-ts-autotag
    require('nvim-ts-autotag').setup()
  end,
}

