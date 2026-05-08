return {
	"attilarepka/header.nvim",
	config = function()
		require("header").setup({
			allow_autocmds = true,
			file_name = true,
			date_created = true,
			date_created_fmt = "%Y-%m-%d %H:%M:%S",
			date_modified = true,
			date_modified_fmt = "%Y-%m-%d %H:%M:%S",
			use_block_header = false,
			license_from_file = true,
			author_from_git = true,
		})
	end,
}
