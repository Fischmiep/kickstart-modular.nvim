-- File: lua/custom/plugins/bookmarks.lua

return {
  'crusj/bookmarks.nvim',
  keys = {
    { '<tab><tab>', mode = { 'n' } },
  },
  branch = 'main',
  dependencies = { 'nvim-web-devicons' },
  config = function()
    require('bookmarks').setup {
      storage_dir = '',
      mappings_enabled = true,
      keymap = {
        toggle = '<tab><tab>',
        close = 'q',
        add = '\\z',
        add_global = '\\g',
        jump = '<CR>',
        delete = 'dd',
        order = '<space><space>',
        delete_on_virt = '\\dd',
        show_desc = '\\sd',
        focus_tags = '<c-j>',
        focus_bookmarks = '<c-k>',
        toogle_focus = '<S-Tab>',
      },
      width = 0.8,
      height = 0.7,
      preview_ratio = 0.45,
      tags_ratio = 0.1,
      fix_enable = false,

      virt_text = '',
      sign_icon = '󰃃',
      virt_pattern = { '*.go', '*.lua', '*.sh', '*.php', '*.rs' },
      virt_ignore_pattern = {},
      border_style = 'single',
      hl = {
        border = 'TelescopeBorder',
        cursorline = 'guibg=Gray guifg=White',
      },
      require('telescope').load_extension 'bookmarks',
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
