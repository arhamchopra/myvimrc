--[[ plug.lua ]]

return require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Packer package manager
    -- use "rebelot/kanagawa.nvim"
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
--     use 'xiyaowong/nvim-transparent' -- enable transparency
    use 'simrat39/symbols-outline.nvim' -- enable symbols tab
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' } -- good folding
    use "max397574/better-escape.nvim" -- faster jj / kshadowk
    use 'williamboman/mason-lspconfig.nvim' -- closes gaps with mason

    use { "kabouzeid/nvim-jellybeans", requires = "rktjmp/lush.nvim" } -- colorscheme
    use {'kyazdani42/nvim-web-devicons'}
    use { "nvim-neo-tree/neo-tree.nvim",
          branch = "v2.x",
          requires = { "nvim-lua/plenary.nvim",
                       "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                       "MunifTanjim/nui.nvim",
                     }
        }

    use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }

    use 'lewis6991/impatient.nvim' -- Makes neovim faster

    use 'tpope/vim-surround' -- Add "", '', (),

    use 'onsails/lspkind.nvim' -- shows icons in cmp

    use 'lukas-reineke/headlines.nvim' -- highlights headlines for markdown, other txt files

    use 'j-hui/fidget.nvim' -- sho status of nvim-lsp progress

    use 'L3MON4D3/LuaSnip' -- snippets for completion
    use 'saadparwaiz1/cmp_luasnip' -- snippets for completion'
    use { 'nvimdev/dashboard-nvim', event = 'VimEnter',
          config = function() require('dashboard').setup { } end,
          requires = {'nvim-tree/nvim-web-devicons'}
        }

    use 'RRethy/vim-illuminate' -- Highlight other uses of word under cursor
    use 'numToStr/Comment.nvim' -- Enable comments
    use 'folke/trouble.nvim' -- Summarizes issues
    use 'folke/todo-comments.nvim' -- Todo comments

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' } -- Make telescope faster
    use 'nvim-telescope/telescope.nvim' -- Fuzzy finder
    use 'nvim-telescope/telescope-media-files.nvim' -- image files preview in telescope
    use {'BurntSushi/ripgrep'} -- Telescope grep
    use {'sharkdp/fd'} -- Finder
    use {'neovim/nvim-lspconfig'} -- Collection of common configurations for the Nvim LSP client

    use {'https://gitlab.com/yorickpeterse/nvim-pqf.git'}
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use {'https://git.sr.ht/~marcc/BufferBrowser'}
    use {
        'ojroques/nvim-lspfuzzy',
        requires = {
            {'junegunn/fzf'},
            {'junegunn/fzf.vim'},  -- to enable preview (optional)
        },
    }
    use 'hrsh7th/nvim-cmp' -- Completion framework

    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp' -- LSP completion source for nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip' -- Snippet completion source for nvim-cmp
    use 'hrsh7th/cmp-path' -- Useful completion sources
    use 'hrsh7th/cmp-buffer' -- Useful completion sources
    use 'simrat39/rust-tools.nvim' -- rust-analyzer hints and more!
    use "ranjithshegde/ccls.nvim"
    use 'saecki/crates.nvim' -- Help managing crates dependencies
    use 'hrsh7th/vim-vsnip' -- Snippet engine
    use 'nvim-lua/popup.nvim' -- Poup for telescope
    use 'nvim-treesitter/nvim-treesitter' -- better syntax
    use 'm-demare/hlargs.nvim' -- Highlight argument definitions and usages
    use 'nvim-lua/plenary.nvim' -- Collection of Lua functions
    use 'williamboman/mason.nvim' -- Manage LSPs and DAPs
    use 'puremourning/vimspector' -- Debugger
    use 'mfussenegger/nvim-dap' -- Debugger
    use "stevearc/dressing.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use({
        "ziontee113/icon-picker.nvim",
        config = function()
            require("icon-picker").setup({
                disable_legacy_commands = true
            })
        end,
    })
end)

