return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local palette = require("theme.palette")

    -- +-------------------------------------------------+
    -- | A | B | C                             X | Y | Z |
    -- +-------------------------------------------------+
    lualine.setup({
      options = {
        theme = {
          normal = {
            a = { bg = palette.fg, fg = palette.bg, gui = "bold" },
            b = { bg = palette.bg, fg = palette.fg },
          },
          insert = {
            a = { bg = palette.primary, fg = palette.bg, gui = "bold" },
          },
          visual = {
            a = { bg = palette.secondary, fg = palette.bg, gui = "bold" },
          },
          command = {
            a = { bg = palette.danger, fg = palette.bg, gui = "bold" },
          },
        },
        -- sections = {
        --   lualine_x = {
        --     { "diagnostics" },
        --     { "filetype" },
        --   },
        -- },
        -- inactive_sections = {
        --   inactive_sections = {
        --     lualine_a = {},
        --     lualine_b = { "diagnostics" },
        --     lualine_c = {},
        --     lualine_x = {},
        --     lualine_y = {},
        --     lualine_z = {},
        --   },
        -- },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = { "diagnostics", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
      },
    })
  end,
}
