return {
  -- Git commands (commit, push, blame, diff)
  {
    "tpope/vim-fugitive",
  },

  -- Git signs in the gutter
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },
}

