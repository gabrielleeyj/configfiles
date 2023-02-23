-- Setup globals that should always be around
-- See `./lua/globals`
require("globals.options")
require("globals.remaps")
require("plugins.packer")

-- disable netrw at the very start due to nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd'colorscheme onenord'

