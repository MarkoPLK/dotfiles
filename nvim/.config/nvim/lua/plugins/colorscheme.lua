return {
    {
        "zenbones-theme/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending
        -- the colorscheme If you don't want to install lush, make sure to set
        -- g:zenbones_compat = 1 In Vim, compat mode is turned on as Lush only
        -- works in Neovim.
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- vim.g.zenbones_darken_comments = 45
            vim.cmd.colorscheme('zenwritten')
        end,
    },

    {
        "rebelot/kanagawa.nvim",
        lazy = true,
        opts = {
            compile = false,      -- enable compiling the colorscheme
            undercurl = true,     -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false,       -- do not set background color
            dimInactive = false,       -- dim inactive window `:h hl-NormalNC`
            terminalColors = true,     -- define vim.g.terminal_color_{0,17}
            colors = {                 -- add/modify theme and palette colors
                palette = {},
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
            theme = "wave",          -- Load "wave" theme when 'background' option is not set
            background = {           -- map the value of 'background' option to a theme
                dark = "dragon",     -- try "dragon" !
                light = "lotus",
            },
            overrides = function(colors)
                local theme = colors.theme
                return {
                    -- Popup menu --
                    Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
                    PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
                    PmenuSbar = { bg = theme.ui.bg_m1 },
                    PmenuThumb = { bg = theme.ui.bg_p2 },

                    PmenuKind = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
                    PmenuKindSel = { fg = "NONE", bg = theme.ui.bg_p2 },

                    PmenuExtra = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },
                    PmenuExtraSel = { fg = "NONE", bg = theme.ui.bg_p2 },

                    -- Cursor line --
                    CursorLine = { fg = "NONE", bg = theme.ui.bg_p1 },
                }
            end,
        },
        config = function(_, opts)
            require("kanagawa").setup(opts)
            vim.cmd([[colorscheme kanagawa-dragon]])
        end,
    },


    -- zazen vim color scheme (a personalized version of zenesque) (really good gray scale and background change for lit)
    {
        "zaki/zazen",
        lazy = true,
    },

    -- A minimal vim colorscheme, inspired by the work of Dieter Rams. (too white)
    {
        "stefanvanburen/rams.vim",
        lazy = true,
    },

    -- A dark monochrome grey colorscheme for vim with a simple accent color.
    {
        "aditya-azad/candle-grey",
        lazy = true,
    },

    -- Adds red words
    {
        "ntk148v/komau.vim",
        lazy = true,
    },

    -- Inspired by SpaceCamp
    {
        "pbrisbin/vim-colors-off",
        lazy = true,
    },

    {
        "jaredgorski/fogbell.vim",
        lazy = true,
    },

    {
        "jaredgorski/Mies.vim",
        lazy = true,
    },
}
