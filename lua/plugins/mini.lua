return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    -- Better Around/Inside textobjects
    --
    -- Examples:
    --  - va)  - [V]isually select [A]round [)]paren
    --  - yinq - [Y]ank [I]nside [N]ext [']quote
    --  - ci'  - [C]hange [I]nside [']quote
    require('mini.ai').setup { n_lines = 500 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    --
    -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
    -- - sd'   - [S]urround [D]elete [']quotes
    -- - sr)'  - [S]urround [R]eplace [)] [']
    require('mini.surround').setup {
      custom_surroundings = {
        ['('] = { input = { '%b()', '^.().*().$' }, output = { left = '(', right = ')' } },
        ['['] = { input = { '%b[]', '^.().*().$' }, output = { left = '[', right = ']' } },
        ['{'] = { input = { '%b{}', '^.().*().$' }, output = { left = '{', right = '}' } },
        ['<'] = { input = { '%b<>', '^.().*().$' }, output = { left = '<', right = '>' } },
      },
    }

    require('mini.pairs').setup()
    require('mini.move').setup()

    -- MiniFiles: A file explorer that doesn't suck
    require('mini.files').setup {
      mappings = {
        synchronize = '<CR>',
        go_in_plus = 'l',
      },
      windows = {
        preview = true,
      },
    }
    vim.keymap.set('n', '<C-e>', function()
      MiniFiles.open(vim.api.nvim_buf_get_name(0))
    end, { desc = 'Open MiniFiles' })

    local map_split = function(buf_id, lhs, direction)
      local rhs = function()
        -- Make new window and set it as target
        local new_target_window
        vim.api.nvim_win_call(MiniFiles.get_target_window(), function()
          vim.cmd(direction .. ' split')
          new_target_window = vim.api.nvim_get_current_win()
        end)

        MiniFiles.set_target_window(new_target_window)
      end

      -- Adding `desc` will result into `show_help` entries
      local desc = 'Split ' .. direction
      vim.keymap.set('n', lhs, rhs, { buffer = buf_id, desc = desc })
    end

    vim.api.nvim_create_autocmd('User', {
      pattern = 'MiniFilesBufferCreate',
      callback = function(args)
        local buf_id = args.data.buf_id
        -- Tweak keys to your liking
        map_split(buf_id, 'gs', 'belowright horizontal')
        map_split(buf_id, 'gv', 'belowright vertical')
      end,
    })
  end,
}
