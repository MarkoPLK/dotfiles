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
  use "airblade/vim-gitgutter"

  use "rktjmp/lush.nvim"

  -- Kanagawa theme
  use "rebelot/kanagawa.nvim"

  use { "mcchrish/zenbones.nvim",
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000}

  -- zazen vim color scheme (a personalized version of zenesque) (really good gray scale and background change for lit)
  use "zaki/zazen"

  -- A minimal vim colorscheme, inspired by the work of Dieter Rams. (too white)
  use "stefanvanburen/rams.vim"

  -- A dark monochrome grey colorscheme for vim with a simple accent color.
  use "aditya-azad/candle-grey"

  -- Adds red words
  use "ntk148v/komau.vim"

  -- Inspired by SpaceCamp
  use "pbrisbin/vim-colors-off"
  --
  -- use "jaredgorski/fogbell.vim"
  -- use "jaredgorski/Mies.vim"

end)
