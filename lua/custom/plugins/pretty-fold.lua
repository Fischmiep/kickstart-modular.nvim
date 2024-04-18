-- File: lua/custom/plugins/pretty-fold.lua

return {
  'anuvyklack/pretty-fold.nvim',
  config = function()
    require('pretty-fold').setup {
      keep_indentation = false,
      fill_char = '━',
      sections = {
        left = {
          '━ ',
          function()
            return string.rep('*', vim.v.foldlevel)
          end,
          ' ━┫',
          'content',
          '┣',
        },
        right = {
          '┫ ',
          'number_of_folded_lines',
          ': ',
          'percentage',
          ' ┣━━',
        },
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
