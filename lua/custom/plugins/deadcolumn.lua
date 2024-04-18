-- File: lua/custom/plugins/deadcolumn.lua
return {
  'Bekaboo/deadcolumn.nvim',

  config = function()
    vim.opt_local.colorcolumn = '100'
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'lua',
      callback = function()
        vim.opt_local.colorcolumn = '100'
      end,
    })
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'python',
      callback = function()
        vim.opt_local.colorcolumn = '80'
      end,
    })
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'startup',
      callback = function()
        vim.opt_local.colorcolumn = '999'
      end,
    })
  end,
}
-- vim: ts=2 sts=2 sw=2 et
