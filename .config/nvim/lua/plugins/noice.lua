return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      {
        'rcarriga/nvim-notify',
        opts = {
          render = 'wrapped-compact',
          stages = 'fade',
          timeout = 1000,
          top_down = false,
        },
      },
    },

    config = function()
      vim.api.nvim_set_hl(0, 'NoiceCmdlinePopupBorder', { fg = '#C5C9C5', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlineIconCmdline', { fg = '#C5C9C5', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlinePopupBorderSearch', { fg = '#B6927B', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlineIconSearch', { fg = '#B6927B', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlinePopupBorderHelp', { fg = '#87A987', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlineIconHelp', { fg = '#87A987', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlinePopupBorderFilter', { fg = '#C4746E', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlineIconFilter', { fg = '#C4746E', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlinePopupBorderInput', { fg = '#C4B28A', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlineIconInput', { fg = '#C4B28A', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlinePopupBorderLua', { fg = '#7E9CD8', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceCmdlineIconLua', { fg = '#7E9CD8', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceConfirm', { fg = '#8992A7', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceConfirmBorder', { fg = '#8992A7', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceFormatConfirm', { fg = '#8992A7', bg = 'NONE' })
      vim.api.nvim_set_hl(0, 'NoiceFormatConfirmDefault', { fg = '#8992A7', bg = 'NONE' })

      require('noice').setup({
        lsp = {
          override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true,
          },
        },

        presets = {
          bottom_search = false,
          command_palette = true,
          long_message_to_split = true,
          inc_rename = false,
          lsp_doc_border = false,
        },

        popupmenu = {
          enabled = true,
          backend = 'nui',
        },

        messages = {
          enabled = true,
          view = 'notify',
        },

        cmdline = {
          enabled = true,
          view = 'cmdline_popup',
          format = {
            cmdline = {
              title = ' cmdline ',
              pattern = '^:',
              icon = '',
              lang = 'vim',
            },

            filter = {
              title = ' filter ',
              pattern = '^:s*!',
              icon = '$',
              lang = 'bash',
            },

            help = {
              title = ' help ',
              pattern = '^:%s*he?l?p?%s+',
              icon = '󰋖',
            },

            input = {
              title = ' input ',
              view = 'cmdline_input',
              icon = '󰥻 ',
            },

            search_down = {
              title = ' search ',
              kind = 'search',
              pattern = '^/',
              icon = ' ',
              lang = 'regex',
            },

            search_up = {
              title = ' search ',
              kind = 'search',
              pattern = '^%?',
              icon = ' ',
              lang = 'regex',
            },

            lua = {
              title = ' lua ',
              pattern = '^:%s*lua%s+',
              icon = '',
            },

            -- does nothing
            confirm = {
              title = ' confirm '
            },
          },
        },

        health = {
          checker = true,
        },
      })
    end
  },
}
