vim.api.nvim_set_keymap('n', '<leader>b', ':AsyncRun -mode=term -rows=10 -focus=0 -save=1 clang++ % && echo build done && ./a.out<~/.input && echo done<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ft', ':FloatermNew<CR>', { noremap = true, silent = true })
