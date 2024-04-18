-- File: lua/custom/plugins/nvim-possession.lua

return {
  'gennaro-tedesco/nvim-possession',
  dependencies = {
    'ibhagwan/fzf-lua',
    'tiagovla/scope.nvim',
  },
  config = function()
    local possession = require 'nvim-possession'
    vim.keymap.set('n', '<leader>sl', function()
      possession.list()
    end)
    vim.keymap.set('n', '<leader>sn', function()
      possession.new()
    end)
    vim.keymap.set('n', '<leader>su', function()
      possession.update()
    end)
    vim.keymap.set('n', '<leader>sd', function()
      possession.delete()
    end)
    require('nvim-possession').setup {
      autoload = true,
      autoswitch = {
        enable = true,
      },
      save_hook = function()
        vim.cmd 'ScopeSaveState'
      end,
      post_hook = function()
        vim.cmd 'ScopeLoadState'
      end,
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
