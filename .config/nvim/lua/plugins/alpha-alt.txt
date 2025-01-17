return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⠃⠀⠀⠀⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣄⠀⠀⠀⢀⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣷⣶⣶⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⣴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⢀⣴⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣿⣿⣿⣿⢻⣿⣿⣿⠋⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⢸⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢻⣿⣿⣿⠈⠻⣿⡏⠀⠀⠀⢿⣿⣿⣿⡿⣿⣿⣿⣿⣟⣁⠀⢀⠏⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠌⠻⣿⣿⣆⠀⠀⠁⠀⠀⠀⠀⠉⠉⠉⢀⣿⣿⣿⣿⣿⠏⠀⠊⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠞⠋⣸⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
      [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find File", ":Telescope find_files <CR>"),
      dashboard.button("e", " " .. " New File", ":ene <BAR> startinsert <CR>"),
      dashboard.button("rf", " " .. " Recently Used Files", ":Telescope oldfiles<CR>"),
      dashboard.button("gr", "󰈬 " .. " Find Word", ":Telescope live_grep<CR>"),
      dashboard.button("td", " " .. " Todo", ":TodoTelescope<CR>"),
      dashboard.button("q", "󰅚 " .. " Quit Neovim", ":qa<CR>"),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl_shortcut = "Include"
    end
    dashboard.section.header.opts.hl = "Include"
    dashboard.section.footer.opts.hl = "Type"
    return dashboard
  end,
  config = function(_, dashboard)
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        once = true,
        pattern = "AlphaReady",
        callback = function()
          require("lazy").show()
        end,
      })
    end
    require("alpha").setup(dashboard.opts)
    vim.api.nvim_create_autocmd("User", {
      once = true,
      pattern = "LazyVimStarted",
      callback = function()
        local plugins = require("lazy").stats().count
        local v = vim.version()
        dashboard.section.footer.val = " " .. v.major .. "." .. v.minor .. "." .. v.patch .. "  󰂖 " .. plugins
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
