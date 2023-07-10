
-- everforest 
vim.cmd([[
let g:everforest_enable_italic = 1
let g:everforest_disable_italic_comment = 1 
let g:everforest_background = 'medium'
let g:everforest_diagnostic_text_highlight = 0
let g:everforest_diagnostic_virtual_text = 'colored'
let g:everforest_better_performance = 1

let g:everforest_transparent_background = 1

colorscheme everforest
]])

-- require('rose-pine').setup({
-- 	--- @usage 'auto'|'main'|'moon'|'dawn'
-- 	variant = 'moon',
-- 	--- @usage 'main'|'moon'|'dawn'
-- 	dark_variant = 'moon',
-- 	bold_vert_split = false,
-- 	dim_nc_background = false,
-- 	disable_background = true,
-- 	disable_float_background = true,
-- 	disable_italics = true,
-- 	--- @usage string hex value or named color from rosepinetheme.com/palette
-- 	groups = {
-- 		background = 'base',
-- 		background_nc = '_experimental_nc',
-- 		panel = 'surface',
-- 		panel_nc = 'base',
-- 		border = 'highlight_med',
-- 		comment = 'muted',
-- 		link = 'iris',
-- 		punctuation = 'subtle',

-- 		error = 'love',
-- 		hint = 'iris',
-- 		info = 'foam',
-- 		warn = 'gold',

-- 		headings = {
-- 			h1 = 'iris',
-- 			h2 = 'foam',
-- 			h3 = 'rose',
-- 			h4 = 'gold',
-- 			h5 = 'pine',
-- 			h6 = 'foam',
-- 		}
-- 		-- or set all headings at once
-- 		-- headings = 'subtle'
-- 	},
-- 	-- Change specific vim highlight groups
-- 	-- https://github.com/rose-pine/neovim/wiki/Recipes
-- 	highlight_groups = {
-- 		ColorColumn = { bg = 'rose' },

-- 		-- Blend colours against the "base" background
-- 		CursorLine = { bg = 'foam', blend = 10 },
-- 		StatusLine = { fg = 'love', bg = 'love', blend = 10 },
-- 	}
-- })

-- -- MEMO:
-- -- 背景は透明にする
-- -- Coc.nvimのwinblend類は0にする
-- -- Hover系の表示にはborder:trueで枠をつける
-- -- Set colorscheme after options
-- vim.cmd('colorscheme rose-pine')


-- Github
-- require('github-theme').setup({
--   options = {
--     transparent = true,       -- Disable setting background
--     terminal_colors = true,    -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
--     dim_inactive = false,      -- Non focused panes set to alternative background
--     module_default = true,     -- Default enable value for modules
--     styles = {                 -- Style to be applied to different syntax groups
--       comments = 'NONE',     -- Value is any valid attr-list value `:help attr-list`
--       functions = 'italic',
--       keywords = 'italic',
--       variables = 'NONE',
--       conditionals = 'NONE',
--       constants = 'NONE',
--       numbers = 'NONE',
--       operators = 'NONE',
--       strings = 'NONE',
--       types = 'NONE',
--     },
--     inverse = {                -- Inverse highlight for different types
--       match_paren = false,
--       visual = false,
--       search = false,
--     },
--     darken = {                 -- Darken floating windows and sidebar-like windows
--       floats = false,
--       sidebars = {
--         enable = true,
--         list = {},             -- Apply dark background to specific windows
--       },
--     },
--     modules = {                -- List of various plugins and additional options
--       -- ...
--     },
--   },
--   palettes = {},
--   specs = {},
--   groups = {},
-- })
-- vim.cmd('colorscheme github_dark')



-- require 'nordic' .setup {
--     -- Available themes: 'nordic', 'onedark'.
--     -- Onedark is WIP.
--     theme = 'nordic',
--     -- Enable bold keywords.
--     bold_keywords = false,
--     -- Enable italic comments.
--     italic_comments = false,
--     -- Enable general editor background transparency.
--     transparent_bg = true,
--     -- Enable brighter float border.
--     bright_border = true,
--     -- Nordic specific options.
--     -- Set all to false to use original Nord colors.
--     -- Adjusts some colors to make the theme a bit nicer (imo).
--     nordic = {
--         -- Reduce the overall amount of blue in the theme (diverges from base Nord).
--         reduced_blue = true,
--     },
--     -- Onedark specific options.
--     -- Set all to false to keep original onedark colors.
--     -- Adjusts some colors to make the theme a bit nicer (imo).
--     -- WIP.
--     onedark = {
--         -- Brighten the whites to fit the theme better.
--         brighter_whites = true,
--     },
--     -- Override the styling of any highlight group.
--     override = {},
--     cursorline = {
--         -- Enable bold font in cursorline.
--         bold = false,
--         -- Avialable styles: 'dark', 'light'.
--         theme = 'light',
--         -- Hide the cursorline when the window is not focused.
--         hide_unfocused = true,
--     },
--     noice = {
--         -- Available styles: `classic`, `flat`.
--         style = 'classic',
--     },
--     telescope = {
--         -- Available styles: `classic`, `flat`.
--         style = 'classic',
--     },
--     leap = {
--         -- Dims the backdrop when using leap.
--         dim_backdrop = false,
--     },
-- }
-- vim.cmd.colorscheme 'nordic'
-- --

-- Nordfoxを設定
-- require('nightfox').setup({
--   options = {
-- 		transparent = true,
--     styles = {
-- 			functions = "italic",
--       types = "italic",
--     }
--   }
-- })

-- vim.cmd("colorscheme nordfox")
