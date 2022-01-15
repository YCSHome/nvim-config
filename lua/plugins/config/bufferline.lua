require("bufferline").setup{}

vim.api.nvim_set_keymap('n', '<tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<s-tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
