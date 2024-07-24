return {
	"craftzdog/solarized-osaka.nvim",
	config = function()
		require("solarized-osaka").setup({
			-- disable italic for functions
			styles = {
				functions = {},
			},
			sidebars = { "qf", "vista_kind", "terminal", "packer" },
			-- Change the "hint" color to the "orange" color, and make the "error" color bright red
			on_colors = function(colors)
				colors.hint = colors.orange
				colors.error = "#ff0000"
			end,
		})
	end,
}
