return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		local section = {
			a = { bg = "NONE", fg = "#c0c0c0", bold = true },
			b = { bg = "NONE", fg = "#808080" },
			c = { bg = "NONE", fg = "#5a5a5a" },
		}

		local monochrome = {
			normal = section,
			insert = section,
			visual = section,
			replace = section,
			command = section,
			inactive = section,
		}

		lualine.setup({
			options = {
				icons_enabled = true,
				theme = monochrome,

				component_separators = { left = "│", right = "│" },
				section_separators = { left = "", right = "" },

				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},

				ignore_focus = {},
				always_divide_middle = true,

				globalstatus = false,

				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			winbar = {},
			inactive_winbar = {},
		})
	end,
}
