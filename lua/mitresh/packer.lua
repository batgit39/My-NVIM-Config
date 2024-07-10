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
  use( 'nvim-tree/nvim-web-devicons')
  use( 'folke/tokyonight.nvim' )-- theme
  use( 'EdenEast/nightfox.nvim' )
  use( 'catppuccin/nvim' )
  use( 'preservim/nerdtree' )
  use( 'luisiacc/gruvbox-baby' )
  use( 'deoplete-plugins/deoplete-jedi' )-- probably auto complete
  use( 'RRethy/vim-illuminate' )-- Highlight similar words 
  use( 'feline-nvim/feline.nvim' )-- for that bar on bottom
  use( 'arcticicestudio/nord-vim' )-- theme
  use( 'morhetz/gruvbox' )-- theme
  use( 'karb94/neoscroll.nvim' )-- smooth scroll
  use( 'preservim/nerdcommenter' )-- comment
  use( 'Yggdroot/indentLine' )-- indent line :)
  use { "scottmckendry/cyberdream.nvim" }
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
      }
    end
  }

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
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
    }

end)
