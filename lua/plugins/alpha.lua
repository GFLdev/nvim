return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                     ",
			"               ██████╗ ███████╗██╗                   ",
			"              ██╔════╝ ██╔════╝██║                   ",
			"              ██║  ███╗█████╗  ██║                   ",
			"              ██║   ██║██╔══╝  ██║                   ",
			"              ╚██████╔╝██║     ███████╗              ",
			"               ╚═════╝ ╚═╝     ╚══════╝              ",
			"                                                     ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("n", "  > New File", "<cmd>enew<CR>"),
			dashboard.button("r", "󰚰  > Recent Files", "<cmd>Telescope oldfiles<CR>"),
			dashboard.button("f", "󰮗  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("l", "󰑓  > Load Last Session", "<cmd>so ~/.Session.vim<CR>"),
			dashboard.button("g", "  > Live Grep", "<cmd>Telescope live_grep<CR>"),
		}

		dashboard.section.footer.val = function()
			local handle = io.popen("qtx", "r")
			local quote = handle:read()
			handle:close()
			return { "", "", string.format("%s", quote) }
		end

		alpha.setup(dashboard.opts)

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
