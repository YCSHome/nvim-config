local modules = {
  "core.options",
  "core.code",
  "core.colors",
  "plugins.config.bufferline",
  "plugins.config.coc"
}

for _, module in ipairs(modules) do
  require(module)
end

require("plugins.init")
