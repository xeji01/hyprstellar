-- lua/plugins/rose-pine.lua
return {
    "rose-pine/neovim",
    config = function()
        require("rose-pine").setup({
            variant = "main",      -- auto, main, moon, or dawn
            dark_variant = "moon", -- main, moon, or dawn
            dim_inactive_windows = false,
            extend_background_behind_borders = true,

            enable = {
                terminal = true,
                legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                migrations = true,        -- Handle deprecated options automatically
            },

            styles = {
                bold = true,
                italic = true,
                transparency = true,
            },

            groups = {
                border = "muted",
                link = "iris",
                panel = "surface",

                error = "love",
                hint = "iris",
                info = "foam",
                note = "pine",
                todo = "rose",
                warn = "gold",

                git_add = "foam",
                git_change = "rose",
                git_delete = "love",
                git_dirty = "rose",
                git_ignore = "muted",
                git_merge = "iris",
                git_rename = "pine",
                git_stage = "iris",
                git_text = "rose",
                git_untracked = "subtle",

                h1 = "iris",
                h2 = "foam",
                h3 = "rose",
                h4 = "gold",
                h5 = "pine",
                h6 = "foam",
            },

            palette = {
                -- Override the builtin palette per variant
                moon = {
                    foam = '#c4a7e7',
                    gold = '#dcd7ba',
                },
            },

            -- NOTE: Highlight groups are extended (merged) by default. Disable this
            -- per group via `inherit = false`
            highlight_groups = {
                -- Comment = { fg = "foam" },
                -- StatusLine = { fg = "love", bg = "love", blend = 15 },
                -- VertSplit = { fg = "muted", bg = "muted" },
                -- Visual = { fg = "base", bg = "text", inherit = false },
            },

            before_highlight = function(group, highlight, palette)
                -- Disable all undercurls
                -- if highlight.undercurl then
                --     highlight.undercurl = false
                -- end
                --
                -- Change palette colour
                -- if highlight.fg == palette.pine then
                --     highlight.fg = palette.foam
                -- end
            end,
        })

        vim.cmd("colorscheme rose-pine-moon")
        -- vim.cmd("colorscheme rose-pine-main")
        -- vim.cmd("colorscheme rose-pine-moon")
        -- vim.cmd("colorscheme rose-pine-dawn")
    end
}
