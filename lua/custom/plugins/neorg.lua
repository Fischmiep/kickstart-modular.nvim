-- File: lua/custom/plugins/neorg.lua

return {
  'nvim-neorg/neorg',
  dependencies = {
    {
      'vhyrro/luarocks.nvim',
      priority = 1000,
      config = true,
    },
  },
  lazy = false,
  version = '*',
  config = true,
}
-- vim: ts=2 sts=2 sw=2 et
