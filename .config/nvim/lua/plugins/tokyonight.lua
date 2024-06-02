return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {style="night"},
  config = function(plugin)
    require("tokyonight").setup(plugin.opts)
    vim.cmd.colorscheme "tokyonight"
  end
}
