local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key -- local ls = require("luasnip")

ls.add_snippets("lua", {
	s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1) })),
	s("test", fmt("one{} = two{} tree{}", { i(1, ""), i(2, ""), i(3, "") })),
	s(
		"ml",
		fmt(
			[[
				local {} = function({})
					{}
				end
			]],
			{
				i(1, ""),
				i(2, ""),
				i(3, ""),
			}
		)
	),
	s(
		"cnode",
		fmt(
			[[
				local {} = function({})
					{}
				end
			]],
			{
				i(1, ""),
				c(2, { t("one"), t("two") }),
				i(3, ""),
			}
		)
	),
})

-- ls.add_snippets("all", {
-- 	s(
-- 		"tg",
-- 		fmt(
-- 			[[
-- 				function {}(value: unknown): value is {} {{
-- 					return typeof value === "{}"
-- 				}}
-- 			]],
-- 			{
-- 				i(1, "func name"),
-- 				i(2, "type"),
-- 				rep(2),
-- 			}
-- 		)
-- 	),
-- 	s("cl", {
-- 		t("console.log("),
-- 		i(1),
-- 		t(")"),
-- 	}),
-- 	s("ea", {
-- 		t("() => "),
-- 		i(1),
-- 	}),
-- 	s("af", {
-- 		t("("),
-- 		i(1),
-- 		t(") => "),
-- 		i(2),
-- 	}),
-- 	s("im", {
-- 		t("import "),
-- 		i(2),
-- 		t(" from '"),
-- 		i(1),
-- 		t("'"),
-- 	}),
-- 	s(
-- 		"ifr",
-- 		fmt(
-- 			[[
-- 				if ({}) {{
-- 					{}
-- 				}}
-- 			]],
-- 			{
-- 				i(1, ""),
-- 				c(2, { i(1, { "ODO: something ..." }), t("return") }),
-- 			}
-- 		)
-- 	),
-- })
