return {

    {
        'uZer/pywal16.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("pywal16")
            local pywal16 = require('pywal16')

            pywal16.setup()
        end,
    },
}
