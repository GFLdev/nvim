return {
	{
		"nvim-mini/mini.animate",
		version = "*",
		config = function()
			local animate = require("mini.animate")

			animate.setup({
				cursor = {
					enable = false,
					timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
				},
				scroll = {
					enable = true,
					timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
				},
				resize = {
					enable = true,
					timing = animate.gen_timing.quadratic({ duration = 100, unit = "total" }),
				},
				open = {
					enable = true,
					winblend = animate.gen_winblend.linear({ from = 100, to = 0 }),
					timing = animate.gen_timing.quadratic({ duration = 100, unit = "total" }),
				},
				close = {
					enable = true,
					winblend = animate.gen_winblend.linear({ from = 0, to = 100 }),
					timing = animate.gen_timing.quadratic({ duration = 100, unit = "total" }),
				},
			})
		end,
	},
}
