local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {}

lspconfig.clangd.setup {}
lspconfig.pyright.setup {}

-- Diagnostics mapping
vim.keymap.set('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

-- vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
-- vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
-- vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
-- vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
-- vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
-- vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
-- vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
-- vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
-- vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
-- vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

--
-- ['<C-p>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
-- ['<C-n>'] = cmp.mapping.select_next_item({behavior = 'select'}),
--
-- -- `Enter` key to confirm completion
-- ['<CR>'] = cmp.mapping.confirm({select = true}),
--
-- -- Ctrl+Space to trigger completion menu
-- ['<C-Space>'] = cmp.mapping.complete(),
--
-- -- Navigate between snippet placeholder
-- ['<C-f>'] = cmp_action.vim_snippet_jump_forward(),
-- ['<C-b>'] = cmp_action.vim_snippet_jump_backward(),
--
-- -- Scroll up and down in the completion documentation
-- ['<C-u>'] = cmp.mapping.scroll_docs(-4),
-- ['<C-d>'] = cmp.mapping.scroll_docs(4),
