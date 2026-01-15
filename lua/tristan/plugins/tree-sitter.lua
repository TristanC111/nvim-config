return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			-- REQUIRED (by Lua-LS typing)
			modules = {},
			sync_install = false,
			ignore_install = {},

			ensure_installed = {
				"bash",
				"c",
				"lua",
				"vim",
				"vimdoc",
				"markdown",
			},

			highlight = {
				enable = true,
			},

			indent = {
				enable = true,
			},

			auto_install = true,
		})
	end,
}
