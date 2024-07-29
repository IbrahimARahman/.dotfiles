return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "html", "tsx" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      context_commentstring = {
        enable = true,
      },
    })
  end,
  "nvim-treesitter/nvim-treesitter-context",
}
