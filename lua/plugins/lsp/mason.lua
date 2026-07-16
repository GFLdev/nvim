return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"html",
				"cssls",
				"tailwindcss",
				"lua_ls",
				"pyright",
				"bashls",
				"clangd",
				"cmake",
				"dockerls",
				"docker_compose_language_service",
				"gopls",
				"jsonls",
				"markdown_oxide",
				"texlab",
				"pyright",
				"ts_ls",
				"vue_ls",
				"asm_lsp",
				"ruby_lsp",
				"harper_ls",
				"terraformls",
				"ansiblels",
				"expert",
				"hls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"pylint",
				"mypy",
				"eslint_d",
				"asmfmt",
				"rubocop",
				"terraform",
				"ansible-lint",
				"hlint",
				"ormolu",
			},
		})

		-- Setup texlab
		vim.lsp.config("texlab", {
			cmd = { "texlab" },
			filetypes = { "tex", "plaintex", "bib" },
			root_markers = { ".git", ".latexmkrc", ".texlabroot", "texlabroot", "Tectonic.toml" },
			settings = {
				textlab = {
					bibtexFormatter = "texlab",
					build = {
						executable = "tectonic",
						args = { "-X", "compile", "%f", "--synctex", "--keep-logs", "--keep-intermediates" },
						forwardSearchAfter = false,
						onSave = true,
					},
					chktex = {
						onEdit = false,
						onOpenAndSave = false,
					},
					diagnosticsDelay = 300,
					formatterLineLength = 80,
					forwardSearch = {
						args = {},
					},
					latexFormatter = "latexindent",
					latexindent = {
						modifyLineBreaks = false,
					},
				},
			},
		})
	end,
}
