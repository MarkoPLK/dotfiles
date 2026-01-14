local group = vim.api.nvim_create_augroup("ColorschemeOverride", { clear = true })

-- vim.api.nvim_create_autocmd("ColorScheme",  {
--         group = group,
--         pattern = "*",
--         callback = function()
--                 vim.api.nvim_set_hl(0, "Added", { bg = nil, fg =  palette_retrobox.add })
--                 vim.api.nvim_set_hl(0, "Changed", { bg = nil, fg = palette_retrobox.change })
--                 vim.api.nvim_set_hl(0, "Removed", { bg = nil, fg = palette_retrobox.removed })
--         end,
--
-- })

-- vim.cmd.colorscheme("dragonGreen")
vim.cmd.colorscheme("zenesque")
-- vim.cmd("PhoenixGreen")
