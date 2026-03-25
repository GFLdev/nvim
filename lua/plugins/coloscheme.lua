return {
	{
		"nyoom-engineering/oxocarbon.nvim",
		priority = 1000,
		name = "oxocarbon",
		config = function()
			vim.cmd([[colorscheme oxocarbon]])
		end,
	},
}
