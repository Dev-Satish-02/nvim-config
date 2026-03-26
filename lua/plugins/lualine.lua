return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local lualine = require("lualine")
      local theme = require("lualine.themes.tokyonight")

      -- make everything transparent
      for _, mode in pairs(theme) do
        for _, section in pairs(mode) do
          section.bg = "NONE"
        end
      end

      lualine.setup({
        options = {
          theme = theme,
          icons_enabled = true,
          section_separators = "",
          component_separators = "",
        },
        sections = {
          lualine_a = {
            {
              "mode",
              color = { bg = "#3b4261", fg = "#c0caf5", gui = "bold" },
            },
          },
          lualine_b = {
            { "branch", color = { bg = "NONE" } },
          },
          lualine_c = {
            { "filename", color = { bg = "NONE" } },
          },
          lualine_x = {
            { "encoding", color = { bg = "NONE" } },
          },
          lualine_y = {
            { "filetype", color = { bg = "NONE" } },
          },
          lualine_z = {
            {
              "location",
              color = { fg = "#7aa2f7", bg = "NONE", gui = "bold" },
            },
          },
        },
      })
    end,
  },
}
