return {
	{
		"neolooong/whichpy.nvim",
		dependencies = {
			"mfussenegger/nvim-dap-python",
			"ibhagwan/fzf-lua",
			"nvim-telescope/telescope.nvim",
			"folke/snacks.nvim",
		},
		opts = {},
		config = function()
			require("whichpy").setup({})
		end,
	},
}
