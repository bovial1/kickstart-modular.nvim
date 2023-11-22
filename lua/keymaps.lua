-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ ToggleTerm keymaps ]]
-- Set it in all windows
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
-- vim.keymap.set('t', 'jk', [[<C-\><C-n>]])
vim.keymap.set({'n', 't'}, '<C-h>', [[<Cmd>wincmd h<CR>]])
vim.keymap.set({'n', 't'}, '<C-j>', [[<Cmd>wincmd j<CR>]])
vim.keymap.set({'n', 't'}, '<C-k>', [[<Cmd>wincmd k<CR>]])
vim.keymap.set({'n', 't'}, '<C-l>', [[<Cmd>wincmd l<CR>]])
-- vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]])

-- use this to only use in ToggleTerm
-- function _G.set_terminal_keymaps()
--   local opts = {buffer = 0}
--   vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
--   vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
--   vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
--   vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
--   vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
--   vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
--   vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
-- end
-- 
-- vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- vim: ts=2 sts=2 sw=2 et
