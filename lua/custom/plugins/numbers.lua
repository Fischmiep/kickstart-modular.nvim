-- File: lua/custom/plugins/numbers.lua

return {
  'nkakouros-original/numbers.nvim',
  config = function()
    require('numbers').setup {
      excluded_filetypes = {
        'neo-tree',
        'qf',
        'startup',
        'trouble',
        'Mundo',
        'MundoDiff',
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
