-- return {
-- 	{
-- 		"tidalcycles/vim-tidal",
-- 	},
-- }
return {
	{
		"https://codeberg.org/MrReason/tidal.nvim",
		opts = {},
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			opts = { ensure_installed = { "haskell" } },
		},
	},
}
