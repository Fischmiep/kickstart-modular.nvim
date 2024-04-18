-- File: lua/custom/plugins/bufferline.lua

return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        themable = true,
        numbers = function(opts)
          return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
        end,
        close_command = 'bdelete! %d',
        right_mouse_command = 'bdelete! %d',
        left_mouse_command = 'buffer %d',
        middle_mouse_command = nil,
        indicator = {
          style = 'underline',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 18,
        max_prefix_length = 15,
        truncate_names = true,
        tab_size = 18,
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          if context.buffer:current() or count == 0 then
            return ''
          end
          local error = ''
          local warning = ''
          local icon = ''
          for e, n in pairs(diagnostics_dict) do
            if e == 'error' then
              icon = level:match 'error' and '󰅚' or '󰀪'
              error = error .. ' ' .. icon .. ' ' .. n
            else
              if e == 'warning' then
                icon = '󰀪'
                warning = warning .. ' ' .. icon .. ' ' .. n
              end
            end
          end
          return error .. warning
        end,
        offsets = {
          {
            filetype = 'Mundo',
            text = 'Undo Tree',
            text_align = 'center',
            separator = true,
          },
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            text_align = 'center',
            separator = true,
          },
          {
            filetype = 'trouble',
            text = 'Symbols',
            text_align = 'center',
            separator = true,
          },
        },
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_prefix = true,
        duplicates_across_groups = true,
        persist_buffer_sort = true,
        move_wraps_at_ends = false,
        separator_style = 'thick',
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = 'insert_after_current',
      },
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et
