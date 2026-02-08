require("config.remap")
require("config.set")
require("config.lazy")

vim.lsp.enable("lua_ls")
vim.lsp.enable('clangd')
vim.lsp.enable('pyright')

vim.api.nvim_create_autocmd("User", {
  pattern = "TSUpdate",
  callback = function()
    require("nvim-treesitter.parsers").norg = {
      install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg",
        files = { "src/parser.c", "src/scanner.cc" },
        build_cmd = "yarn gen",
        cxx_standard = "c++14",
        revision = "d89d95af13d409f30a6c7676387bde311ec4a2c8",
      },
      maintainers = { "@JoeyGrajciar", "@vhyrro" },
      tier = 2,
      generate_requires_npm = true,
    }
  end,
})
