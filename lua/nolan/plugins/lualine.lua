return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- Define flashy colors
    local colors = {
      blue = "#00BFFF", -- Deep Sky Blue
      green = "#32CD32", -- Lime Green
      violet = "#8A2BE2", -- Blue Violet
      yellow = "#FFD700", -- Gold
      red = "#FF4500", -- Orange Red
      fg = "#F0F8FF", -- Alice Blue
      bg = "#1C1C1C", -- Dark Gray
      inactive_bg = "#2E2E2E", -- Slightly lighter dark gray
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.green, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.inactive_bg, fg = "#B0B0B0", gui = "bold" }, -- Light gray for inactive state
        b = { bg = colors.inactive_bg, fg = "#B0B0B0" },
        c = { bg = colors.inactive_bg, fg = "#B0B0B0" },
      },
    }

    -- Configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#FF69B4" }, -- Hot Pink for updates
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
