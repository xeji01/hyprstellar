return {
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module 'ibl'
    ---@type ibl.config

    config = function()
      local highlight = {
        'Red',
        'Yellow',
        'Blue',
        'Orange',
        'Green',
        'Violet',
        'Cyan',
      }

      local hooks = require('ibl.hooks')
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'Red', { fg = '#C4746E' })
        vim.api.nvim_set_hl(0, 'Yellow', { fg = '#C4B28A' })
        vim.api.nvim_set_hl(0, 'Blue', { fg = '#8BA4B0' })
        vim.api.nvim_set_hl(0, 'Orange', { fg = '#B6927B' })
        vim.api.nvim_set_hl(0, 'Green', { fg = '#87A987' })
        vim.api.nvim_set_hl(0, 'Violet', { fg = '#8992A7' })
        vim.api.nvim_set_hl(0, 'Cyan', { fg = '#8EA4A2' })
      end)

      require('ibl').setup({
        exclude = { filetypes = {'dashboard'} },
        indent = { highlight = highlight },
      })
    end,
  },
}
