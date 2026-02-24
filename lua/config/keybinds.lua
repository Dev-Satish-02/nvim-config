-- Open file explorer (netrw)
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- FZF fuzzy finder
vim.keymap.set("n", "<leader>ff", ":Files<CR>")
vim.keymap.set("n", "<leader>fg", ":Rg<CR>")
vim.keymap.set("n", "<leader>fb", ":Buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Helptags<CR>")

-- Git (vim-fugitive)
vim.keymap.set("n", "<leader>gs", ":Git<CR>")          -- git status
vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")  -- commit
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")    -- push
vim.keymap.set("n", "<leader>gl", ":Git pull<CR>")    -- pull
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")   -- blame

-- Git hunks (gitsigns)
vim.keymap.set("n", "<leader>hs", ":Gitsigns stage_hunk<CR>")
vim.keymap.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>")
vim.keymap.set("n", "<leader>hp", ":Gitsigns preview_hunk<CR>")

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)

-- Format code
vim.keymap.set("n", "<leader>f", ":Format<CR>")

-- Run cpp code
vim.keymap.set("n", "<leader>r", function()
  vim.cmd("w")
  vim.cmd("!g++ % -o %< && %<")
end, { silent = true })
