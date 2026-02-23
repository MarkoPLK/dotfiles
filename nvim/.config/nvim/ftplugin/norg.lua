vim.opt_local.conceallevel = 2
vim.opt_local.concealcursor = "nc"
vim.opt_local.colorcolumn = "0"
vim.opt_local.textwidth = 100

vim.keymap.set("i", "<C-CR>", "<Plug>(neorg.itero.next-iteration)", { buffer = true })

vim.treesitter.start()
