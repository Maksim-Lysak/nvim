require("nvim-treesitter.configs").setup({
	ensure_installed = { "typescript", "lua", "go", "tsx", "html", "php", "css", "scss", "python", "javascript" },

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
})
