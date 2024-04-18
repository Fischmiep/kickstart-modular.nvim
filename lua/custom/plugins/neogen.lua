-- File: lua/custom/plugins/neogen.lua

return {
  'danymat/neogen',
  config = function()
    require('neogen').setup { snippet_engine = 'luasnip' }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
