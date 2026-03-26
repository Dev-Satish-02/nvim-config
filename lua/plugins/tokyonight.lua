return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        hl.VertSplit = { fg = c.bg, bg = c.bg }
        hl.WinSeparator = { fg = c.bg, bg = c.bg } -- IMPORTANT (new nvim uses this)
      end,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd("colorscheme tokyonight")

      -- force override AFTER colorscheme
      vim.opt.fillchars = { vert = " " }
    end,
  },
}
