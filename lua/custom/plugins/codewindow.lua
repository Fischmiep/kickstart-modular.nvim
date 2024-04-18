-- File: lua/custom/plugins/codewindow.lua

return {
  'gorbit99/codewindow.nvim',
  config = function()
    local codewindow = require 'codewindow'
    codewindow.setup()
    codewindow.apply_default_keybinds()
  end,
}
-- vim: ts=2 sts=2 sw=2 et
