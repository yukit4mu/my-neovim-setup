
local status,hop = pcall(require,'hop')
if (not status) then return end

local directions = require('hop.hint').HintDirection

-- you can configure Hop the way you like here; see :h hop-config
hop.setup { keys = 'etovxqpdygfblzhckisuran' }

vim.keymap.set('n','<leader><leader>',':HopWord<CR>',{silent = true,noremap = true})
