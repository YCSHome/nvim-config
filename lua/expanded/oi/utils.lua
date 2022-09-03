local M = { }

M.initProblem = function(problem)
  -- 通过提供题目编号来初始化题目
  local cmd = nvim.api.nvim_cmd
  cmd({"e "..problem}, {output = false})
end

return M
