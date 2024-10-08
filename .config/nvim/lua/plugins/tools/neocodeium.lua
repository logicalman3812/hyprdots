return {
	"monkoose/neocodeium",
	event = "VeryLazy",
	config = function()
		local neocodeium = require("neocodeium")
		neocodeium.setup({
			enabled = true,
			bin = nil,
			manual = false,
			server = {
				api_url = nil,
				portal_url = nil,
			},
			show_label = true,
			debounce = false,
			max_lines = 10000,
			silent = true,
			filter = function(bufnr)
				return true
			end,
			filetypes = {
				help = false,
				gitcommit = false,
				gitrebase = false,
        telescope = false,
				["."] = false,
			},
			root_dir = { ".bzr", ".git", ".hg", ".svn", "_FOSSIL_", "package.json" },
		})
		vim.keymap.set("i", "<C-f>", neocodeium.accept)
		vim.keymap.set("i", "<C-e>", neocodeium.cycle)
	end,
}
