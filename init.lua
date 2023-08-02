-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- basic setting
require('base')

--Plugin list
require("lazy").setup({

 -- Common Plugin(Lua)

  'antoinemadec/FixCursorHold.nvim',
  'nvim-lua/plenary.nvim',
  'folke/lsp-colors.nvim',
  'nvim-tree/nvim-web-devicons',
  -- {'tjdevries/colorbuddy.nvim',lazy = false, priority = 1500},

 -- colorscheme
 --  { "catppuccin/nvim", as = "catppuccin" }
  -- 'ishan9299/nvim-solarized-lua',
  -- {'svrana/neosolarized.nvim',lazy = false},
 --  'rose-pine/neovim'
  -- 'AlexvZyl/nordic.nvim',
 --  "EdenEast/nightfox.nvim"

  {'rmehri01/onenord.nvim',lazy = false, priority = 1500},
  {'sainnhe/everforest',lazy = false, priority = 1500 },

 -- coc.nvim
  {'neoclide/coc.nvim', branch = 'release'},

 -- Statusline
  {'nvim-lualine/lualine.nvim'},

 -- Buffer Control
  -- 'zefei/vim-wintabs',
  -- 'zefei/vim-wintabs-powerline',
  {'romgrk/barbar.nvim',dependencies = { 'nvim-web-devicons' }},

 -- Fern.vim
 -- use 'lambdalisue/nerdfont.vim'
 -- use 'lambdalisue/fern-renderer-nerdfont.vim' -- これでレンダリングするとアイコンのサイズが変？

  {'lambdalisue/fern.vim',lazy = false, priority = 1000 }, --遅延読み込みをオフにして優先度を上げないとnvim-web-deviconsが読み込めない
  'lambdalisue/glyph-palette.vim',
  {'TheLeoP/fern-renderer-web-devicons.nvim',dependencies = {'nvim-web-devicons'}}, 

 --Syntax Highlight
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'JoosepAlviste/nvim-ts-context-commentstring'}, -- context-comment with treesitter

  {'digitaltoad/vim-pug'}, -- for .jade,.pug file syntax

 -- Telescope
  {'nvim-telescope/telescope.nvim' },
  {'fannheyward/telescope-coc.nvim'},
  {
   "nvim-telescope/telescope-frecency.nvim",
   dependencies = {"kkharji/sqlite.lua"}
  },

 -- Coding Support
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
 --  'haringsrob/nvim_context_vt'

  {'petertriho/nvim-scrollbar'},
 --  {
 --   "kevinhwang91/nvim-hlslens",
 -- } 有効にすると異様に重くなる…

  {'haya14busa/vim-asterisk'},
  {'lukas-reineke/indent-blankline.nvim' },
  {'numToStr/Comment.nvim' },
  {'norcalli/nvim-colorizer.lua' },
  {"kylechui/nvim-surround"},

  {'simeji/winresizer' },

{ 
  "iamcco/markdown-preview.nvim",
  build = "cd app && npm install",
  setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
  ft = { "markdown" }, 
},

 -- Rust Integration
 -- use 'rust-lang/rust.vim'

 -- For using Prettier
  {'prettier/vim-prettier'},

 -- Git Integration
 -- use 'dinhhuy258/git.nvim'
  {'tpope/vim-fugitive'},
  {'lewis6991/gitsigns.nvim'},
 --  { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
 
 --  'github/copilot.vim'

 -- terminal Integration
  { 'akinsho/toggleterm.nvim'},


})

