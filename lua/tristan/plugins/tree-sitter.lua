return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		-- import nvim-treesitter plugin
		-- Load the configuration module
		local treesitter = require("nvim-treesitter.configs")

		-- Call the setup function with your desired options
		treesitter.setup({
			-- Add languages to be installed here
			ensure_installed = { "bash", "c", "lua", "vim", "vimdoc", "markdown" },

			-- Enable syntax highlighting
			highlight = {
				enable = true,
			},

			-- Enable indentation
			indent = {
				enable = true,
			},

			-- Autoinstall languages that are not installed
			auto_install = true,
		})
	end,
}
