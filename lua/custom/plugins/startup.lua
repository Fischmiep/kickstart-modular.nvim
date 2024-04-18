-- File: lua/custom/plugins/startup.lua

return {
  'startup-nvim/startup.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    local num_plugins_loaded = require('lazy').stats().count

    require('startup').setup {
      header = {
        type = 'text',
        align = 'center',
        fold_section = false,
        title = 'Header',
        margin = 5,
        content = {
          [[⠀⠀⠀⢸⣿⣿⡇⠀⣽⣿⣿⡇⠀⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⢠⣄⣢⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠈⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠘⢻⣿⣿⣿⣿⠋⠻⣿⣿⣿⣿⠛⠀⠀⠀⠈⠛⠛⠛⠉⠀⠀⠙⣷⡄⠀⠀⠀]],
          [[⠀⠀⠠⠀⢸⣿⣿⣿⣿⣤⣤⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣆⢀⡀]],
          [[⠀⢀⠇⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣴⣿⣿⣿⠇]],
          [[⠀⡾⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⠀]],
          [[⢠⡇⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⡿⠀]],
          [[⢸⣧⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
          [[⠘⣿⡄⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⠀]],
          [[⠀⣿⣿⡄⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣄⣠⣴⠟⠉⠀⠀]],
          [[⠀⠘⣿⣿⣮⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⣠⠟⠉⢉⠉⠉⢁⣠⡾⠁⠀]],
          [[⠀⠀⠹⣿⣿⣿⣾⣽⡿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⢀⡜⣡⡶⠟⠛⠛⠛⠛⢋⠀⠀⠀]],
          [[⠀⠀⠀⠘⢿⣿⣿⣿⣿⣷⣿⠿⢿⣿⣿⠀⢀⣠⡴⣫⣞⣵⣾⣿⣿⣿⣿⡟⠁⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣟⣛⣛⣛⣯⣽⣾⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠛⠛⠛⠛⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        },
        highlight = 'Statement',
        default_color = '',
        oldfiles_amount = 0,
      },

      quote = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Quote',
        margin = 5,
        content = require('startup.functions').quote(),
        highlight = 'Constant',
        default_color = '',
        oldfiles_amount = 0,
      },

      commands = {
        type = 'mapping',
        align = 'center',
        fold_section = false,
        title = 'Basic Commands',
        margin = 5,
        content = {
          { ' Find File', 'Telescope find_files', '<leader>ff' },
          { '󰍉 Find Word', 'Telescope live_grep', '<leader>lg' },
          { ' Recent Files', 'Telescope oldfiles', '<leader>of' },
          { ' File Browser', 'Neotree reveal', '<leader>fb' },
          { ' Colorschemes', 'Telescope colorscheme', '<leader>cs' },
          { ' Bookmarks', 'Telescope bookmarks', '<leader>bm' },
          { ' New File', "lua require'startup'.new_file()", '<leader>nf' },
        },
        highlight = 'String',
        default_color = '',
        oldfiles_amount = 0,
      },

      oldfiles_dir = {
        type = 'oldfiles',
        oldfiles_directory = true,
        align = 'center',
        fold_section = true,
        title = 'Oldfiles of Directory',
        margin = 5,
        content = {},
        highlight = 'String',
        default_color = '#FFFFFF',
        oldfiles_amount = 5,
      },

      oldfiles = {
        type = 'oldfiles',
        oldfiles_directory = false,
        align = 'center',
        fold_section = true,
        title = 'Oldfiles',
        margin = 5,
        content = { 'startup.nvim' },
        highlight = 'TSString',
        default_color = '#FFFFFF',
        oldfiles_amount = 5,
      },

      clock = {
        type = 'text',
        content = function()
          local clock = ' ' .. os.date '%H:%M'
          local date = ' ' .. os.date '%d-%m-%y'
          return { clock, date }
        end,
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = '',
        margin = 5,
        highlight = 'TSString',
        default_color = '#FFFFFF',
        oldfiles_amount = 10,
      },

      plugins = {
        type = 'text',
        content = {
          string.format('Total plugins (lazy.nvim): %d', num_plugins_loaded),
        },
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = '',
        margin = 5,
        highlight = 'TSString',
        default_color = '#FFFFFF',
        oldfiles_amount = 10,
      },

      options = {
        after = function()
          require('startup.utils').oldfiles_mappings()
        end,
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = true,
        paddings = { 2, 2, 2, 2, 2, 2, 2 },
      },

      colors = {
        background = '#1f2227',
        folded_section = '#56b6c2',
      },

      parts = {
        'header',
        'quote',
        'commands',
        'oldfiles_dir',
        'oldfiles',
        'clock',
        'plugins',
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
