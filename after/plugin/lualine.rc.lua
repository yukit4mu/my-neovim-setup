local status,lualine = pcall(require, "lualine")
if (not status) then return end

-- vim.cmd("colorscheme nordfox")

require('lualine').setup {
  options ={
    theme = "everforest",
		globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'}, -- diffは必要ない気がするので削除
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
