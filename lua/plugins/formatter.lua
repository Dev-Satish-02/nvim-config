return {
  {
    "mhartington/formatter.nvim",
    config = function()
      require("formatter").setup({
        filetype = {
          python = {
            require("formatter.filetypes.python").black,
          },
          javascript = {
            require("formatter.filetypes.javascript").prettier,
          },
          typescript = {
            require("formatter.filetypes.typescript").prettier,
          },
          javascriptreact = {
            require("formatter.filetypes.javascriptreact").prettier,
          },
          typescriptreact = {
            require("formatter.filetypes.typescriptreact").prettier,
          },
          html = {
            require("formatter.filetypes.html").prettier,
          },
          css = {
            require("formatter.filetypes.css").prettier,
          },
          json = {
            require("formatter.filetypes.json").prettier,
          },
          cpp = {
            require("formatter.filetypes.cpp").clangformat,
          },
          c = {
            require("formatter.filetypes.c").clangformat,
          },
        },
      })
    end,
  },
}

