local M = { }
M.tree = require("nvim-tree")

M.tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    number = true,
    relativenumber = true,
    side = "right",
    width = 30,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      }
    },
  },
  renderer = {
    group_empty = true,
    add_trailing = true, -- 在文件夹面前加斜杠
    indent_markers = {   -- 有关文件缩进的问题
      enable = true,
    },
    icons = {            -- 小图标，但是我没有加书呆子字体
    },
  },
  filters = {
    dotfiles = true,
  },
})

return M
