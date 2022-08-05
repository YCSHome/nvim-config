local M = { }

M.change = function() 
  vim.lsp.buf.rename(vim.fn.system("myRand"))
  local ok, _ = pcall(vim.api.nvim_input, "w")
  if ok then
    vim.api.nvim_input("w");
  end
  vim.wait(100, function() end)
end

M.begin = function()
  local i = 10
  while (i ~= 0) do
    M.change()
    i = i - 1
  end
end

return M
