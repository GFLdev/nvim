return {
	{
		"kdheepak/monochrome.nvim",
		priority = 1000,
		main = "monochrome",
		name = "monochrome",
		opts = {
			mirage = false,
			terminal = true,
			overrides = {},
		},
		config = function()
			vim.cmd("colorscheme monochrome")

			vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#0f0f0f" })
			vim.api.nvim_set_hl(0, "CursorLine", { bg = "#111111" })
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#404040" })
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#aaaaaa" })

			vim.api.nvim_set_hl(0, "Comment", { fg = "#5a5a5a", italic = true })
			vim.api.nvim_set_hl(0, "String", { fg = "#d0d0d0" })
			vim.api.nvim_set_hl(0, "Keyword", { fg = "#b0b0b0", bold = true })

			-- Diagnostics: brightness encodes severity
			vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#c0c0c0" })
			vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#909090" })
			vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#707070" })
			vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#505050" })
			vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#c0c0c0" })
			vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = "#909090" })
			vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = "#707070" })
			vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = "#505050" })
			vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = "#c0c0c0", undercurl = true })
			vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = "#909090", undercurl = true })

			-- GitGutter diff signs
			vim.api.nvim_set_hl(0, "GitGutterAdd", { fg = "#808080" })
			vim.api.nvim_set_hl(0, "GitGutterChange", { fg = "#606060" })
			vim.api.nvim_set_hl(0, "GitGutterDelete", { fg = "#505050" })
			vim.api.nvim_set_hl(0, "GitGutterChangeDelete", { fg = "#505050" })

			-- Diff view
			vim.api.nvim_set_hl(0, "DiffAdd", { fg = "#808080", bg = "#1a1a1a" })
			vim.api.nvim_set_hl(0, "DiffChange", { fg = "#606060", bg = "#1a1a1a" })
			vim.api.nvim_set_hl(0, "DiffDelete", { fg = "#404040", bg = "#1a1a1a" })
			vim.api.nvim_set_hl(0, "DiffText", { fg = "#c0c0c0", bg = "#2a2a2a" })

			-- IndentBlankline
			vim.api.nvim_set_hl(0, "IblIndent", { fg = "#222222" })
		end,
	},
}
