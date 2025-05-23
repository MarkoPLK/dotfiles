﻿-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {
            -- sumiInk3 = "#111313",
            sumiInk3 = "#000000",
            -- sumiInk3 = "#1d1f21",
            -- waveBlue1 = "#363646",
            -- waveBlue2 = "#54546D",
        },
        theme = { 
            wave = {}, 
            lotus = {},
            dragon = {},
            all = {
                ui = {
                    bg_gutter = "none",
                },
                float = {
                    bg = "none"
                }
            } 
        },
    },
    overrides = function(colors) -- add/modify highlights
        local theme = colors.theme
        return {
            -- TelescopeTitle = { fg = theme.ui.special, bold = true },
            -- TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            -- TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            -- TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            -- TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            -- TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            -- TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim},
        }
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background =
    {                            -- map the value of 'background' option to a theme
        dark = "wave",           -- try "dragon" !
        light = "lotus",
    }
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
