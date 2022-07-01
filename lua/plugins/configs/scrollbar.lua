local autocmd = vim.api.nvim_create_autocmd

autocmd({"WinScrolled", "VimResized", "QuitPre", "WinEnter", "FocusGained"}, {
  callback = function()
    require("scrollbar").show()
  end
})
