--Packer.nvim用のファイル

-- local status, packer = pcall(require, "packer")
-- if (not status) then
--   print("Packer is not installed")
--   return
-- end

-- vim.cmd [[packadd packer.nvim]]

-- packer.startup(function(use)

--   -- Plugin Manager
--   use 'wbthomason/packer.nvim'

--   -- Common Plugin(Lua)
--   use 'antoinemadec/FixCursorHold.nvim'
--   use 'nvim-lua/plenary.nvim'
--   -- use 'vim-jp/vimdoc-ja'

--   -- colorscheme
--   -- use { "catppuccin/nvim", as = "catppuccin" }
--   -- use 'ishan9299/nvim-solarized-lua'
--   -- use 'rose-pine/neovim'
--   -- use 'sainnhe/everforest'
--   -- use 'AlexvZyl/nordic.nvim'
--   use "EdenEast/nightfox.nvim"

--   use 'folke/lsp-colors.nvim'

--   -- dashboard
--   use {
--       'goolord/alpha-nvim',
--       requires = { 'nvim-tree/nvim-web-devicons' },
--       config = function ()
--           require'alpha'.setup(require'alpha.themes.startify'.config)
--       end
--   }
--   -- coc.nvim
--   use {'neoclide/coc.nvim', branch = 'release'}

--   -- Statusline
--   use 'nvim-lualine/lualine.nvim'

--   -- Buffer Control
--   -- use 'zefei/vim-wintabs'
--   -- use 'zefei/vim-wintabs-powerline'
--   use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

--   -- Fern.vim
--   use 'lambdalisue/fern.vim'
--   -- use 'lambdalisue/nerdfont.vim'
--   -- use 'lambdalisue/fern-renderer-nerdfont.vim' -- これでレンダリングするとアイコンのサイズが変？
--   use 'lambdalisue/glyph-palette.vim'
--   use 'TheLeoP/fern-renderer-web-devicons.nvim' 

--   use 'kyazdani42/nvim-web-devicons'

--   --Syntax Highlight
--   use {
--     'nvim-treesitter/nvim-treesitter',
--     run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
--   }
--   use 'JoosepAlviste/nvim-ts-context-commentstring' -- context-comment with treesitter
--   use 'digitaltoad/vim-pug' -- for .jade,.pug file syntax

--   -- Telescope
--   use 'nvim-telescope/telescope.nvim'
--   use {
--     "nvim-telescope/telescope-frecency.nvim",
--     requires = {"kkharji/sqlite.lua"}
--   }
--   use 'fannheyward/telescope-coc.nvim'

--   -- Coding Support
--   use 'windwp/nvim-autopairs'
--   use 'windwp/nvim-ts-autotag'
--   -- use 'haringsrob/nvim_context_vt'

--   use 'kevinhwang91/nvim-hlslens'
--   use 'haya14busa/vim-asterisk'

--   use 'lukas-reineke/indent-blankline.nvim'
--   use 'numToStr/Comment.nvim'

--   use 'norcalli/nvim-colorizer.lua'

--   use 'simeji/winresizer'

--   use({
--     "kylechui/nvim-surround",
--     tag = "*",
--   })

--   -- use({
--   --     "iamcco/markdown-preview.nvim",
--   --     run = function() vim.fn["mkdp#util#install"]() end,
--   -- })
--   -- Rust Integration
--   use 'rust-lang/rust.vim'

--   -- For using Prettier
--   use 'prettier/vim-prettier'

--   -- Git Integration
--   -- use 'dinhhuy258/git.nvim'
--   use 'tpope/vim-fugitive'
--   use 'lewis6991/gitsigns.nvim'
--   use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

--   -- terminal Integration
--   use {
--       "akinsho/toggleterm.nvim",
--       tag = '*',
--   }

-- end)
