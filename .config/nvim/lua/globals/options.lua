vim.opt.exrc = true  -- exec a local vimrc (like direnv)
vim.opt.relativenumber = true  -- relative number in gutter
vim.opt.nu = true  -- Indent current line number
vim.opt.hlsearch = false  -- Don't highlight search
vim.opt.incsearch = true  -- jump incrementally to search results
vim.opt.wildmenu = true
vim.opt.hidden = true -- allow hidden buffers
vim.opt.errorbells = false -- ding ding!
vim.opt.wrap = false -- don't wrap long lines
vim.opt.swapfile = false -- don't need no swap files!
vim.opt.backup = false  -- ... or a backup!
vim.opt.undodir = "~/.nvim/undodir"  -- sets where undo files land
vim.opt.scrolloff = 8  -- scroll offwidth so it's not the very bottom
vim.opt.colorcolumn = "80"  -- bar at 80 chars width
vim.opt.signcolumn = "yes" -- always set the far left bar/column
-- vim.o.nocompatible = true
vim.opt.mouse = "a"  -- always enable mouse mode
vim.opt.tabstop = 4  -- Tabs are 4 spaces: Reference - https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.smartindent = true
vim.opt.ignorecase = true  -- ignore case when searching
vim.opt.smartcase = true  -- Unless we explicitly use cases in search
vim.opt.splitbelow = true  -- automagically h split going down
vim.opt.splitright = true -- automagically v split going right
vim.opt.listchars = {  -- see hidden chars and their colors
    tab = "| ",
    eol = '¬',
    trail = '·'
}
vim.opt.list = true
vim.opt.updatetime = 300

vim.opt.termguicolors = true

-- Set Leader Key to Space
vim.g.mapleader = " "

