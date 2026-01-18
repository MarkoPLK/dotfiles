local group = vim.api.nvim_create_augroup("ColorschemeOverride", { clear = true })

-- vim.api.nvim_create_autocmd("ColorScheme",  {
--         group = group,
--         pattern = "zenbones",
--         callback = function()
--                 vim.api.nvim_set_hl(0, "Added", { link = "GitGutterAdd" })
--                 vim.api.nvim_set_hl(0, "Changed", { link = "GitGutterChange" })
--                 vim.api.nvim_set_hl(0, "Removed", { link = "GitGutterDelete" })
--         end,
--
-- })

-- vim.cmd.colorscheme("zenesque")
-- vim.cmd.colorscheme("zenbones")
vim.cmd.colorscheme("zenwritten")
