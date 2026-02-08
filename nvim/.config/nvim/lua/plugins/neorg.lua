return {
    {
        "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
        version = "*", -- Pin Neorg to the latest stable release
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup({
                load = {
                    ["core.defaults"] = {},
                    ["core.concealer"] = {},
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

    }
}
