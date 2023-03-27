-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  use ( 'joshdick/onedark.vim' )

  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use( 'nvim-treesitter/playground' )
  use( 'theprimeagen/harpoon' )
  use( 'mbbill/undotree' )
  use( 'tpope/vim-fugitive' ) 
  use( 'folke/tokyonight.nvim' )-- theme
  use( 'deoplete-plugins/deoplete-jedi' )-- probably auto complete
  use( 'itchyny/lightline.vim' )-- for that bar on bottom
  use( 'arcticicestudio/nord-vim' )-- theme
  use( 'karb94/neoscroll.nvim' )-- smooth scroll
  use( 'preservim/nerdcommenter' )-- comment
  use( 'Yggdroot/indentLine' )-- indent line :)
  use( 'dense-analysis/ale' )-- lint engine/code linter 
  --TODO: great looking isn't it?
  --PERF: love this plugin
  --HACK: 
  --NOTE:
  --FIX:
  --WARNING:
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use({
    'NTBBloodbath/doom-one.nvim',
    setup = function()
        -- Add color to cursor
		vim.g.doom_one_cursor_coloring = false
		-- Set :terminal colors
		vim.g.doom_one_terminal_colors = true
		-- Enable italic comments
		vim.g.doom_one_italic_comments = false
		-- Enable TS support
		vim.g.doom_one_enable_treesitter = true
		-- Color whole diagnostic text or only underline
        vim.g.doom_one_diagnostics_text_color = false
		-- Enable transparent background
		vim.g.doom_one_transparent_background = false

        -- Pumblend transparency
		vim.g.doom_one_pumblend_enable = false
		vim.g.doom_one_pumblend_transparency = 20

        -- Plugins integration
		vim.g.doom_one_plugin_neorg = true
		vim.g.doom_one_plugin_barbar = false
		vim.g.doom_one_plugin_telescope = false
		vim.g.doom_one_plugin_neogit = true
		vim.g.doom_one_plugin_nvim_tree = true
		vim.g.doom_one_plugin_dashboard = true
		vim.g.doom_one_plugin_startify = true
		vim.g.doom_one_plugin_whichkey = true
		vim.g.doom_one_plugin_indent_blankline = true
		vim.g.doom_one_plugin_vim_illuminate = true
		vim.g.doom_one_plugin_lspsaga = false
	end,
	config = function()
        vim.cmd("colorscheme doom-one")
    end,
    })
--  use( 'preservim/nerdtree' )-- nerdtree on side
--  use( 'jiangmiao/auto-pairs' )

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
		  -- Snippet Collection (Optional)
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- autopairs 
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use("eandrju/cellular-automaton.nvim")

end)
