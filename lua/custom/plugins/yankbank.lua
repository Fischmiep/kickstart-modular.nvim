-- File: lua/custom/plugins/yankbank.lua

return {
  'ptdewey/yankbank-nvim',
  config = function()
    require('yankbank').setup()
    vim.keymap.set('n', '"\'', '<cmd>YankBank<CR>', { noremap = true })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
