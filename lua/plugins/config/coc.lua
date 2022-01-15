vim.api.nvim_set_keymap('n', '<leader>ex', ':CocCommand explorer<CR>', { noremap = true, silent = true })
vim.cmd([[let g:coc_global_extensions = ['coc-clangd', 'coc-explorer'] ]])
