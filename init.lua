vim.g.mapleader = " "

vim.g.loaded_nvim_treesitter = 1
vim.g.loaded_nvim_treesitter_configs = 1

-- Basic editor options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

-- Initialize lazy.nvim with NO plugins
require("lazy").setup("plugins")
require("config.keybinds")
require("config.options")
