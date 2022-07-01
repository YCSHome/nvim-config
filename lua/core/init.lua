System = vim.fn.system("uname")
if System ~= "Linux" then
	System = "Windows"
end
LspConfig = { }

local ok, _ = pcall(require, "config."..Config)

if not ok then
	Config = "default"
end

require("core.packer").bootstrap()
require("plugins")

for _, mod in pairs(require("expanded").mods) do
	mod = "expanded."..mod
	local ok, errorMessage = pcall(require, mod)
	if not ok then
		error(errorMessage)
	else
		require(mod)
	end
end

require("core.utils").load_config(require("config."..Config))
