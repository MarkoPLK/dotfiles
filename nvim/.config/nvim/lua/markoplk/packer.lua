-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { 'echasnovski/mini.nvim', version = '*' }
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  use('nvim-treesitter/nvim-treesitter-context')

  use('theprimeagen/harpoon')
  use('mbbill/undotree')

  use({'neovim/nvim-lspconfig'})

  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })
  use({
      "lervag/vimtex",
      lazy = false,     -- we don't want to lazy load VimTeX
  })

  use{'tpope/vim-fugitive'}

  -- Kanagawa theme
  use "rebelot/kanagawa.nvim"
  -- Attractive colors
  use "jaredgorski/SpaceCamp"
  -- Pure black and white
  use "huyvohcmc/atlas.vim"
  -- Monochrome with light dark blue strings
  use "fxn/vim-monochrome"
  use "widatama/vim-phoenix"
  use "ryanpcmcquen/true-monochrome_vim"

end)
