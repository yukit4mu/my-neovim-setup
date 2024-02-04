-- vim-prettier
-- 全体
vim.keymap.set("n","zm","  :PrettierAsync<cr>")
--VisualModeで部分のみ
vim.keymap.set("v","zmr","  :PrettierPartial<cr>")