System = vim.fn.system("uname")

vim.api.nvim_command("packadd packer.nvim")

for _, mod in pairs(require("expanded").mods) do
	mod = "expanded."..mod
	local ok, errorMessage = pcall(require, mod)
	if not ok then
		error(errorMessage)
	else
		require(mod)
	end
end
