-- File: lua/custom/plugins/nvim-scrollbar.lua

return {
  'petertriho/nvim-scrollbar',
  dependencies = {
    'kevinhwang91/nvim-hlslens',
    config = function()
      require('hlslens').setup {
        build_position_cb = function(plist, _, _, _)
          require('scrollbar.handlers.search').handler.show(plist.start_pos)
        end,
      }

      vim.cmd [[
        augroup scrollbar_search_hide
            autocmd!
            autocmd CmdlineLeave : lua require('scrollbar.handlers.search').handler.hide()
        augroup END
      ]]
    end,
  },
  config = function()
    require('scrollbar').setup {
      show = true,
      show_in_active_only = false,
      set_highlights = true,
      folds = 1000,
      max_lines = false,
      hide_if_all_visible = false,
      throttle_ms = 100,
      handle = {
        text = ' ',
        blend = 30,
        color = nil,
        color_nr = nil,
        highlight = 'CursorColumn',
        hide_if_all_visible = true,
      },
      marks = {
        Cursor = {
          text = '•',
          priority = 0,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'Normal',
        },
        Search = {
          text = { '-', '=' },
          priority = 1,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'Search',
        },
        Error = {
          text = { '-', '=' },
          priority = 2,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'DiagnosticVirtualTextError',
        },
        Warn = {
          text = { '-', '=' },
          priority = 3,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'DiagnosticVirtualTextWarn',
        },
        Info = {
          text = { '-', '=' },
          priority = 4,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'DiagnosticVirtualTextInfo',
        },
        Hint = {
          text = { '-', '=' },
          priority = 5,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'DiagnosticVirtualTextHint',
        },
        Misc = {
          text = { '-', '=' },
          priority = 6,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'Normal',
        },
        GitAdd = {
          text = '┆',
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'GitSignsAdd',
        },
        GitChange = {
          text = '┆',
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'GitSignsChange',
        },
        GitDelete = {
          text = '▁',
          priority = 7,
          gui = nil,
          color = nil,
          cterm = nil,
          color_nr = nil,
          highlight = 'GitSignsDelete',
        },
      },
      excluded_buftypes = {
        'terminal',
      },
      excluded_filetypes = {
        'cmp_docs',
        'cmp_menu',
        'Mundo',
        'MundoDiff',
        'noice',
        'prompt',
        'startup',
        'TelescopePrompt',
      },
      autocmd = {
        render = {
          'BufWinEnter',
          'TabEnter',
          'TermEnter',
          'WinEnter',
          'CmdwinLeave',
          'TextChanged',
          'VimResized',
          'WinScrolled',
        },
        clear = {
          'BufWinLeave',
          'TabLeave',
          'TermLeave',
          'WinLeave',
        },
      },
      handlers = {
        cursor = true,
        diagnostic = true,
        gitsigns = true,
        handle = true,
        search = true,
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et