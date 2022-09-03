for _, value in ipairs(vim.api.nvim_get_chan_info(1)) do
  print(_, value)
end
