local diagnostics_active = true
local toggle_diagnostics = function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.show()
  else
    vim.diagnostic.hide()
  end
end

local virtual_text_active = true
local toggle_diagnostics_virtual_text = function()
  virtual_text_active = not virtual_text_active
  vim.diagnostic.config({ virtual_text = virtual_text_active })
end

vim.keymap.set('n', '<leader>i', toggle_diagnostics, { desc = 'Toggle d[i]agnostic' } )
vim.keymap.set('n', '<leader>v', toggle_diagnostics_virtual_text, { desc = 'Toggle diagnostic [v]irtual text' } )
