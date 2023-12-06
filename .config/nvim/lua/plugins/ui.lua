---@diagnostic disable: missing-fields
return {
	{
		'nvim-lualine/lualine.nvim',
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function ()
			require('lualine').setup{}
		end
	},
	{
		"dracula/vim",
		name = "dracula-theme",
		config = function ()
			vim.cmd.colorscheme("dracula")
			if not vim.g.neovide then
				vim.cmd.hi("Normal guibg=None")
			end
		end
	},
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function ()
			local bufferline = require("bufferline")
			bufferline.setup{
				options = {
					style_preset = bufferline.style_preset.default,
					separator_style = "slant"
				}
			}
		end
	},
}
