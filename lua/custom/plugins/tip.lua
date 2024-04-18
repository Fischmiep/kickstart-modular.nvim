-- File: lua/custom/plugins/tip.lua

return {
  'TobinPalmer/Tip.nvim',
  dependencies = { 'rcarriga/nvim-notify' },
  event = 'VimEnter',
  init = function()
    require('tip').setup {
      seconds = 2,
      title = 'Tip!',
      url = 'https://vtip.43z.one', -- Or https://vimiscool.tech/neotip
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
