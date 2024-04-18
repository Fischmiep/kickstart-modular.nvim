-- File: lua/custom/plugins/boole.lua

return {
  'nat-418/boole.nvim',
  config = function()
    require('boole').setup {
      mappings = {
        increment = '<C-a>',
        decrement = '<C-x>',
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
