-- File: lua/custom/plugins/sniprun.lua

return {
  'michaelb/sniprun',
  branch = 'master',
  build = 'sh install.sh',
  config = function()
    require('sniprun').setup {
      display = {
        'Classic',
        'VirtualTextOk',
        'NvimNotify',
      },
      live_display = { 'VirtualTextOk' },
      live_mode_toggle = 'enable',
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
