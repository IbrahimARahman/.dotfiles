return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"mlaursen/vim-react-snippets",
			"j-hui/fidget.nvim",
		},
		config = function()
			require("vim-react-snippets").lazy_load()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			require("fidget").setup()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
				},
				handlers = {
					function(server_name) -- default handler (optional)
						require("lspconfig")[server_name].setup({
							capabilities = capabilities,
						})
					end,

					["sqlls"] = function()
						require("lspconfig")["sqlls"].setup({
							capabilities = capabilities,
							root_dir = function(fname)
								return require("lspconfig").util.root_pattern(".git", "sql")(fname) or vim.fn.getcwd()
							end,
						})
					end,

					["lua_ls"] = function()
						require("lspconfig")["lua_ls"].setup({
							capabilities = capabilities,
							settings = {
								Lua = {
									runtime = { version = "Lua 5.1" },
									diagnostics = {
										globals = { "vim", "it", "describe", "before_each", "after_each" },
									},
								},
							},
						})
					end,
				},
			})

			vim.diagnostic.config({
				-- update_in_insert = true,
				float = {
					focusable = false,
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
				},
				virtual_text = {
					prefix = "", -- Disable the colored square
					spacing = 2,
				},
			})
		end,
	},
}
