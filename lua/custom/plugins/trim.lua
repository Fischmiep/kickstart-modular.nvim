-- File: lua/custom/plugins/trim.lua

return {
  'cappyzawa/trim.nvim',
  config = function()
    require('trim').setup { trim_last_line = false }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
