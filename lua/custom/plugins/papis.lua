-- File: lua/custom/plugins/papis.lua

return {
  'jghauser/papis.nvim',
  dependencies = {
    'kkharji/sqlite.lua',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('papis').setup {
      papis_python = {
        dir = vim.fn.expand '$HOME/Documents/Papers/.papis',
        info_name = 'info.yaml',
        notes_name = [[notes.norg]],
      },
      enable_keymaps = true,
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
