-- File: lua/custom/plugins/scope.lua

return {
  'tiagovla/scope.nvim',
  config = function()
    vim.opt.sessionoptions = {
      'buffers',
      'tabpages',
      'globals',
    }
    require('scope').setup {}
    require('scope').setup {}
    require('telescope').load_extension 'scope'
  end,
}
-- vim: ts=2 sts=2 sw=2 et
