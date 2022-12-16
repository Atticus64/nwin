-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- Themes
  use 'rose-pine/neovim'

  use { 'folke/tokyonight.nvim' }

  use { 'EdenEast/nightfox.nvim' }  

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Tresitter
  use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})


  -- harpoon
  use ('ThePrimeagen/harpoon')


  -- LSP
  

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- Hop vim
  use {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
          -- you can configure Hop the way you like here; see :h hop-config
          require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
      end
  }

  -- Comment
  use "terrortylor/nvim-comment"


  use { 'alexghergh/nvim-tmux-navigation', config = function()
      require'nvim-tmux-navigation'.setup {
          disable_when_zoomed = true, -- defaults to false
          keybindings = {
              left = "<C-h>",
              down = "<C-j>",
              up = "<C-k>",
              right = "<C-l>",
              last_active = "<C-\\>",
              next = "<C-Space>",
          }
      }
  end}

end)
