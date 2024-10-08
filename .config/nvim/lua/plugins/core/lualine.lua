return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		{
			"nvim-tree/nvim-web-devicons",
		},
	},
	config = function()
		local lualine = require("lualine")
		local theme = require("lualine.themes.pywal")

		lualine.setup({
			options = {
				theme = "bamboo",
				globalstatus = true,
				section_separators = { left = "", right = "" }, -- Adjust section separators
				component_separators = { left = "|", right = "|" }, -- Adjust component separators
				disabled_filetypes = { "alpha" },
			},
			sections = {
				lualine_a = {
					{
						"mode",
						separator = { left = "" },
						padding = { left = 0, right = 1 },
						icon = "",
					},
				},
				lualine_b = {
					{
						"filename",
            path = 1,
						-- color = {
						-- 	fg = theme.normal.a.fg,
						-- 	bg = theme.replace.a.bg,
						-- },
					},
				},
				lualine_c = {
					{
						"diff",
						separator = "|",
						color = { fg = theme.normal.a.bg },
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						},
					},
					{
						"diagnostics",
						separator = "|",
						color = { fg = theme.normal.b.bg },
						padding = { left = 1, right = 1 },
						update_in_insert = true,
						symbols = {
							error = " ",
							warn = " ",
							info = " ",
							hint = " ",
						},
					},
					{
						"branch",
						padding = { left = 1, right = 1 },
						separator = { right = "" },
						icon = "󰘬",
					},
				},
				lualine_x = {
					-- {
					-- 	"progress",
					-- },
				},
				lualine_y = {
					{
						"filetype",
						padding = { left = 1, right = 1 },
						-- color = {
						-- 	fg = theme.normal.a.fg,
						-- 	bg = theme.replace.a.bg,
						-- },
					},
				},
				lualine_z = {
					{
						"location",
						-- separator = { right = "" },
						padding = { left = 1, right = 1 },
						icon = "",
						-- color = {
						--   fg = theme.normal.a.fg,
						--   bg = theme.replace.a.bg
						-- }
					},
					{
						"progress",
						separator = { right = "" },
						padding = { left = 1, right = 1 },
					},
				},
			},
			extensions = {
				"lazy",
				"mason",
				"nvim-tree",
				"nvim-dap-ui",
				"toggleterm",
			},
		})
	end,
}
