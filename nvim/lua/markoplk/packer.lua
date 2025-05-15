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

  -- use ({
  --  'rose-pine/nvim',
  --  as = 'rose-pine',
  --  -- config = function()
  --  --  vim.cmd('colorscheme rose-pine')
  --  -- end
  --
  -- })

  -- Kanagawa theme
  use "rebelot/kanagawa.nvim"

  -- use 'navarasu/onedark.nvim'
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
  use('nvim-treesitter/nvim-treesitter-context')

  use('theprimeagen/harpoon')
  use('mbbill/undotree')

    use({'neovim/nvim-lspconfig'})
  -- use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  -- use({'hrsh7th/nvim-cmp'})
  -- use({'hrsh7th/cmp-nvim-lsp'})
  -- use({'williamboman/mason-lspconfig.nvim'})
    -- use({"williamboman/mason.nvim",
    --     config = function()
    --         require('mason').setup()
    --     end
    -- })

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
end)
