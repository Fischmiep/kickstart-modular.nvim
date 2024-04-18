-- File: lua/custom/plugins/jupytext.lua

return {
  'GCBallesteros/jupytext.nvim',
  config = function()
    require('jupytext').setup {}
  end,
}
-- vim: ts=2 sts=2 sw=2 et
