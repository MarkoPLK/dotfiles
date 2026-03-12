return {
    {
        "casedami/neomodern.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            -- 'default' default background
            -- 'alt' darker background
            -- 'transparent' background is not set
            bg = "default",

            theme = "hojicha", -- 'moon' | 'iceclimber' | 'gyokuro' | 'hojicha' | 'roseprime'

            gutter = {
                cursorline = false, -- highlight the cursorline in the gutter
                dark = false, -- highlight gutter darker than the Normal bg
            },

            diagnostics = {
                darker = true, -- use darker colors for diagnostics
                undercurl = true, -- use undercurl for diagnostics
                background = true, -- use a background color for diagnostics
            },

            -- override colors, see #Customization below
            overrides = {
                default = {},
                hlgroups = {}
            }
        },
        config = function(_, opts)
            require("neomodern").setup(opts)
            require("neomodern").load()
        end,
    },

    {
        "rebelot/kanagawa.nvim",
        lazy = false,
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

                    -- Visual --
                    Visual = { bg = theme.ui.bg_p2 },

                }
            end,
        },
        config = function(_, opts)
            require("kanagawa").setup(opts)
            -- vim.cmd([[colorscheme kanagawa-dragon]])
        end,
    },

    {
        "ribru17/bamboo.nvim",
        priority = 1000,
        lazy = false,
        opts = {
            style = 'vulgaris', -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
            toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
            toggle_style_list = { 'vulgaris', 'multiplex', 'light' }, -- List of styles to toggle between
            transparent = false, -- Show/hide background
            dim_inactive = false, -- Dim inactive windows/buffers
            term_colors = true, -- Change terminal color as per the selected theme style
            ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
            cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

            -- Change code style ---
            -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
            -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
            code_style = {
                comments = { italic = true },
                conditionals = { italic = true },
                keywords = {},
                functions = {},
                namespaces = { italic = true },
                parameters = { italic = true },
                strings = {},
                variables = {},
            },

            -- Lualine options --
            lualine = {
                transparent = false, -- lualine center bar transparency
            },

            -- Custom Highlights --
            colors = {}, -- Override default colors
            highlights = {}, -- Override highlight groups

            -- Plugins Config --
            diagnostics = {
                darker = false, -- darker colors for diagnostic
                undercurl = true, -- use undercurl instead of underline for diagnostics
                background = true, -- use background color for virtual text
            },
        },
        config = function(_, opts)
            require('bamboo').setup(opts)
        end,
    },

    {
        "aktersnurra/no-clown-fiesta.nvim",
    },

    {
        "zenbones-theme/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending
        -- the colorscheme If you don't want to install lush, make sure to set
        -- g:zenbones_compat = 1 In Vim, compat mode is turned on as Lush only
        -- works in Neovim.
        dependencies = "rktjmp/lush.nvim",
        lazy = true,
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
        "Lokaltog/vim-monotone"
    },
}
