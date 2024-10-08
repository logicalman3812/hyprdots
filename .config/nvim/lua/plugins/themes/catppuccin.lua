return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "auto", -- latte, frappe, macchiato, mocha
				background = { -- :h background
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true, -- disables setting the background color.
				show_end_of_buffer = true, -- shows the '~' characters after the end of buffers
				term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
				dim_inactive = {
					enabled = false, -- dims the background color of inactive window
					shade = "dark",
					percentage = 0.15, -- percentage of the shade to apply to the inactive window
				},
				no_italic = false, -- Force no italic
				no_bold = false, -- Force no bold
				no_underline = false, -- Force no underline
				styles = {
					comments = { "italic" },
					conditionals = { "italic", "bold" },
					loops = { "italic" },
					functions = { "bold" },
					keywords = { "italic", "bold" },
					strings = { "italic" },
					variables = { "bold" },
					numbers = { "bold" },
					booleans = { "italic" },
					properties = { "italic" },
					types = { "bold" },
					operators = { "bold" },
				},
				color_overrides = {},
				custom_highlights = {},
				default_integrations = true,
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = true,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
				},
			})
			-- Apply the theme after setup
			-- vim.cmd.colorscheme("catppuccin")
		end,
	},
}
