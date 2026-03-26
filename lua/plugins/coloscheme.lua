return {
	{
		"Shatur/neovim-ayu",
		priority = 1000,
		main = "ayu",
		name = "ayu",
		opts = {
			mirage = false,
			terminal = true,
			overrides = {},
		},
		config = function()
			require("lualine").setup({
				options = {
					theme = "ayu",
				},
			})

			vim.cmd("colorscheme ayu")
		end,
	},
}
