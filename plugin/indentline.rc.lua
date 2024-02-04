local status,indent = pcall(require,"ibl")
if (not status) then return end

indent.setup {
  indent = { char = "┊" },
  scope = { enabled = false },
 exclude = { filetypes = {"jade","pug"} }
}