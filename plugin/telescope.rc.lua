local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require('telescope.builtin')

telescope.setup({
  defaults = {
    preview = {
      -- 巨大なProjectで固まることがあるためtreesitterを無効に
      -- @refer https://github.com/nvim-telescope/telescope.nvim/issues/1379
   		treesitter = true,
   	},
    sorting_strategy = "ascending",
    -- layout_strategy = 'vertical',
    layout_config = { height = 0.9 },
    -- 画像類を検索対象に含めない(検索が重くなる)
    file_ignore_patterns = {
      "^.git/",
      "^node_modules/",
      "%.jpg",
      "%.jpeg",
      "%.png",
      "%.pdf",
      "%.gif",
      "%.svg",
      "%.avif",
      "%.gitkeep",
    },
    wrap_results = true, -- 検索結果を折り返す
  },
  extensions = {
    coc = {
      prefer_locations = false,   -- always use Telescope locations to preview definitions/declarations/implementations etc
    }, 
  --   file_browser = {
  --     -- theme = "dropdown",
  --     -- disables netrw and use telescope-file-browser in its place
  --     grouped = true,
  --     hijack_netrw = true,
  --     display_stat = false,
  --     git_status = false,
  --     git_ignore = false,
  -- },
  }
})

telescope.load_extension("frecency") --frecency search
telescope.load_extension("coc")      -- coc integration
-- telescope.load_extension("file_browser")

-- file search
vim.keymap.set('n', '<leader>f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)

-- -- Grep
vim.keymap.set('n', '<leader>r',
  function()
    builtin.live_grep({
      no_ignore = false,
      hidden = true
    })
  end)

-- buffer-fuzzy-find
vim.keymap.set('n', '<leader>v',
  function()
    builtin.current_buffer_fuzzy_find({
      no_ignore = false,
      hidden = true
    })
  end)

-- buffer-list
vim.keymap.set('n', '<leader>b',
  function()
    builtin.buffers({
      no_ignore = false,
      hidden = true
    })
  end)

-- git branches picker
vim.keymap.set('n', '<leader>gg',
  function()
    builtin.git_branches({
      no_ignore = false,
      hidden = true
    })
  end)

---- Telescope-coc
--定義ジャンプ
vim.keymap.set("n", "gd", "<cmd>Telescope coc definitions<cr>", { noremap = true, silent = true })
-- 型定義ジャンプ
vim.keymap.set("n", "gy", "<cmd>Telescope coc type_definitions<cr>", { noremap = true, silent = true })
-- diagnostics
vim.keymap.set("n", "<leader>ga", "<cmd>Telescope coc diagnostics<cr>", {noremap = true, silent = true })
-- reference
vim.keymap.set("n", "<leader>gr", "<cmd>Telescope coc references<cr>", {noremap = true, silent = true })
--頻度検索
vim.keymap.set("n", "<leader>l", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", {noremap = true, silent = true})

-- open file_browser with the path of the current buffer
-- vim.api.nvim_set_keymap(
--   "n",
--   "<C-n>",
--   ":Telescope file_browser path=%:p:h select_buffer=true previewer=false<CR>",
--   { noremap = true }
-- )