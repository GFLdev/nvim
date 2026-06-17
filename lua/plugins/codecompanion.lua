return {
	{
		"olimorris/codecompanion.nvim",
		version = "^19.0.0",
		opts = {
			adapters = {
				acp = {
					claude_code = function()
						return require("codecompanion.adapters").extend("claude_code", {})
					end,
				},
			},
			interactions = {
				chat = { adapter = "claude_code" },
				inline = { adapter = "claude_code" },
			},
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"ravitemer/mcphub.nvim",
		},
		config = function(_, opts)
			require("mcphub").setup({ port = 37373 })
			require("codecompanion").setup(opts)
		end,
	},
}
