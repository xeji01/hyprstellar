return {
    {
        'rachartier/tiny-inline-diagnostic.nvim',
        event = 'VeryLazy',
        priority = 1000,

        config = function()
            vim.diagnostic.config({ virtual_text = false })

            require('tiny-inline-diagnostic').setup({
                preset = 'modern',

                signs = {
                    left = '',
                    right = '',
                },

                options = {
                    multilines = {
                        enabled = true,
                        always_show = false,
                    },
                },
            })
        end
    },
}
