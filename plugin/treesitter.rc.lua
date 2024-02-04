local status, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

treesitter.setup {
  ensure_installed = {"c","cpp","vim","dockerfile","fish","typescript","tsx","javascript","json","lua","gitignore","bash","astro","markdown","css","scss","yaml","toml","vue","php","html","vimdoc"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false, -- catpuucin用
    disable = {},
  },
  yati = {
    enable = true,
    -- Disable by languages, see `Supported languages`
    disable = { "python" },

    -- Whether to enable lazy mode (recommend to enable this if bad indent happens frequently)
    default_lazy = true,

    -- Determine the fallback method used when we cannot calculate indent by tree-sitter
    --   "auto": fallback to vim auto indent
    --   "asis": use current indent as-is
    --   "cindent": see `:h cindent()`
    -- Or a custom function return the final indent result.
    default_fallback = "auto"
  },
	indent ={
    -- 一部のファイルでインデントが変になることがある
    -- 一時的にインデントだけオフにして対応
		enable = false,
    -- disable ={"html"},
	},
  autotag = {
    enable = true,
    -- nvim-ts-autotagで奇妙な挙動になるのでfalseに
    enable_close_on_slash = false
  },
}
