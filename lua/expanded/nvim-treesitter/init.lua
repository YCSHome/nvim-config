require'nvim-treesitter.configs'.setup {
  ensure_installed = {"html", "css", "vim", "lua", "cpp", "c", "python"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
}
