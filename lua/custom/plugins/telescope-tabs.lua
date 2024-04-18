-- File: lua/custom/plugins/telescope-tabs.lua

return {
  'LukasPietzschmann/telescope-tabs',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('telescope').load_extension 'telescope-tabs'
  end,
}
-- vim: ts=2 sts=2 sw=2 et
