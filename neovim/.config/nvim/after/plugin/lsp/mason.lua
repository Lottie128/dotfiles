local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_null_ls = require("mason-null-ls")

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"sumneko_lua",
		"emmet_ls",
		"jsonls",
		"bashls",
		"dockerls",
		"yamlls",
		"pyright",
	},
	automatic_installation = true,
})

mason_null_ls.setup({
	ensure_installed = { "prettier", "eslint_d", "stylua" },
	automatic_installation = true,
})
