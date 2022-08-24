local config = {
  vim = {
    g = {
      mkdp_auto_start = 0,
      mkdp_auto_close = 1,
      mkdp_markdown_css = "/home/liuyi/theme/onedark.css",
      mkdp_highlight_css = "/home/liuyi/theme/dracula.css",
      mkdp_theme = "dark",
    },
  },
  autocmds = {
    {
      {"BufRead"},
      {
        pattern = "*.md",
        command = "MarkdownPreview"
      }
    },
  },
}

require("core.utils").load_config(config)
