-- File: lua/custom/plugins/gist.lua

return {
  {
    'Rawnly/gist.nvim',
    cmd = { 'GistCreate', 'GistCreateFromFile', 'GistsList' },
    config = true,
  },
  {
    'samjwill/nvim-unception',
    lazy = false,
    init = function()
      vim.g.unception_block_while_host_edits = true
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
