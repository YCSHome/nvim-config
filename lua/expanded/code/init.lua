local BuildOption = {
  ["focus"] = 0,
  ["save"] = 2,
  ["mode"] = "term",
  ["rows"] = 10
}

local AsyncRun = function(opt, cmd)
  vim.call("asyncrun#run", "!", opt, cmd)
end

function table.merge(table1, table2)
  for key, value in pairs(table2) do
    table1[key] = value
  end
  return table1
end

Code = {
  RunByCodeTypeList = function(CodeTypeList)
    FileType = vim.opt.filetype["_value"]

    for _, CodeType in pairs(CodeTypeList) do
      if (CodeType.check() == true) then
        CodeType.run()
        return 0
      end
    end
    print("not such code type "..tostring(#CodeTypeList))
  end,

  BaseCodeType = {
    check = function()
      return false
    end,
    run = function()
    end
  }
}

CodeTypeList = { }

function AddCodeTypeList(Key, List)
  table.insert(CodeTypeList, List)
  vim.api.nvim_set_keymap("n", Key, ":lua Code.RunByCodeTypeList(CodeTypeList["..tostring(#CodeTypeList).."])<CR>", {noremap = true, silent = true})
end

Code.Cpp = {
  check = function()
    if (FileType == 'cpp') then
      return true
    end
  end,
  run = function()
    AsyncRun(BuildOption, "clang++ $(VIM_FILENAME) && echo build && ./a.out<~/.input && echo done")
  end
}

Code.Lua = {
  check = function()
    if (FileType == 'lua') then
      return true
    end
  end,

  run = function()
    AsyncRun(BuildOption, "lua $(VIM_FILENAME)")
  end
}

table.merge(CodeTypeList, Code)

AddCodeTypeList("<leader>b", {
    Code.Cpp,
    Code.Lua,
    {
      check = function()
        if (FileType == 'python') then
          return true
        end
      end,
      run = function()
        AsyncRun(BuildOption, "python3 $(VIM_FILENAME)")
      end
    }
  }
  )

