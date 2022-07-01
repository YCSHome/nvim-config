-- 通过LspConfig来加载相关的config

local lspconfig = require("lspconfig")

for name, value in pairs(LspConfig) do
  lspconfig[name].setup(value)
end
