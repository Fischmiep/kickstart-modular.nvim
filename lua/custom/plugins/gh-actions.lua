-- File: lua/custom/plugins/gh-actions.lua

return {
  'topaxi/gh-actions.nvim',
  cmd = 'GhActions',
  keys = {
    { '<leader>gh', '<cmd>GhActions<cr>', desc = 'Open Github Actions' },
  },
  build = 'make',
  dependencies = { 'nvim-lua/plenary.nvim', 'MunifTanjim/nui.nvim' },
  opts = {},
  config = function(_, opts)
    require('gh-actions').setup(opts)
  end,
}
-- vim: ts=2 sts=2 sw=2 et
