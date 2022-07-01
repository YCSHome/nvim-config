-- 用来优化 packer 的使用

local M = { }

M.bootstrap = function()
  local fn = vim.fn
  local packer_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

  if fn.empty(fn.glob(packer_path)) > 0 then
    print "Cloning packer .."
    fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", packer_path }
  end
end

M.options = {
  auto_clean = true,
  compile_on_sync = true,
  git = {
    clone_timeout = 6000,
  },
  display = {
    working_sym = "ﲊ",
    error_sym = "✗ ",
    done_sym = " ",
    removed_sym = " ",
    moved_sym = "",
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

M.run = function(plugins)
  local ok, packer = pcall(require, "packer")
  if not ok then
    return
  end

  plugins = require("core.utils").merge_plugins(plugins)

  packer.init(M.options)

  packer.startup(function(use)
    for _, value in pairs(plugins) do
      use(value)
    end
  end)
end

return M
