return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')

  -- theme
  vim.cmd [[packadd packer.nvim]]
  use("folke/tokyonight.nvim")

  --#region 基础建设
  -- tree
  use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
  -- bufferline
  use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })

  -- lualine
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
  use("arkav/lualine-lsp-progress")

  -- telescope
  use({ 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } })

  -- dashboard
  use("glepnir/dashboard-nvim")

  -- project
  use("ahmedkhalf/project.nvim")

  -- 显示gitblame
  use 'f-person/git-blame.nvim'

  -- 自动配对
  use('echasnovski/mini.nvim')

  -- 注释
  use "terrortylor/nvim-comment"

  -- wilder 命令模式增强
  use {
    'gelguy/wilder.nvim',
  }

  -- neovim 透明
  use { 'xiyaowong/transparent.nvim' }
  --#region 语法配置
  -- treesitter 代码高亮
  use {
    'nvim-treesitter/nvim-treesitter',
    requires = 'mrjones2014/nvim-ts-rainbow',
    run = ':TSUpdate'
  }

  -- lsp
  use { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" }
  -- nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  use 'hrsh7th/cmp-path'     -- { name = 'path' }
  use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  use 'hrsh7th/nvim-cmp'
  -- vsnip
  use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
  use 'hrsh7th/vim-vsnip'
  use 'rafamadriz/friendly-snippets'
  -- lspkind
  use 'onsails/lspkind-nvim'
  --#endregion 语法配置
end)
