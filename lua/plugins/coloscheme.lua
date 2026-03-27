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
		end,
	},
}
