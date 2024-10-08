return {
	{
		"maxmx03/solarized.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("solarized").setup({
				transparent = true, -- enable transparent background
				palette = "solarized", -- or selenized
				styles = {
					comments = { italic = true, bold = true },
					functions = { italic = false, bold = true },
					variables = { bold = true },
					numbers = { bold = true },
					constants = { bold = true },
					parameters = { bold = true },
					keywords = { bold = true },
					types = { bold = true },
				},
				enables = {
					bufferline = true,
					cmp = true,
					diagnostic = true,
					dashboard = true,
					editor = true,
					gitsign = true,
					hop = true,
					indentblankline = true,
					lsp = true,
					lspsaga = true,
					navic = true,
					neogit = true,
					neotree = true,
					notify = true,
					noice = true,
					semantic = true,
					syntax = true,
					telescope = true,
					tree = true,
					treesitter = true,
					todo = true,
					whichkey = true,
					mini = true,
				},
				highlights = {},
				colors = {},
				theme = "default", -- or 'neo'
				autocmd = true,
			})
		end,
	},
}
