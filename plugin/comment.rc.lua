local status, comment = pcall(require, "Comment")
if (not status) then return end

comment.setup{
  padding = true,
  sticky = false,
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}
