return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        -- Frontend/JS/TS
        "tsserver", -- TypeScript and JavaScript
        "html", -- HTML
        "cssls", -- CSS
        "tailwindcss", -- Tailwind CSS
        "svelte", -- Svelte
        "emmet_ls", -- Emmet (for HTML & CSS)

        -- Backend
        "pyright", -- Python
        "kotlin_language_server", -- Kotlin
        "jdtls", -- Java
        "clangd", -- C/C++
        "bashls", -- Bash

        -- Other
        "lua_ls", -- Lua (for Neovim config)
        "graphql", -- GraphQL
        "prismals", -- Prisma
        "marksman", -- Markdown
        "dockerls", -- Dockerfile
        "jsonls", -- JSON
        "yamlls", -- YAML
      },
    })
    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "stylua",
        "isort",
        "black",
        "pylint",
        "eslint_d",
      },
    })
  end,
}
