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
			require("lualine").setup({
				options = {
					theme = "monochrome",
				},
			})

			vim.cmd("colorscheme monochrome")

			vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#0a0a0a" })
			vim.api.nvim_set_hl(0, "CursorLine", { bg = "#111111" })
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#404040" })
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#aaaaaa" })

			vim.api.nvim_set_hl(0, "Comment", { fg = "#5a5a5a", italic = true })

			vim.api.nvim_set_hl(0, "String", { fg = "#d0d0d0" })
			vim.api.nvim_set_hl(0, "Keyword", { fg = "#b0b0b0", bold = true })
		end,
	},
}
