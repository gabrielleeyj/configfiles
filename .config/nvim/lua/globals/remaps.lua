local keyset = vim.keymap.set
local options = { noremap = true }
-- vim-test mappings
keyset('n', '<leader>tn', ':GoTest -n<cr>', { silent = true })
keyset('n', '<leader>tf', ':GoTest -f<cr>', { silent = true })
keyset('n', '<leader>ts', ':GoTest<cr>', { silent = true })
keyset('n', '<leader>tc', ':GoCoverage -p<cr>', { silent = true })
keyset('n', '<leader>tl', ':GoCodeLenAct<cr>', { silent = true })
keyset('n', '<leader>tx', ':GoTermClose<cr>', { silent = true })

-- LSP config mappings
keyset('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', options)
keyset('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', options)
keyset('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', options)
keyset('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', options)
keyset('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', options)
keyset('n', '<leader>ds', '<cmd>lua vim.lsp.buf.signature_help()<CR>', options)
keyset('n', '<leader>dn', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', options)
keyset('n', '<leader>dp', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', options)

-- Change panes on vim ctrl mappings
keyset('n', '<C-h>', '<C-w>h', options)
keyset('n', '<C-j>', '<C-w>j', options)
keyset('n', '<C-k>', '<C-w>k', options)
keyset('n', '<C-l>', '<C-w>l', options)

-- Escape maps to a rolling jk
keyset('i', 'jk', '<ESC>', options)

-- Fugitive Shortcuts
keyset('n', '<leader>gs', vim.cmd.Git)

-- Nvim-Tree
keyset('n', '<leader>n', ':NvimTreeToggle<CR>', options)

-- Lazygit
keyset('n', '<leader>gg', ':LazyGit<CR>', options)

-- Shift + Up/Down to move line up/down
keyset('n', '<S-Up>', 'yyddkP', options)
keyset('n', '<S-Down>', 'yyddp', options)

-- auto add closing {, [, (, ', ", <
keyset('i', '{<cr>', '{<cr>}<ESC>kA<CR>', {})
opening_pairs = {'{', '(', '[', '"', "'", '<'}
closing_pairs = {'}', ')', ']', '"', "'", '>'}
for key, chr in pairs(opening_pairs)
do
  keyset('i', chr, chr..closing_pairs[key]..'<esc>i', {})
end

