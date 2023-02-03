vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- theme
    use 'rmehri01/onenord.nvim'

    -- tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons' -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- bufferline
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- lualine
    use {'nvim-lualine/lualine.nvim'}

    -- treesitter 代码高亮
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = 'mrjones2014/nvim-ts-rainbow',
        run = ':TSUpdate'
    }

    -- lsp
    use {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig"}
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer' -- { name = 'buffer' },
    use 'hrsh7th/cmp-path' -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline' -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
    -- lspkind
    use 'onsails/lspkind-nvim'

    -- git
    -- 显示gitblame
    use 'f-person/git-blame.nvim'

    -- -- 自动配对
    -- use 'echasnovski/mini.nvim'

    -- 注释
    use "terrortylor/nvim-comment"

    -- 文件查找
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use('numToStr/prettierrc.nvim')
end)
