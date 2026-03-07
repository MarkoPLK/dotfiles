vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Highlight yanked text',
  pattern = '*',
  callback = function()
    vim.hl.on_yank({
      higroup = 'IncSearch',  -- highlight group (e.g., 'Visual', 'IncSearch')
      timeout = 100,         -- timeout in ms before highlight is cleared
    })
  end,
})

-- vim -b : edit binary using xxd-format!
local format_xxd_group = vim.api.nvim_create_augroup("Binary-xxd", { clear = true })
vim.api.nvim_create_autocmd('BufReadPre', {
        group = format_xxd_group,
        pattern = "*.bin",
        callback = function()
                vim.opt.binary = true
        end,
})

vim.api.nvim_create_autocmd('BufReadPost', {
        group = format_xxd_group,
        pattern = "*.bin",
        callback = function()
                if vim.opt.binary then
                        vim.cmd("silent %%!xxd -c 32")
                        vim.bo.filetype = "xxd"
                        vim.cmd("redraw")
                end
        end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
        group = format_xxd_group,
        pattern = "*.bin",
        callback = function()
                if vim.opt.binary then
                        vim.b._bin_view = vim.fn.winsaveview()
                        vim.cmd("silent %%!xxd -r -c 32")
                end
        end,
})

vim.api.nvim_create_autocmd('BufWritePost', {
        group = format_xxd_group,
        pattern = "*.bin",
        callback = function()
                if vim.opt.binary then
                        vim.cmd("silent %%!xxd -c 32")
                        vim.opt.modified = false
                        if vim.b._bin_view then
                                vim.fn.winrestview(vim.b._bin_view)
                        end
                        vim.cmd("redraw")
                end
        end,
})

-- Autocompile Latex
vim.api.nvim_create_augroup('LaTeXCompile', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = "*.tex",
    command = "VimtexCompile",
    group = "LaTeXCompile",
})
