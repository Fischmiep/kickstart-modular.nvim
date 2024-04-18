-- File: lua/custom/plugins/usage-tracker.lua

return {
  'gaborvecsei/usage-tracker.nvim',
  config = function()
    require('usage-tracker').setup {
      keep_eventlog_days = 14,
      cleanup_freq_days = 7,
      event_wait_period_in_sec = 5,
      inactivity_threshold_in_min = 5,
      inactivity_check_freq_in_sec = 5,
      verbose = 0,
      telemetry_endpoint = '',
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
