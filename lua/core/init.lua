System = vim.fn.system("uname")

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
