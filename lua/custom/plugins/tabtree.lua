-- File: lua/custom/plugins/tabtree.lua

return {
  'roobert/tabtree.nvim',
  config = function()
    require('tabtree').setup()
  end,
}
-- vim: ts=2 sts=2 sw=2 et
