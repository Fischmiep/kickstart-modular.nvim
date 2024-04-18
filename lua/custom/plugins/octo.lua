-- File: lua/custom/plugins/octo.lua

return {
  'pwntester/octo.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('octo').setup {
      suppress_missing_scope = {
        projects_v2 = true,
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
