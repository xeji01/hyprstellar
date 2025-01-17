return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup()
        local lualine = require('lualine')

	lualine.setup {
  	options = {
    	theme = 'pywal16-nvim',
	},
     }

    end,
}
