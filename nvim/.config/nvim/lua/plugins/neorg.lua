return {
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = "*", -- Pin Neorg to the latest stable release
        dependencies = { "nvim-lua/plenary.nvim" },
        ft = "norg", -- Lazy load on filetype
        config = function()
            require("neorg").setup({
                load = {
                    ["core.defaults"] = {},
                    ["core.itero"] = {},
                    ["core.summary"] = {
                        config = {
                            strategy = "by_path"
                        }
                    },
                    ["core.looking-glass"] = {},
                    ["core.concealer"] = {},
                    ["core.keybinds"] = {
                        config = {
                            default_keybinds = true,
                        }
                    },
                    ["core.dirman"] = {
                        config = {
                            workspaces = {
                                notes = "~/notas",
                            },
                            default_workspace = "notes",
                        },
                    },
                },
            })
        end,
        keys = {
            { "<LocalLeader>i", "<cmd>Neorg index<CR>", "n", desc = "Go to neorg index workspace" },
            { "<LocalLeader>r", "<cmd>Neorg return<CR>", "n", desc = "Return from norg workspace" },
            { "<LocalLeader>q", "<cmd>Neorg toc qflist<CR>", "n", desc = "Norg table of contents quickfix list" },
        }

    }
}
