local opts = {noremap=true, silent=true}

vim.g.mapleader = ','
vim.g.maplocalleader = ','

vim.api.nvim_set_keymap('n', ';', "<C-d>", opts)
vim.api.nvim_set_keymap('n', "'", "<C-u>", opts)
vim.api.nvim_set_keymap('n', '<Leader>,', "<C-o>", opts)
vim.api.nvim_set_keymap('n', '<Leader>.', "<C-i>", opts)
vim.api.nvim_set_keymap('n', 'j', "gj", opts)
vim.api.nvim_set_keymap('n', 'k', "gk", opts)
vim.api.nvim_set_keymap('v', 'j', "gj", opts)
vim.api.nvim_set_keymap('v', 'k', "gk", opts)
vim.api.nvim_set_keymap('v', '<', "<gv", opts)
vim.api.nvim_set_keymap('v', '>', ">gv", opts)

vim.api.nvim_set_keymap('n', '<C-q>', ":q<CR>", opts)
vim.api.nvim_set_keymap('n', '<C-Q>', ":q!<CR>", opts)
vim.api.nvim_set_keymap('n', '<C-s>', ":w<CR>", opts)

-- Comment
vim.api.nvim_set_keymap('n', '<Leader>c', ":TComment<CR>", opts)

-- Nvim Tree
vim.api.nvim_set_keymap('n', '<C-n>', "<cmd>lua require'nvim-tree'.toggle()<CR>", opts)

-- Fzf
vim.api.nvim_set_keymap('n', '<Leader>f', "<cmd>lua require('fzf-lua').files()<CR>", opts)
vim.api.nvim_set_keymap('n', '<Leader>fb', "<cmd>lua require('fzf-lua').buffers()<CR>", opts)
vim.api.nvim_set_keymap('n', '<Leader>fl', "<cmd>lua require('fzf-lua').lines()<CR>", opts)
vim.api.nvim_set_keymap('n', '<Leader>fr', "<cmd>lua require('fzf-lua').grep()<CR>", opts)

-- Language Server Protocol
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implemetation()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

