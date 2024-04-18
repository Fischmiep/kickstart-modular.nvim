-- File: lua/custom/plugins/overseer.lua

return {
  'stevearc/overseer.nvim',
  config = function()
    require('overseer').setup()
  end,
}
-- vim: ts=2 sts=2 sw=2 et
