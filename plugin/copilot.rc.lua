vim.g.copilot_no_tab_map = true
local keymap = vim.keymap.set

-- change copilot accept key
-- keymap("i","<C-k>",'copilot#Accept("<CR>")',{ silent = true, expr = true, script = true, replace_keycodes = false })

-- next,previousはそれぞれ<M-]>,<M-[> (MetaはAltキー)