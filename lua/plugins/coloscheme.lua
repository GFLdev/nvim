return {
	{
		"ayu-theme/ayu-vim",
		priority = 1000,
		name = "ayu",
		config = function()
			vim.g.ayucolor = "dark"
			vim.cmd("colorscheme ayu")
		end,
	},
}
