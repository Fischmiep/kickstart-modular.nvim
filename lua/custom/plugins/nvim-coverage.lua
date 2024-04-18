-- File: lua/custom/plugins/nvim-coverage.lua

return {
  'andythigpen/nvim-coverage',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require('coverage').setup()
  end,
}
-- vim: ts=2 sts=2 sw=2 et
