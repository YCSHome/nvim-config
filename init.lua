vim.cmd([[packadd packer.nvim]])
local modules = {
  "main.options",
  "core.code",
  "core.colors",
  "plugins.config.bufferline",
  "plugins.config.coc",
  "plugins.config.dashboard"
}

require("plugins.init")

for _, module in pairs(modules) do
  local ok, err = pcall(require, module)
  if not ok then
    error("Error Loading" .. module .. "\n\n" .. err)
  else
    require(module)
  end
end

require("main.options").LoadOptions()

vim.cmd([[set guifont=Hack\ Nerd\ Font:h14]])
