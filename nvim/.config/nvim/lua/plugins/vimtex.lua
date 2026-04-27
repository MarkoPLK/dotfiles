return {
      "lervag/vimtex",
      lazy = false,     -- we don't want to lazy load VimTeX
      init = function()
          vim.g.vimtex_view_method = "zathura"
          vim.g.vimtex_compiler_method = 'latexmk'
          vim.g.vimtex_quickfix_mode = 2
          vim.g.vimtex_quickfix_autoclose_after_keystrokes = 1
      end,
}
