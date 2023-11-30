---@diagnostic disable: missing-fields

return {
	{
		"windwp/nvim-autopairs",
		config = function ()
			require("nvim-autopairs").setup()
		end
	},
	{
		'hrsh7th/vim-vsnip'
	},
	{
		'nvim-telescope/telescope.nvim',
		config = function ()
			require('telescope').setup{
				defaults = {
					file_ignore_patterns = {
						"node_modules",
						".git"
					},
				},
			}
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		config = function ()
			require('nvim-treesitter.configs').setup{
				highlight = {
					enable = true
				},
				incremental_selection = {
					enable = true
				},
				textobjects = {
					enable = true
				},
				ensure_installed = {"svelte", "markdown", "typescript", "c"}
			}
		end
	},
	{
		'nvim-lua/plenary.nvim',
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {}
	},
	{
		"tpope/vim-surround",
		config = function ()
			vim.api.nvim_set_keymap('i', '<C-j>', "<cmd>lua vim.fn['vsnip#expand']()<cr>", {desc = "expand vsnip"})
		end
	},
	{
		"nvim-tree/nvim-tree.lua",
		config = function ()
			require('nvim-tree').setup()
		end
	},
}
