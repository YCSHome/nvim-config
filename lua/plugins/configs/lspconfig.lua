-- 通过LspConfig来加载相关的config

local lspconfig = require("lspconfig")

for name, value in pairs(LspConfg) do
  lspconfig[name].setup(value)
end
