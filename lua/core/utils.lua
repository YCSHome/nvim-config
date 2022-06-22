local M = { }

M.merge_plugins = function(plugins) 
  local final_plugins = { }

  for key, value in pairs(plugins) do
    plugins[key][1] = key
    final_plugins[#final_plugins + 1] = plugins[key]
  end

  return final_plugins
end

return M
