-- 用来延时加载一些东西（自己写的）
-- 没写完

local M = { }

M.lazy_load = function(task) 
  vim.api.nvim_create_autocmd(task.events, {
    pattern = "*",
    group = vim.api.nvim_create_augroup(task.augroup_name, {}),

  })
end

return M
