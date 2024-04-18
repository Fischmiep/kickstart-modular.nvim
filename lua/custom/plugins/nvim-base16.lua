return {
  {
    'RRethy/base16-nvim',
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd 'colorscheme base16-tomorrow-night'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
