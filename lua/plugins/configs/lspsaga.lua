local saga = require("lspsaga")

local kind = require("lspsaga.lspkind")
-- kind[type_number][2] = icon

saga.init_lsp_saga({
  border_style = "rounded",
  diagnostic_header = { " ", " ", " ", "ﴞ " },
  show_diagnostic_source = true,
  finder_icons = {
    def = '  ',
    ref = '諭 ',
    link = '  ',
  },
  code_action_lightbulb = {
    enable = true,
    sign = true,
    enable_in_insert = true,
    sign_priority = 20,
    virtual_text = true,
  },
})

