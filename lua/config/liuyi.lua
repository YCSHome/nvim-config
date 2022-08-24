local repl_config = {
  {
    width = 30,
    number = false,
    relativenumber = false,
    signcolumn = "no",
  },
  "rightbelow vsplit"
}

local config = {
  vim = {
    opt = {
      number            = true,
      expandtab         = true,
      smartindent       = true,
      autoindent        = true,
      -- undofile          = true,
      wrap              = false,
      cul               = true,
      number            = true,
      tabstop           = 2,
      mouse             = "a",
      undofile          = true,
      shiftwidth        = 2,
      termguicolors     = true,
      backup            = false,
      relativenumber    = true,
      hlsearch          = false,
      backup            = false,
      cinoptions        = "g0l1Ls(0",
      updatetime        = 1000,
      signcolumn        = "yes",
    },
    g = {
      background        = "dark",
      markdown_fenced_languages = { "cpp", "lua", "python", "vim" },

    },
    diagnostic = {
      update_in_insert  = true,
      virtual_lines     = false,
      virtual_text      = {
        prefix = "",
      },
      float             = true,
    },
  },
  mappings = {
    -- 重载jk
    ["k"] = {
      "n",
      "gk",
      {silent = true, noremap = true},
    },
    ["j"] = {
      "n",
      "gj",
      {silent = true, noremap = true},
    },
    -- nvim-tree
    ["t<C-O>"] = {
      "n",
      ":NvimTreeOpen<CR>",
      { silent = true }
    },
    ["t<C-R>"] = {
      "n",
      ":NvimTreeCollapseKeepBuffers<CR>",
      { silent = true }
    },
    ["t<C-F>"] = {
      "n",
      ":NvimTreeFocus<CR>",
      { silent = true }
    },
    ["t<C-T>"] = {
      "n",
      ":NvimTreeToggle<CR>",
      { silent = true }
    },
    -- WinShift
    ["<C-W>M"] = {
      "n",
      "<Cmd>WinShift<CR>",
      { silent = true }
    },
    -- something for lsp
    -- auto format
    ["<leader>f"] = {
      "n",
      function()
        vim.lsp.buf.format({async = true})
      end,
      { silent = true }
    },
    -- 跳转声明
    ["<leader>gD"] = {
      "n",
      vim.lsp.buf.declaration,
      { silent = true }
    },
    -- 跳转定义
    ["<leader>gd"] = {
      "n",
      vim.lsp.buf.definition,
      { silent = true }
    },
    -- 显示信息
    ["<leader>doc"] = {
      "n",
      "<Cmd>Lspsaga hover_doc<CR>",
      { silent = true }
    },
    -- 改名
    ["<leader>rn"] = {
      "n",
      "<Cmd>Lspsaga rename<CR>",
      { silent = true }
    },
    -- 随机改名
    ["<leader>rrn"] = {
      "n",
      function()
        if vim.lsp.buf.server_ready() then
          vim.lsp.buf.rename(vim.fn.system("myRand"))
        end
      end,
      { silent = true }
    },
    ["<C-h>"] = {
      "n",
      "zh",
      { silent = true },
    },
    ["<C-l>"] = {
      "n",
      "zl",
      { silent = true },
    },
    -- 显示错误信息
    ["<leader>e"] = {
      "n",
      "<Cmd>Lspsaga show_line_diagnostics<CR>",
      { silent = true },
    },
    ["[e"] = {
      "n",
      "<Cmd>Lspsaga diagnostic_jump_next<CR>",
      { silent = true },
    },
    ["]e"] = {
      "n",
      "<Cmd>Lspsaga diagnostic_jump_prev<CR>",
      { silent = true },
    },
    -- 显示定义信息
    ["<leader>de"] = {
      "n",
      "<Cmd>Lspsaga preview_definition<CR>",
      { silent = true },
    },

    -- 重置使其更加智能
    ["<C-f>"] = {
      "n",
      function()
        require("lspsaga.action").smart_scroll_with_saga(1);
      end,
      { silent = true },
    },
    ["<C-b>"] = {
      "n",
      function()
        require("lspsaga.action").smart_scroll_with_saga(-1);
      end,
      { silent = true },
    },

    -- 调试
    ["<leader>dbo"] = {
      "n",
      function()
        require("dap").repl.open(repl_config[1], repl_config[2])
      end,
      { silent = true },
    },
    -- 调试开始
    ["<F5>"] = {
      "n",
      function()
        -- print("编译")
        -- require("expanded.code").run("clang++-14 -std=c++17 -g $(VIM_FILENAME)")
        require("dap").continue()

        -- require("dap").run({"a.out"})
      end,
      { silent = true },
    },

    -- 断点
    ["<F29>"] = {
      "n",
      function()
        require("dap").toggle_breakpoint()
      end,
      { silent = true },
    },

    ["<F41>"] = {
      "n",
      function()
        local widgets = require('dap.ui.widgets')
        local my_sidebar = widgets.sidebar(widgets.scopes)
        my_sidebar.open()
      end,
      { silent = true },
    },
  },
  autocmds = {
    {
      {"BufNewFile"},
      {
        pattern = "*.cpp",
        command = "0r ~/skeleton.cpp"
      }
    },
    {
      {"BufEnter", "VimEnter", "BufNew"},
      {
        pattern = "*.cpp",
        command = "lua if vim.lsp.buf.server_ready() then vim.lsp.buf.format({async = true}) end",
      }
    },
  },
  ui = {
    theme = "nightfox",
    signs = {
      Error = '',
      Hint = 'ﴞ',
      Info = '',
      Warn = '',
    },
  },
  lsp = {
    clangd = {
      cmd = {
        "/bin/clangd-14",
        "--enable-config",
        "--fallback-style=google"
      },
    }
  },
}

return config

