-- File: lua/custom/plugins/neogit.lua

return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'nvim-telescope/telescope.nvim',
  },
  branch = 'nightly',
  config = true,
}
-- vim: ts=2 sts=2 sw=2 et
