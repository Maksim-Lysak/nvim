local use = require('packer').use 
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'navarasu/onedark.nvim'
  use { "EdenEast/nightfox.nvim", tag = "v1.0.0" }
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use "terrortylor/nvim-comment"
  use "tpope/vim-surround"
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'nvim-lua/popup.nvim'
  use "williamboman/nvim-lsp-installer"
  use 'nvim-lua/plenary.nvim'
  use { 'akinsho/bufferline.nvim', tag = "v2.*"}
  use {
    'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate'
  }
  use {
    'phaazon/hop.nvim',
    branch = 'v1',
    config = function()
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
end)


