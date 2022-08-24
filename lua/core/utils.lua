local M = { }

local cmd = vim.api.nvim_cmd

M.merge_plugins = function(plugins) 
  local final_plugins = { }

  for key, value in pairs(plugins) do
    plugins[key][1] = key
    final_plugins[#final_plugins + 1] = plugins[key]
  end

  return final_plugins
end

M.merge_table = function(table1, table2)
  for key, value in pairs(table2) do
    table1[key] = value;
  end
  return table1
end

M.load_mappings = function(mappings)
  if mappings == nil then
    return
  end
  local set_map = vim.keymap.set
  for name, value in pairs(mappings) do
    set_map(value[1], name, value[2], value[3])
  end
end

M.add_lsp = function(lsp)
  for name, value in pairs(lsp) do
    LspConfig[name] = value
  end
end

M.load_autocmds = function(autocmds) 
  create = vim.api.nvim_create_autocmd
  for key, value in pairs(autocmds) do
    create(value[1], value[2]);
  end
end

M.load_ui_config = function(ui)
  local set_sign = vim.fn.sign_define
  if ui.theme ~= nil then
    cmd({cmd = "colorscheme", args = {ui.theme}}, {})
  end
  if ui.signs ~= nil then
    for name_, text_ in pairs(ui.signs) do
      local temp = "DiagnosticSign" .. name_
      set_sign(temp, {text = text_, texthl = temp, numhl = 'DiagnosticDefault' .. name_})
    end
  end
end

M.load_config = function(config)
  for key, value in pairs(config) do
    if key == "vim" then
      if value.diagnostic ~= nil then
        vim.diagnostic.config(value.diagnostic)
      end
      if value.opt ~= nil then
        for _key, _value in pairs(value.opt) do
          vim.opt[_key] = _value
        end
      end
      if value.g ~= nil then
        for _key, _value in pairs(value.g) do
          vim.g[_key] = _value
        end
      end
    elseif key == "mappings" then
      M.load_mappings(value)
    elseif key == "lsp" then
      M.add_lsp(value)
    elseif key == "ui" then
      M.load_ui_config(value)
    elseif key == "autocmds" then
      M.load_autocmds(value)
    end
  end
end

return M
