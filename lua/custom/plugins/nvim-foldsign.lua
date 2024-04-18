-- File: lua/custom/plugins/nvim-foldsign.lua

return {
  'yaocccc/nvim-foldsign',
  event = 'CursorHold',
  config = function()
    require('nvim-foldsign').setup {
      offset = -2,
      foldsigns = {
        open = '-',
        close = '+',
        seps = { '│', '┃' },
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
