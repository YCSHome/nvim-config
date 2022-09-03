local M = { }

local OIBuffers = {
}

M.initProblem = function(problem)
  -- 通过提供题目编号来初始化题目
  local cmd = vim.api.nvim_cmd
  problem = tostring(problem)
  cmd({cmd = "edit", args = {problem}}, {output = false})
  -- 获取当前缓冲区
  buf = vim.api.nvim_get_current_buf()
  -- 初始化当前缓冲区对应的table，此table用来存储一些重要信息
  OIBuffers[buf] = {
    name = "OI Buffers",
    -- 这里用来存储数据点
    data = {
    }
  }
  -- 这是一个 OI 缓冲区
  vim.b.OIBuf = true
end

return M
