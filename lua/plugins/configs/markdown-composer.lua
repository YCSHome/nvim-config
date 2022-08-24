local config = {
  vim = {
    g = {
      -- markdown_composer_external_renderer = 'pandoc -f markdown -t html',
      markdown_composer_refresh_rate = 0,
      markdown_composer_syntax_theme = "https://raw.githubusercontent.com/altercation/ethanschoonover.com-OLD/master/resources/css/style.css",
      markdown_composer_custom_css = {
        -- "https://gist.githubusercontent.com/xiaolai/aa190255b7dde302d10208ae247fc9f2/raw/58ade7b9240780dcb718ab0cbc484e6f1dc8a709/markdownhere.css",
        -- "file:///home/liuyi/theme/markdown-here.css",
        -- "https://raw.githubusercontent.com/iamcco/markdown.css/master/dest/github/markdown.css"
        "file:///home/liuyi/theme/dracula.css"
      },
    }
  }
}

require("core.utils").load_config(config)
