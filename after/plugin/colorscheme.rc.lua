local status,rosepine = pcall(require,'rose-pine')
if (not status) then return end

-- rose-pineをデフォルトのテーマに設定○
rosepine.setup({
	--- @usage 'main' | 'moon'
	dark_variant = 'moon',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = true,
	disable_float_background = false,
	disable_italics = true,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		panel = 'surface',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},
	-- Change specific vim highlight groups
	highlight_groups = {
		ColorColumn = { bg = 'rose' }
	}
})

vim.cmd('colorscheme rose-pine')

-- vim.cmd([[

-- let g:everforest_enable_italic = 1
-- let g:everforest_disable_italic_comment = 1 
-- let g:everforest_background = 'dark'
-- let g:everforest_diagnostic_text_highlight = 0 
-- let g:everforest_better_performance = 1
-- let g:everforest_transparent_background = 1
-- colorscheme everforest

-- ]])

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