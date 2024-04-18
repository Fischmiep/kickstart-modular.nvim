-- File: lua/custom/plugins/vim-mundo.lua

return {
  'simnalamburt/vim-mundo',
  config = function()
    vim.opt.undodir = vim.fn.expand '$HOME/.vim/undo'
    vim.g.mundo_right = 1
    vim.g.mundo_preview_bottom = 1
  end,
}
-- vim: ts=2 sts=2 sw=2 et
