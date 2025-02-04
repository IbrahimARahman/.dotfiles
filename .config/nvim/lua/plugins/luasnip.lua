return {
  "L3MON4D3/LuaSnip",
  lazy = false,
  config = function()
    local ls = require("luasnip")
    ls.setup({
      keys = {
        {
          mode = "i",
          "<c-j>",
          function()
            if ls.expand_or_jumpable() then
              ls.expand_or_jump()
            end
          end,
          desc = "Jump forward a snippet placement",
          noremap = true,
          silent = true,
        },
        {
          mode = "i",
          "<c-k>",
          function()
            if ls.jumpable(-1) then
              ls.jump(-1)
            end
          end,
          desc = "Jump backward a snippet placement",
          noremap = true,
          silent = true,
        },
        {
          mode = "i",
          "<c-l>",
          function()
            if ls.choice_active() then
              ls.change_choice(1)
            end
          end,
        },
      },
      history = false,
      updateevents = "TextChanged, TextChangedI",
    })
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/lua/snippets" })
  end,
}
