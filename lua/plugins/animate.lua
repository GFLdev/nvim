return {
	{
		"nvim-mini/mini.animate",
		version = "*",
		config = function()
			local animate = require("mini.animate")

			animate.setup({
				cursor = {
					enable = true,
					timing = animate.gen_timing.linear({ duration = 100 }),
				},
				scroll = {
					enable = true,
					timing = animate.gen_timing.linear({ duration = 100 }),
				},
				resize = {
					enable = true,
					timing = animate.gen_timing.linear({ duration = 100 }),
				},
				open = {
					enable = true,
					winblend = animate.gen_winblend.linear({ from = 100, to = 0 }),
				},
				close = {
					enable = true,
					winblend = animate.gen_winblend.linear({ from = 0, to = 100 }),
				},
			})
		end,
	},
}
