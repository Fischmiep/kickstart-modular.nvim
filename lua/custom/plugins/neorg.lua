-- File: lua/custom/plugins/neorg.lua

return {
  'nvim-neorg/neorg',
  dependencies = {
    {
      'vhyrro/luarocks.nvim',
      priority = 1000,
      config = true,
    },
  },
  lazy = false,
  version = '*',
  config = function()
    require('neorg').setup {
      load = {
        ['core.clipboard.code-blocks'] = {},
        ['core.completion'] = {
          config = {
            engine = 'nvim-cmp',
          },
        },
        ['core.concealer'] = {
          config = {
            init_open_folds = 'always',
          },
        },
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/Documents/Notes',
              journal = '~/Documents/Journal',
              paper = '~/Documents/Papers',
              books = '~/Documents/Books',
            },
            default_workspace = 'notes',
          },
        },
        ['core.esupports.hop'] = {},
        ['core.esupports.indent'] = {},
        ['core.esupports.metagen'] = {},
        ['core.export'] = {},
        ['core.export.markdown'] = {
          config = {
            extensions = 'all',
          },
        },
        ['core.integrations.image'] = {},
        ['core.itero'] = {},
        ['core.journal'] = {
          config = {
            journal_folder = '',
            workspace = 'journal',
          },
        },
        ['core.keybinds'] = {},
        ['core.latex.renderer'] = {},
        ['core.looking-glass'] = {},
        ['core.pivot'] = {},
        ['core.presenter'] = {
          config = {
            zen_mode = 'zen-mode',
          },
        },
        ['core.promo'] = {},
        ['core.qol.toc'] = {},
        ['core.qol.todo_items'] = {},
        ['core.summary'] = {},
        ['core.tangle'] = {},
        ['core.ui.calendar'] = {},
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
