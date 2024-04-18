-- File: lua/custom/plugins/nvim-origami.lua

return {
  'chrisgrieser/nvim-origami',
  event = 'BufReadPost',
  opts = true,
  init = function()
    vim.opt.foldlevel = 99
  end,
}
-- vim: ts=2 sts=2 sw=2 et
