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
  'nvim-lua/plenary.nvim',

  {'nvim-tree/nvim-web-devicons',lazy = false,priority = 1000},

 --  { "catppuccin/nvim", as = "catppuccin" }
  {'AlexvZyl/nordic.nvim'},
  -- {'rmehri01/onenord.nvim',lazy = false, priority = 1500},
  {'sainnhe/everforest',lazy = false, priority = 1500 },

 -- coc.nvim
  {'neoclide/coc.nvim', branch = 'release'},
 -- coc-snipet用
  {'mlaursen/vim-react-snippets'},

 -- Statusline
  {'nvim-lualine/lualine.nvim'},

 -- Buffer Control
  {'romgrk/barbar.nvim',dependencies = { 'nvim-web-devicons' }},

  {'lambdalisue/fern.vim',lazy = false, priority = 1000 }, --遅延読み込みをオフにして優先度を上げないとnvim-web-deviconsが読み込めない
  {'lambdalisue/glyph-palette.vim'},
  {'TheLeoP/fern-renderer-web-devicons.nvim',dependencies = {'nvim-web-devicons'}}, 


 --Syntax Highlight
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  {'JoosepAlviste/nvim-ts-context-commentstring'}, -- context-comment with treesitter
  {"yioneko/nvim-yati", version="*"},

  {'digitaltoad/vim-pug'}, -- for .jade,.pug file syntax

 -- Telescope
  {'nvim-telescope/telescope.nvim' },
  {'fannheyward/telescope-coc.nvim'},
  {
   "nvim-telescope/telescope-frecency.nvim",
  },
  {
    "fdschmidt93/telescope-egrepify.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },

 -- Coding Support
  {'windwp/nvim-autopairs'},
  {'windwp/nvim-ts-autotag'},
 --  'haringsrob/nvim_context_vt'

  -- {'petertriho/nvim-scrollbar'}, -- オンにすると巨大なファイルでかなり重くなる
  {'kevinhwang91/nvim-hlslens'},
  {'haya14busa/vim-asterisk'},
  
  {'lukas-reineke/indent-blankline.nvim', main = "ibl", opts = {} },
  {'numToStr/Comment.nvim' },
  {'norcalli/nvim-colorizer.lua' },
  {"kylechui/nvim-surround"},

  {'simeji/winresizer' },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
  },

 -- Rust Integration
 -- use 'rust-lang/rust.vim'

 -- For using Prettier
  {'prettier/vim-prettier'},

 -- Git Integration
  {'tpope/vim-fugitive'},
  {'lewis6991/gitsigns.nvim'},
 
  {'github/copilot.vim'},

 -- terminal Integration
  { 'akinsho/toggleterm.nvim'},

})

