-- following options are the default
require'vfiler/config'.setup {
  options = {
    auto_cd = false,
    auto_resize = false,
    columns = 'indent,devicons,name',
    find_file = true,
    header = false,
    keep = false,
    listed = false,
    name = '',
    session = 'none',
    show_hidden_files = true,
    sort = 'name',
    layout = 'none',
    width = 90,
    height = 30,
    new = false,
    quit = true,
    toggle = false,
    row = 0,
    col = 0,
    blend = 5,
    border = 'rounded',
    zindex = 200,
    git = {
      enabled = true,
      ignored = true,
      untracked = true,
    },
    preview = {
      layout = 'floating',
      width = 0,
      height = 0,
    },
  },
}

vim.keymap.set('n','<C-n>',':VFiler<CR>',{silent = true,noremap = true})