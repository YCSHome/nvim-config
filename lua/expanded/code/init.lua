local M = { }

M.codeList = { }

M.config = { }

M.code = {
  RunByCodeTypeList = function(CodeTypeList)
    for _, CodeType in pairs(CodeTypeList) do
      if (CodeType.check() == true) then
        CodeType.run()
        return 0
      end
    end
    print("not such type")
  end,

  options = {
    ["focus"] = 0,
    ["save"] = 2,
    ["mode"] = "term",
    ["rows"] = 10
  },

  run = function(opt, cmd)
    vim.call("asyncrun#run", "!", opt, cmd)
  end,
}

M.codeList.Cpp = {
  check = function()
    local FileType = vim.opt.filetype._value
    if (FileType == 'cpp') then
      return true
    end
  end,
  run = function()
    local t
    t = "./a.out<~/.input"
    M.code.run(M.code.options, "clang++-14 $(VIM_FILENAME) && echo build && "..t.." && echo done")
  end
}

M.codeList.Lua = {
  check = function()
    local FileType = vim.opt.filetype._value
    if (FileType == 'lua') then
      return true
    end
  end,

  run = function()
    M.code.run(M.code.options, "lua $(VIM_FILENAME)")
  end
}

M.codeList.python = {
  check = function()
    local FileType = vim.opt.filetype._value
    if (FileType == 'python') then
      return true
    end
  end,
  run = function()
    M.code.run(M.code.options, "python3 $(VIM_FILENAME)")
  end
}

M.config.mappings = {
  ["<leader>b"] = {
    "n",
    function()
      M.code.RunByCodeTypeList(M.codeList)
    end,
    {
      noremap = true,
      silent = true,
    },
  }
}

require("core.utils").load_config(M.config)

return M
