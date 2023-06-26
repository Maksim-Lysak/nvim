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
local k = require("luasnip.nodes.key_indexer").new_key

ls.add_snippets("javascriptreact", {
	s("cl", {
		t("console.log("),
		i(1),
		t(")"),
	}),
	s("ea", {
		t("() => "),
		i(1),
	}),
	s("af", {
		t("("),
		i(1),
		t(") => "),
		i(2),
	}),
	s("im", {
		t("import "),
		i(2),
		t(" from '"),
		i(1),
		t("'"),
	}),
	s(
		"test",
		fmt(
			[[
        function {}() {{
          return <> 

        }}
        export default {}
			]],
			{
				f(function(_, snip)
					local str = snip.env.TM_FILENAME_BASE
					return string.upper(string.sub(str, 1, 1)) .. string.sub(str, 2)
				end),
				f(function(_, snip)
					return snip.env.TM_FILENAME_BASE
				end),
			}
		)
	),
	-- s(
	-- 	"rc",
	-- 	fmt(
	-- 		[[
	--         function {}() {{
	--           return <>
	--
	--         }}
	--         export default
	-- 		]],
	-- 		{
	-- 			f(function()
	-- 				return "hello" + " world"
	-- 			end),
	-- 		}
	-- 	)
	-- ),
	s(
		"ifr",
		fmt(
			[[
				if ({}) {{
					{}
				}}
			]],
			{
				i(1, ""),
				c(2, { i(1, { "ODO: something ..." }), t("return") }),
			}
		)
	),
})
