vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)

  use 'wbthomason/packer.nvim'

  use { 'sigmasd/deno-nvim' }

  use {
    'numToStr/Navigator.nvim',
    config = function()
        require('Navigator').setup()
    end
  }

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193) 
  }

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        require('lspsaga').setup({})
    end,
  })

  use { 'Atticus64/infinity_train.nvim' }
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


end)
