return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					border = "rounded",
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"lua-language-server",
					"python-lsp-server",
					"prettierd",
					"bash-language-server",
					"html-lsp",
					"css-lsp",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			local function setup_language_server(server, opts)
				lspconfig[server].setup(vim.tbl_extend("force", {
					capabilities = capabilities,
				}, opts or {}))
			end

			lspconfig.pylsp.setup({
				settings = {
					pylsp = {
						plugins = {
							jedi_completion = {
								include_params = true,
							},
						},
					},
				},
				capabilities = capabilities,
			})

			setup_language_server("lua_ls")
			setup_language_server("clangd")
			setup_language_server("html")
			setup_language_server("cssls")
			setup_language_server("bashls")
			setup_language_server("gopls")
			setup_language_server("hyprls")
			-- setup_language_server("pylsp")
			-- setup_language_server("pyright")

			-- Keybindings
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ac", vim.lsp.buf.code_action, {})
			-- vim.keymap.set("n", "<leader>fh", vim.lsp.buf.format({ async = true }), {})
		end,
	},
}
