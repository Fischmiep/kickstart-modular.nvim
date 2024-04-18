-- File: lua/custom/plugins/yeet.lua

return {
  'samharju/yeet.nvim',
  dependencies = {
    'stevearc/dressing.nvim',
  },
  cmd = 'Yeet',
  config = function()
    require('yeet').setup()
  end,
}
-- vim: ts=2 sts=2 sw=2 et
