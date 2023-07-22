local status, regi = pcall(require, "registers")
if (not status) then return end

-- regi.setup({
--   show = "*+\"-/_=#%.0123456789abcdefghijklmnopqrstuvwxyz:",
--   system_clipboard = true,
--   show_empty = false,
--   show_register_types = false,
--   window ={
--     border = 'single',
--     transparency = 5,
--   }
-- })