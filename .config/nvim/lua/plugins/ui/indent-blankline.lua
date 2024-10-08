return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		require("ibl").setup({
			indent = {
			  -- char = '┆', -- ▏┆ ┊ 
			  tab_char = '▏',
			},
			-- scope = {
			--   char = '▎',
			-- },
			scope = {
			  enabled = false,
			},
			exclude = {
				filetypes = {
					"help",
					"alpha",
					"dashboard",
					"Trouble",
					"trouble",
					"lazy",
					"mason",
					"notify",
					"toggleterm",
				},
			},
		})
	end,
}
