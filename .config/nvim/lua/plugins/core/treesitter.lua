return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"bash",
				"html",
				"json",
				"jsonc",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"regex",
				"yaml",
				"hyprlang",
				"rasi",
				"rust",
			},
			auto_install = true,
			highlight = {
				enable = true,
				custom_captures = {
					["punctuation.bracket"] = "TSBracket",
				},
			},
			indent = { enable = true },
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},

			vim.filetype.add({
				extension = { rasi = "rasi" },
				pattern = {
					[".*/waybar/config"] = "jsonc",
					[".*/hypr/.*%.conf"] = "hyprlang",
				},
			}),
		})
	end,
}
