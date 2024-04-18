-- File: lua/custom/plugins/neotest.lua

return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-python',
    'rouge8/neotest-rust',
    'mrcjkb/neotest-haskell',
    'alfaix/neotest-gtest',
    'rcasia/neotest-bash',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-python' {
          dap = { justMyCode = false },
        },
        require 'neotest-python' {},
        require 'neotest-python' {},
        require 'neotest-python' {},
        require 'neotest-python' {},
      },
      consumers = {
        overseer = require 'neotest.consumers.overseer',
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
