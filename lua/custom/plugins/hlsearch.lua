-- File: lua/custom/plugins/hlsearch.lua

return {
  'nvimdev/hlsearch.nvim',
  event = 'BufRead',
  config = function()
    require('hlsearch').setup()
  end,
}
-- vim: ts=2 sts=2 sw=2 et
