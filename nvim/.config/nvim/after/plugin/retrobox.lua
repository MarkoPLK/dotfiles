local group = vim.api.nvim_create_augroup("MyRetroboxOverride", { clear = true })

local palette_retrobox = {
        add    = "#b8bb26",
        change = "#fabd2f",
        removed = "#fb4934",
}

local palette_habamax = {
        add    = "#5fd75f",
        change = "#ffaf5f",
        removed = "#d75f5f",
}

vim.api.nvim_create_autocmd("ColorScheme",  {
        group = group,
        pattern = "retrobox",
        callback = function()
                vim.api.nvim_set_hl(0, "Added", { bg = nil, fg =  palette_retrobox.add })
                vim.api.nvim_set_hl(0, "Changed", { bg = nil, fg = palette_retrobox.change })
                vim.api.nvim_set_hl(0, "Removed", { bg = nil, fg = palette_retrobox.removed })
        end,

})

vim.cmd.colorscheme("retrobox")
