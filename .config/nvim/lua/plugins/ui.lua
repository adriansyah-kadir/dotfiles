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
		config = function()
			vim.cmd("colorscheme dracula")
		end
	},
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = 'nvim-tree/nvim-web-devicons',
		config = function ()
			require('bufferline').setup()
		end
	},
}
