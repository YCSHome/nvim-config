vim.api.nvim_set_keymap('n', '<leader>b', ':lua RunCode()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ft', ':FloatermNew<CR>', { noremap = true, silent = true })

local BuildOption = {
  ["mode"] = 1,
  ["focus"] = 0,
  ["save"] = 2,
  ["mode"] = "term",
  ["rows"] = 10
}

function AsyncRun(opt, cmd)
  vim.call("asyncrun#run", "!", opt, cmd)
end

function RunCode()
  FileType = vim.opt.filetype["_value"]
  if (FileType == 'cpp') then
    AsyncRun(BuildOption, "clang++ $(VIM_FILENAME) && echo build && ./a.out<~/.input && echo done")
  elseif (FileType == 'lua') then
    AsyncRun(BuildOption, "lua $(VIM_FILENAME)")
  elseif (FileType == 'python') then
    AsyncRun(BuildOption, "python3 $(VIM_FILENAME)")
  end
end
