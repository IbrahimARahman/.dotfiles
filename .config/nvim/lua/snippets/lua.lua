return {
  s({trig = "req", name = "require", dscr = ""},
    fmt("local {} = require('{}')", { i(1, "default"), rep(1)})
  ),
}
