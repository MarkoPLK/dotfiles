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
            }
        }
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
