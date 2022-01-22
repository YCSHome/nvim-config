vim.cmd([[packadd packer.nvim]])
local modules = {
  "core.options",
  "core.code",
  "core.colors",
  "plugins.config.bufferline",
  "plugins.config.coc"
}

require("plugins.init")

for _, module in ipairs(modules) do
  require(module)
end

