return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua
				null_ls.builtins.formatting.stylua,

				null_ls.builtins.formatting.black.with({
					extra_args = {
						"--skip-string-normalization",
					},
				}),

				-- null_ls.builtins.formatting.gopls,
				null_ls.builtins.formatting.isort,

				null_ls.builtins.diagnostics.djlint,

				-- JS, TS, Vue, YAML, JSON, HTML, Markdown, CSS, etc
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.diagnostics.stylelint,
				-- null_ls.builtins.formatting.ruff,

				-- Shell
				null_ls.builtins.formatting.shfmt,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
