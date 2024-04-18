-- File: lua/custom/plugins/nvim-notify.lua

return {
  'rcarriga/nvim-notify',
  config = function()
    vim.notify = require 'notify'
  end,
}
-- vim: ts=2 sts=2 sw=2 et
