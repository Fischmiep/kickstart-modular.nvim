-- File: lua/custom/plugins/hop.lua

return {
  {
    'smoka7/hop.nvim',
    version = '*',
    config = function()
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
