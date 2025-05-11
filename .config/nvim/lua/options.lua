vim.opt.encoding = "utf-8"            -- set encoding
vim.opt.nu = true                     -- enable line numbers
vim.opt.relativenumber = true         -- relative line numbers

vim.opt.ignorecase = true             -- ignore case when searching
vim.opt.smartcase = true              -- unless capital letter in search

vim.opt.termguicolors = true          -- enable true color support

vim.cmd("colorscheme rose-pine-moon") -- set color theme
require("bufferline").setup {}        -- bufferline

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true   -- convert tabs to spaces
vim.opt.smartindent = true -- smart auto indenting
vim.opt.autoindent = true  -- auto indentation

require("notify").setup({ background_colour = "#FFFFFF" })
