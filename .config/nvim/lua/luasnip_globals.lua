_G.ls = require("luasnip")
_G.s = ls.snippet
_G.sn = ls.snippet_node
_G.isn = ls.indent_snippet_node
_G.t = ls.text_node
_G.i = ls.insert_node
_G.f = ls.function_node
_G.c = ls.choice_node
_G.d = ls.dynamic_node
_G.r = ls.restore_node
_G.events = require("luasnip.util.events")
_G.ai = require("luasnip.nodes.absolute_indexer")
_G.extras = require("luasnip.extras")
_G.l = extras.lambda
_G.rep = extras.rep
_G.p = extras.partial
_G.m = extras.match
_G.n = extras.nonempty
_G.dl = extras.dynamic_lambda
_G.fmt = require("luasnip.extras.fmt").fmt
_G.fmta = require("luasnip.extras.fmt").fmta
_G.conds = require("luasnip.extras.expand_conditions")
_G.postfix = require("luasnip.extras.postfix").postfix
_G.types = require("luasnip.util.types")
_G.parse = require("luasnip.util.parser").parse_snippet
_G.ms = ls.multi_snippet
_G.k = require("luasnip.nodes.key_indexer").new_key
