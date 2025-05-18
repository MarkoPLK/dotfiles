vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.api.nvim_set_option("clipboard","unnamed")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = false

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Highlight yanked text',
  pattern = '*',
  callback = function()
    vim.hl.on_yank({
      higroup = 'IncSearch',  -- highlight group (e.g., 'Visual', 'IncSearch')
      timeout = 300,         -- timeout in ms before highlight is cleared
    })
  end,
})

-- VimTex
vim.cmd("filetype plugin indent on")
vim.cmd("syntax on")

-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
vim.g.vimtex_view_method = 'zathura'

-- Or with a generic interface:
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".
vim.g.vimtex_compiler_method = 'latexrun'

-- Most VimTeX mappings rely on localleader and this can be changed with the
-- following line. The default is usually fine and is the symbol "\".
vim.g.maplocalleader = ","

-- Autocompile
vim.api.nvim_create_augroup('LaTeXCompile', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = "*.tex",
    command = "VimtexCompile",
    group = "LaTeXCompile",
})
-- END VimTex
