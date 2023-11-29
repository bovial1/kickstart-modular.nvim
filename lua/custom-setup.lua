vim.g.diagnostics_visible = true
function _G.toggle_diagnostics()
  if vim.g.diagnostics_visible then
    vim.g.diagnostics_visible = false
    vim.diagnostic.disable()
  else
    vim.g.diagnostics_visible = true
    vim.diagnostic.enable()
  end
end

vim.g.diagnostics_virtual_text_visible = true
function _G.toggle_diagnostics_virtual_text()
  if vim.g.diagnostics_virtual_text_visible then
    vim.g.diagnostics_virtual_text_visible = false
    vim.diagnostic.config({ virtual_text = false})
  else
    vim.diagnostic.config({ virtual_text = true })
    vim.g.diagnostics_virtual_text_visible = true
  end
end

vim.keymap.set({'n'}, '<leader>i', toggle_diagnostics, { desc = 'toggle d[i]agnostics' })
vim.keymap.set({'n'}, '<leader>I', toggle_diagnostics_virtual_text, { desc = 'toggle d[I]agnostics virtual text' })
