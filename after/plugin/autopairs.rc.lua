local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then return end

-- MEMO:Copilot.vimを使うならオフにしたほうがいいかも？

autopairs.setup{
  disable_filetype = { "TelescopePrompt" , "vim" },
}